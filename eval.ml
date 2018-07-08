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
  | DProcV of id * exp
  | ListV of dnval list
  | VariantV of id * dnval
  | TupleV of dnval list
and dnval = exval

exception Error of string

let err s = raise (Error s)

(* pretty printing *)
let rec string_of_exval = function
    IntV i -> string_of_int i
  | BoolV b -> string_of_bool b
  | ProcV (id, exp, env) -> "<fun>"
  | DProcV (id, exp) -> "<dfun>"
  | ListV lst ->
			let rec string_of_list = function
					hd :: md :: tl -> (string_of_exval hd) ^ "; " ^ (string_of_list (md :: tl))
				| [x] -> string_of_exval x
				| [] -> ""
			in "[" ^ (string_of_list lst) ^ "]"
	| VariantV (id, v) -> id ^ " " ^ (string_of_exval v)
	| TupleV tuple ->
			let rec string_of_tuple = function
					hd :: md :: tl -> (string_of_exval hd) ^ ", " ^ (string_of_tuple (md :: tl))
				| [x] -> string_of_exval x
				| [] -> ""
			in "(" ^ (string_of_tuple tuple) ^ ")"
			
let pp_val v = print_string (string_of_exval v)

let apply_prim op arg1 arg2 = match op, arg1, arg2 with
    Plus, IntV i1, IntV i2 -> IntV (i1 + i2)
  | Minus, IntV i1, IntV i2 -> IntV (i1 - i2)
  | Mult, IntV i1, IntV i2 -> IntV (i1 * i2)
  | Eq, v1, v2 -> BoolV (v1 = v2)
  | Lt, IntV i1, IntV i2 -> BoolV (i1 < i2)
  | Gt, IntV i1, IntV i2 -> BoolV (i1 > i2)
  | And, BoolV b1, BoolV b2 -> BoolV (b1 && b2)
  | Or, BoolV b1, BoolV b2 -> BoolV (b1 || b2)
  | Cons, l, ListV r -> ListV (l :: r)
  | _ -> err ("Invalid expression: binOp")

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
							let v = eval_exp first_env exp in 
								extend_env first_env (Environment.extend id v env) tl
					| [] -> env)	
			in
				eval_exp (extend_env env env decl) exp
	| LetRecExp (funcs, exp) ->
			let rec extend_env = function
					(id, paras, e) :: f_tl ->
				 		(match paras with
				 				para :: p_tl -> 
				 					let dummyenv = ref Environment.empty in
				 					let dummyenvs, newenv = extend_env f_tl in
				 					let v = ProcV (para, FunExp(p_tl, e), dummyenv) in
					 					(dummyenv :: dummyenvs, Environment.extend id v newenv)
							| [] -> err ("Function has no argument: " ^ id))
				| [] -> ([], env)
			in 
			let dummyenvs, newenv = extend_env funcs in
			let rec insert_env = function
					dummyenv :: rest -> 
						dummyenv := newenv;
						insert_env rest
				| [] -> ()
			in insert_env dummyenvs; eval_exp newenv exp
	| FunExp (ids, exp) -> 
			(match ids with
					id :: tl -> ProcV (id, FunExp (tl, exp), ref env)
				| [] -> eval_exp env exp)
	| DFunExp (ids, exp) ->
			(match ids with
					id :: tl -> DProcV (id, DFunExp (tl, exp))
				| [] -> eval_exp env exp)
	| MatchExp (exp1, exp2, exp3, x1, x2) ->
			if x1 = x2 then err ("Variable name is duplicated : match")
			else
				let v1 = eval_exp env exp1 in
				let v2 = eval_exp env exp2 in
					(match v1 with
							ListV [] -> v2
						| ListV (hd :: tl) -> 
								let newenv = Environment.extend x1 hd (Environment.extend x2 (ListV tl) env) in
									eval_exp newenv exp3
						| _ -> err ("First argument must be type of list : match"))
	| ListExp explist -> 
			let rec eval_explist explist =
				(match explist with
						exp :: tl -> (eval_exp env exp) :: (eval_explist tl) 
					| [] -> [])
			in
				ListV (eval_explist explist)
	| ConstrExp (id, exp) ->
			VariantV (id, eval_exp env exp)
	| TupleExp explist -> 
			let rec eval_explist explist =
				(match explist with
						exp :: tl -> (eval_exp env exp) :: (eval_explist tl) 
					| [] -> [])
			in
				TupleV (eval_explist explist)
	| AppExp (exp1, exp2) ->
			let func = eval_exp env exp1 in
			let arg = eval_exp env exp2 in 
				(match func with
						ProcV (id, body, env') ->
							let newenv = Environment.extend id arg !env' in
								eval_exp newenv body
					| DProcV (id, body) ->
							let newenv = Environment.extend id arg env in
								eval_exp newenv body
					| _ -> err ("Non-Function value is applied"))

(*							(match arg with
									IntV i -> 
										if i < 0 then eval_exp env (BinOp (Minus, exp1, ILit (-i)))
										else err ("Non-function value is applied")
								| _ -> err ("Non-function value is applied")))
*)

let eval_decl env = function
    Exp e -> let v = eval_exp env e in ([("-", v)], env)
  | Decl decls ->
  		let rec eval_line decls (eqs, env) = match decls with
  			decl :: tl ->
					let rec extend_env first_env (eqs, env) decl =
						(match decl with
								(id, exp) :: tl ->
									let v = eval_exp first_env exp in 
										extend_env first_env (eqs @ [(id, v)], (Environment.extend id v env)) tl
							| [] -> (eqs, env))	
					in
						eval_line tl (extend_env env (eqs, env) decl)
				|	[] -> (eqs, env)
			in eval_line decls ([], env)
  | RecDecl funcs ->
			let rec extend_env = function
					(id, paras, e) :: f_tl ->
				 		(match paras with
				 				para :: p_tl ->
				 					let dummyenv = ref Environment.empty in
				 					let eqs, dummyenvs, newenv = extend_env f_tl in
				 					let v = ProcV (para, FunExp(p_tl, e), dummyenv) in
					 					((id, v) :: eqs, dummyenv :: dummyenvs, Environment.extend id v newenv)
							| [] -> err ("Function has no argument: " ^ id))
				| [] -> ([], [], env)
			in 
			let eqs, dummyenvs, newenv = extend_env funcs in
			let rec insert_env = function
					dummyenv :: rest -> 
						dummyenv := newenv;
						insert_env rest
				| [] -> ()
			in insert_env dummyenvs; (eqs, newenv)
	| _ -> err ("Runtime error")
