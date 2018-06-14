(*open Syntax

exception Error of string

let err s = raise (Error s)

type tyenv = ty Environment.t
	

let ty_prim op ty1 ty2 = match op with
    Plus, TyInt, TyInt -> TyInt
  | Plus, _, _ -> err ("Both arguments must be integer: +")
  | Mult, TyInt, TyInt -> TyInt
  | Mult, _, _ -> err ("Both arguments must be integer: *")
  | Lt, TyInt, TyInt -> TyBool
  | Lt, _, _ -> err ("Both arguments must be integer: <")
  | Gt, TyInt, TyInt -> TyBool
  | Gt, _, _ -> err ("Both arguments must be integer: >")
  | And, BoolV b1, BoolV b2 -> TyBool
  | And, _, _ -> err ("Both arguments must be boolean: &&")
  | Or, BoolV b1, BoolV b2 -> TyBool
  | Or, _, _ -> err ("Both arguments must be boolean: ||")  

let rec ty_exp tyenv = function
    Var x -> 
      (try Environment.lookup x tyenv with 
        Environment.Not_bound -> err ("Variable not bound: " ^ x))
  | ILit _ -> TyInt
  | BLit _ -> TyBool
  | BinOp (op, exp1, exp2) -> 
      let arg1 = ty_exp tyenv exp1 in
      let arg2 = ty_exp tyenv exp2 in
	      ty_prim op arg1 arg2
  | IfExp (exp1, exp2, exp3) ->
      let test = ty_exp tyenv exp1 in
        (match test with
        	  TyBool -> 
        	  	let arg1 = ty_exp tyenv exp2 in
        	  	let arg2 = ty_exp tyenv exp3 in
        	  		(if arg1 == arg2
        	  			then arg1
        	  			else err ("Type should be the same: if"))
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
(*	| LetRecExp (id, para, exp1, exp2) ->
	 		let dummyenv = ref Environment.empty in
	 		let newenv = Environment.extend id (ProcV (para, exp1, dummyenv)) env in
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
								eval_exp (extend_env !env' !env' ids exps) body
					| _ -> err ("Non-function value is applied"))*)
			

let ty_decl tyenv = function
    Exp e -> (tyenv, ty_exp tyenv e)
  | Decl (id, e) ->
  		let v = ty_exp tyenv e in
	  		(Environment.extend id v tyenv, v)
(*  | RecDecl (id, para, e) -> 
  	 	let dummyenv = ref Environment.empty in
  	 	let v = (ProcV (para, e, dummyenv)) in
	 		let newenv = Environment.extend id v env in
	 			dummyenv := newenv;
	 			(id, newenv, v)*)
	 			
*)
