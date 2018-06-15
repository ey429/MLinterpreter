open Syntax 
open Util

(* 値の定義 *)

(* exval は式を評価して得られる値．dnval は変数と紐付けられる値．今回
   の言語ではこの両者は同じになるが，この2つが異なる言語もある．教科書
   参照． *)
type exval =
  | IntV of int
  | BoolV of bool
  | ProcV of id * exp * dnval Environment.t ref
and dnval = exval

exception Error of string

let err s = raise (Error s)

(* pretty printing *)
let rec string_of_exval = function
    IntV i -> string_of_int i
  | BoolV b -> string_of_bool b
  | ProcV (id, exp, env) -> "<fun>"

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
	| LetExp (decl, exp) ->
			let rec extend_env first_env env decl =
				(match decl with
						(id, exp) :: tl -> 
							if exists_var id tl then err ("Duplicated declaration!")
							else
								let v = eval_exp first_env exp in 
									extend_env first_env (Environment.extend id v env) tl
					| [] -> env)	
			in
				eval_exp (extend_env env env decl) exp
	| LetRecExp (id, paras, exp1, exp2) ->
	 		let dummyenv = ref Environment.empty in
	 			(match paras with
	 					para :: p_tl ->
					 		let newenv = Environment.extend id (ProcV (para, FunExp(p_tl, exp1), dummyenv)) env in
					 			dummyenv := newenv;
					 			eval_exp newenv exp2
					| [] -> err ("Function has no argument"))
	| FunExp (ids, exp) -> 
			(match ids with
					id :: tl -> ProcV (id, FunExp (tl, exp), ref env)
				| [] -> eval_exp env exp)
	| AppExp (exp1, exp2) ->
			let func = eval_exp env exp1 in
			let arg = eval_exp env exp2 in 
				(match func with
						ProcV (id, body, env') ->
							let newenv = Environment.extend id arg !env' in
								eval_exp newenv body
					| _ -> err ("Non-function value is applied"))

let eval_decl env = function
    Exp e -> let v = eval_exp env e in ([("-", v)], env)
  | Decl decls ->
  		let rec eval_line decls (eqs, env) = match decls with
  			decl :: tl ->
					let rec extend_env first_env (eqs, env) decl =
						(match decl with
								(id, exp) :: tl ->
									if exists_var id tl then err ("Duplicated declaration!")
									else
										let v = eval_exp first_env exp in 
											extend_env first_env (eqs @ [(id, v)], (Environment.extend id v env)) tl
							| [] -> (eqs, env))	
					in
						eval_line tl (extend_env env (eqs, env) decl)
				|	[] -> (eqs, env)
			in eval_line decls ([], env)
  | RecDecl (id, paras, e) ->
   	 	let dummyenv = ref Environment.empty in	
	 			(match paras with
	 					para :: p_tl ->
						 	let v = ProcV (para, FunExp(p_tl, e), dummyenv) in
					 		let newenv = Environment.extend id v env in
					 			dummyenv := newenv;
					 			([(id, v)], newenv)
					| [] -> err ("Function has no argument"))
