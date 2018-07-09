open Syntax 
open Util

(* 値の定義 *)

(* exval は式を評価して得られる値．dnval は変数と紐付けられる値．今回
   の言語ではこの両者は同じになるが，この2つが異なる言語もある．教科書
   参照． *)
type exval =
    IntV of int
  | BoolV of bool
  | ProcV of id * exp * dnval Environment.t ref
  | DProcV of id * exp
  | ListV of dnval list
  | VariantV of id * dnval
  | TupleV of dnval list
	| Null
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
	| VariantV (id, v) -> 
			if v = Null then id
			else id ^ " " ^ (string_of_exval v)
	| TupleV tuple ->
			let rec string_of_tuple = function
					hd :: md :: tl -> (string_of_exval hd) ^ ", " ^ (string_of_tuple (md :: tl))
				| [x] -> string_of_exval x
				| [] -> ""
			in "(" ^ (string_of_tuple tuple) ^ ")"
	| _ -> ""

			
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

let rec pattern_match mexp v = 
	(match (mexp, v) with
			TupleExp mlist, TupleV vlist ->
				let rec tuple_match = function
						mexp' :: m_tl, v' :: v_tl ->
							(pattern_match mexp' v') @ (tuple_match (m_tl, v_tl))
					| [], [] -> []
					| _ -> err ("Matching failed")
				in tuple_match (mlist, vlist)
		| BinOp (Cons, l, r), ListV lst ->
				(match lst with
						hd :: tl -> 
							(pattern_match l hd) @ (pattern_match r (ListV tl))
					| [] -> err ("Matching failed"))
		| ListExp mlist, ListV lst ->
				(match (mlist, lst) with
						mexp' :: m_tl, hd :: tl ->
							(pattern_match mexp' hd) @ (pattern_match (ListExp m_tl) (ListV tl))
					| [], [] -> []
					| _ -> err ("Matching failed"))
		| ConstrExp (mid, mexp'), VariantV (id, v') ->
				if mid = id then pattern_match mexp' v'
				else err ("Matching failed")
		| Var id, _ -> [(id, v)]
		| None, _ -> []
		| _ -> err ("Matching failed"))

let rec pair_to_env env = function
		(id, v) :: tl -> Environment.extend id v (pair_to_env env tl)
	| [] -> env

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
						(mexp, exp) :: tl ->
							let v = eval_exp first_env exp in 
							let pair = pattern_match mexp v in
								extend_env first_env (pair_to_env env pair) tl
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
	| MatchExp (exp, cases) ->
			let rec match_case v = function
					(mexp, body) :: tl ->
						(try
							let pair = pattern_match mexp v in
								eval_exp (pair_to_env env pair) body
						with
								_ -> match_case v tl)
				| [] -> err ("Matching failed: match eval")
			in
			let v = eval_exp env exp in
				match_case v cases
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
	| _ -> Null

let eval_decl env = function
    Exp e -> let v = eval_exp env e in ([("-", v)], env)
  | Decl decls ->
  		let rec eval_line decls (eqs, env) = match decls with
  			decl :: tl ->
					let rec extend_env first_env (eqs, env) decl =
						(match decl with
								(mexp, exp) :: tl ->
									let v = eval_exp first_env exp in 
									let pair = pattern_match mexp v in
										extend_env first_env (eqs @ pair, (pair_to_env env pair)) tl
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
