open Syntax 

(* 値の定義 *)

(* exval は式を評価して得られる値．dnval は変数と紐付けられる値．今回
   の言語ではこの両者は同じになるが，この2つが異なる言語もある．教科書
   参照． *)
type exval =
  | IntV of int
  | BoolV of bool
  | ProcV of (id list) * exp * dnval Environment.t ref
and dnval = exval

exception Error of string

let err s = raise (Error s)

(* pretty printing *)
let rec string_of_exval = function
    IntV i -> string_of_int i
  | BoolV b -> string_of_bool b
  | ProcV (ids, exp, env) -> "<fun>"

let pp_val v = print_string (string_of_exval v)

let apply_prim op arg1 arg2 = match op, arg1, arg2 with
    Plus, IntV i1, IntV i2 -> IntV (i1 + i2)
  | Plus, _, _ -> err ("Both arguments must be integer: +")
  | Mult, IntV i1, IntV i2 -> IntV (i1 * i2)
  | Mult, _, _ -> err ("Both arguments must be integer: *")
  | Lt, IntV i1, IntV i2 -> BoolV (i1 < i2)
  | Lt, _, _ -> err ("Both arguments must be integer: <")
  | Gt, IntV i1, IntV i2 -> BoolV (i1 > i2)
  | Gt, _, _ -> err ("Both arguments must be integer: >")
  | And, BoolV b1, BoolV b2 -> BoolV (b1 && b2)
  | And, _, _ -> err ("Both arguments must be boolean: &&")
  | Or, BoolV b1, BoolV b2 -> BoolV (b1 || b2)
  | Or, _, _ -> err ("Both arguments must be boolean: ||")  

let rec eval_exp env = function
    Var x -> 
      (try Environment.lookup x env with 
        Environment.Not_bound -> err ("Variable not bound: " ^ x))
  | ILit i -> IntV i
  | BLit b -> BoolV b
  | BinOp (op, exp1, exp2) -> 
      let arg1 = eval_exp env exp1 in
      let arg2 = eval_exp env exp2 in
	      apply_prim op arg1 arg2
  | IfExp (exp1, exp2, exp3) ->
      let test = eval_exp env exp1 in
        (match test with
            BoolV true -> eval_exp env exp2 
          | BoolV false -> eval_exp env exp3
          | _ -> err ("Test expression must be boolean: if"))
	| LetExp (decls, exp) ->
			let rec extend_env first_env env decls =
				match decls with
						(id, exp) :: tl -> 
							let v = eval_exp first_env exp in 
								extend_env first_env (Environment.extend id v env) tl
					| [] -> env			
			in
				eval_exp (extend_env env env decls) exp
	| LetRecExp (id, paras, exp1, exp2) ->
	 		let dummyenv = ref Environment.empty in
	 		let newenv = Environment.extend id (ProcV (paras, exp1, dummyenv)) env in
	 			dummyenv := newenv;
	 			eval_exp newenv exp2
	| FunExp (ids, exp) -> ProcV (ids, exp, ref env)
	| AppExp (exp1, exps) ->
			let func = eval_exp env exp1 in 
				(match func with
						ProcV (ids, body, env') ->
							let rec extend_env first_env env ids exps =
								match exps with
										exp :: tl ->
											let v = eval_exp first_env exp in
											let newenv = Environment.extend (List.hd ids) v env in
												extend_env first_env newenv (List.tl ids) tl 
									| [] -> env	
							in
								let newenv = extend_env !env' !env' ids exps in
									env' := newenv;
									eval_exp newenv body
					| _ -> err ("Non-function value is applied"))
			

let eval_decl env = function
    Exp e -> let v = eval_exp env e in ("_", env, v)
  | Decl (id, e) ->
  		let v = eval_exp env e in (id, Environment.extend id v env, v)
  | RecDecl (id, paras, e) -> 
  	 	let dummyenv = ref Environment.empty in
  	 	let v = (ProcV (paras, e, dummyenv)) in
	 		let newenv = Environment.extend id v env in
	 			dummyenv := newenv;
	 			(id, newenv, v)

