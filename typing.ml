open Syntax
open Util

exception Error of string
exception TypeDeclare of string * ((Syntax.id * Syntax.ty) Environment.t)

let err s = raise (Error s)

type tyenv = tysc Environment.t

let fresh_tyvar =
	let counter = ref 0 in
	let body () =
		let v = !counter in
			counter := v + 1; TyVar v
		in body

let rec freevar_ty = function
	| TyVar tyvar -> MySet.singleton (tyvar)
	| TyFun (ty1, ty2) -> MySet.union (freevar_ty ty1) (freevar_ty ty2)
	| TyList ty -> freevar_ty ty
	| _ -> MySet.empty
	
let rec string_of_ty free = function
		TyInt -> ("int", free)
	| TyBool -> ("bool", free)
	| TyVar i ->
			let free' = 
				if MySet.member i free then free
				else MySet.insert i free
			in
			let id = (MySet.index i free') in
			let num_str = if id >= 26 then string_of_int (id / 26) else "" in 
				("'" ^ (String.make 1 (char_of_int (97 + (id mod 26))) ^ num_str), free')
	| TyFun (ty1, ty2) -> 
			let s1, free' = string_of_ty free ty1 in
			let s2, free'' = string_of_ty free' ty2 in 
				((match ty1 with
						TyFun (_, _) -> "(" ^ s1 ^ ")"
					| _ -> s1) ^ " -> " ^ s2, free'')
	| TyList ty -> 
			let s, free' = string_of_ty free ty in
				(s ^ " list", free')
	| TyVariant s -> (s, free)
	| _ -> ("-", free)

let pp_ty ty = 
	let s, _ = string_of_ty MySet.empty ty in
	print_string s

type subst = (tyvar * ty) list

let rec replace (s_tyvar, s_ty) = function
		TyInt -> TyInt
	| TyBool -> TyBool
	| TyVar tyvar -> if tyvar == s_tyvar then s_ty else TyVar tyvar
	| TyFun (ty1, ty2) -> TyFun (replace (s_tyvar, s_ty) ty1, replace (s_tyvar, s_ty) ty2)
	| TyList ty -> TyList (replace (s_tyvar, s_ty) ty)
	| TyVariant s -> TyVariant s
	| _ -> TyNone

let rec subst_type subst ty1 = 
	(match subst with
			((tyvar, ty2) :: tl) -> subst_type tl (replace (tyvar, ty2) ty1)
		| [] -> ty1)

let rec map f = function
		hd :: tl -> (f hd) :: (map f tl)
	| [] -> []

let eqs_of_subst subst =
	let eq_of_subst (tyvar, ty) = (TyVar tyvar, ty) in
		map eq_of_subst subst

let replace_eqs s eqs = 
	let replace_eq s (l, r) = (replace s l, replace s r) in
		map (replace_eq s) eqs

let rec unify = function
		(ty1, ty2) :: tl ->
			if ty1 = ty2 then unify tl
			else 
				(match ty1, ty2 with
						TyFun (ty11, ty12), TyFun(ty21, ty22) -> 
							unify ((ty11, ty21) :: (ty12, ty22) :: tl)
					| TyList ty1', TyList ty2' -> 
					  	unify ((ty1', ty2') :: tl)
					| TyVariant s1, TyVariant s2 ->
							if s1 = s2 then unify tl
							else err ("Type error")
					| TyVar tyvar, ty | ty, TyVar tyvar -> 
							let free = freevar_ty ty in
								if MySet.member tyvar free then err ("Type error")
								else (tyvar, ty) :: unify (replace_eqs (tyvar, ty) tl)
					| _ -> err ("Type error"))
	|	[] -> []

let rec freevar_tysc scheme =
	let TyScheme (vars, ty) = scheme in
		(match vars with
				var :: tl -> MySet.remove var (freevar_tysc (TyScheme (tl, ty)))
			| [] -> freevar_ty ty)
		
let freevar_tyenv tyenv = 
	let merge_freevar tysc rest = 
		MySet.union (freevar_tysc tysc) rest
	in Environment.fold_right merge_freevar tyenv MySet.empty

let closure ty tyenv subst = 
	let fv_tyenv' = freevar_tyenv tyenv in
	let fv_tyenv =
		MySet.bigunion
			(MySet.map (fun id -> freevar_ty (subst_type subst (TyVar id))) fv_tyenv') in
	let ids = MySet.diff (freevar_ty ty) fv_tyenv in
		TyScheme (MySet.to_list ids, ty)

let ty_prim op ty1 ty2 = match op with
    Plus -> ([(ty1, TyInt); (ty2, TyInt)], TyInt)
  | Minus -> ([(ty1, TyInt); (ty2, TyInt)], TyInt)
  | Mult -> ([(ty1, TyInt); (ty2, TyInt)], TyInt)
  | Eq -> ([(ty1, ty2)], TyBool)
  | Lt -> ([(ty1, TyInt); (ty2, TyInt)], TyBool)
  | Gt -> ([(ty1, TyInt); (ty2, TyInt)], TyBool)
  | And -> ([(ty1, TyBool); (ty2, TyBool)], TyBool)
  | Or -> ([(ty1, TyBool); (ty2, TyBool)], TyBool)
  | Cons -> ([(TyList ty1, ty2)], TyList ty1)

let rec ty_exp tyenv varenv = function
    Var x -> 
      (try 
      	let TyScheme (vars, ty) = Environment.lookup x tyenv in
      	let s = List.map (fun id -> (id, fresh_tyvar ())) vars in 
      		([], subst_type s ty)
      with Environment.Not_bound -> err ("Variable not bound: " ^ x))
  | ILit _ -> ([], TyInt)
  | BLit _ -> ([], TyBool)
  | BinOp (op, exp1, exp2) -> 
      let (s1, ty1) = ty_exp tyenv varenv exp1 in
      let (s2, ty2) = ty_exp tyenv varenv exp2 in
      let (eq3, ty) = ty_prim op ty1 ty2 in
      let eqs = (eqs_of_subst s1) @ (eqs_of_subst s2) @ eq3 in
      let s3 = unify eqs in (s3, subst_type s3 ty)
  | IfExp (exp1, exp2, exp3) ->
  		let (s1, ty1) = ty_exp tyenv varenv exp1 in
  		let (s2, ty2) = ty_exp tyenv varenv exp2 in
  		let (s3, ty3) = ty_exp tyenv varenv exp3 in
  		let eqs = (ty1, TyBool) :: (ty2, ty3) :: (eqs_of_subst s1) @ (eqs_of_subst s2) @ (eqs_of_subst s3) in
  		let s = unify eqs in (s, subst_type s ty2)
  | LetExp (decl, exp) ->
			let rec extend_env first_env (eqs, tyenv) decl =
				(match decl with
						(id, exp) :: tl -> 
							if exists_var id tl then err ("Duplicated declaration in let: " ^ id)
							else
								let (s, ty) = ty_exp first_env varenv exp in
									extend_env first_env ((eqs_of_subst s) @ eqs, (Environment.extend id (closure ty first_env s) tyenv)) tl
					| [] -> (eqs, tyenv))
			in
				let (eqs, newenv) = extend_env tyenv ([], tyenv) decl in
				let (s1, ty) = ty_exp newenv varenv exp in
				let neweqs = (eqs_of_subst s1) @ eqs in
				let s2 = unify neweqs in (s2, subst_type s2 ty)
	| LetRecExp (funcs, exp) ->
			let rec extend_env = function
					(id, _, _) :: f_tl ->
						if exists_var_letrec id f_tl then err ("Duplicated declaration in let: " ^ id)
						else 
							let arg_ty = fresh_tyvar () in
							let body_ty = fresh_tyvar () in
							let tyfun = TyFun (arg_ty, body_ty) in
							let tyfuns, tyenv' = extend_env f_tl in
								(tyfun :: tyfuns, Environment.extend id (tysc_of_ty tyfun) tyenv')
				| [] -> ([], tyenv)
			in
			let tyfuns, tyenv' = extend_env funcs in
			let rec eval_eqs funcs tyfuns = match funcs, tyfuns with
					(id, paras, e) :: f_tl, tyfun :: tf_tl ->
						(match tyfun with 
								TyFun (arg_ty, body_ty) -> 
									(match paras with 
											para :: p_tl -> 
												let (s, ty) = ty_exp (Environment.extend para (tysc_of_ty arg_ty) tyenv') varenv (FunExp (p_tl, e)) in
													(ty, body_ty) :: (eqs_of_subst s) @ (eval_eqs f_tl tf_tl)
										| [] -> assert false)
							| _ -> assert false)
				| [], [] -> []
				| _, _ -> assert false
			in
			let eqs =	eval_eqs funcs tyfuns in
			let s = unify eqs in
			let rec extend_env_sc funcs tyfuns = match funcs, tyfuns with
					(id, paras, e) :: f_tl, tyfun :: tf_tl ->
						Environment.extend id (closure (subst_type s tyfun) tyenv s) (extend_env_sc f_tl tf_tl)						
				| [], [] -> tyenv
				| _, _ -> assert false
			in
			let newtyenv = extend_env_sc funcs tyfuns in
			let (s2, ty2) = ty_exp newtyenv varenv exp in
			let eqs' = (eqs_of_subst s2) @ (eqs_of_subst s) in
			let s' = unify eqs' in (s', subst_type s' ty2)			
	| FunExp (ids, exp) -> 
			(match ids with
					id :: tl ->
						let arg_ty = fresh_tyvar () in
						let (s, body_ty) = ty_exp (Environment.extend id (tysc_of_ty arg_ty) tyenv) varenv (FunExp (tl, exp)) in
							(s, TyFun (subst_type s arg_ty, body_ty))
				| [] -> ty_exp tyenv varenv exp)
	| MatchExp (exp1, exp2, exp3, x1, x2) ->
			let alpha = fresh_tyvar () in
			let (s1, ty1) = ty_exp tyenv varenv exp1 in
			let (s2, ty2) = ty_exp tyenv varenv exp2 in
			let tyenv' = Environment.extend x1 (tysc_of_ty alpha) (Environment.extend x2 (tysc_of_ty (TyList alpha)) tyenv) in
			let (s3, ty3) = ty_exp tyenv' varenv exp3 in
			let eqs = (ty1, TyList alpha) :: (ty2, ty3) :: (eqs_of_subst s1) @ (eqs_of_subst s2) @ (eqs_of_subst s3) in
			let s = unify eqs in (s, subst_type s ty2)
	| ListExp explist -> 
			let alpha = fresh_tyvar () in
			let rec ty_list eqs = function
					exp :: tl -> 
						let (s, ty) = ty_exp tyenv varenv exp in
							ty_list ((ty, alpha) :: (eqs_of_subst s) @ eqs) tl
				| [] -> eqs
			in
			let eqs = ty_list [] explist in
			let s = unify eqs in (s, subst_type s (TyList alpha))
	| AppExp (exp1, exp2) ->
			let (s1, ty1) = ty_exp tyenv varenv exp1 in
			let (s2, ty2) = ty_exp tyenv varenv exp2 in
			let arg_ty = fresh_tyvar () in
			let body_ty = fresh_tyvar () in
			let eqs = (ty1, TyFun(arg_ty, body_ty)) :: (ty2, arg_ty) :: (eqs_of_subst s1) @ (eqs_of_subst s2) in
			let s = unify eqs in (s, subst_type s body_ty)
	| ConstrExp (id, exp) ->
			let (varname, ty) = 
				(try Environment.lookup id varenv
     			with Environment.Not_bound -> err ("Constructor not bound: " ^ id)) in
			let (s1, ty1) = ty_exp tyenv varenv exp in
			let eqs = (ty, ty1) :: (eqs_of_subst s1) in
			let s = unify eqs in (s, TyVariant varname)
	| _ -> ([], TyNone)

let ty_decl tyenv varenv = function
    Exp e ->
    	let (s, ty) = ty_exp tyenv varenv e in
    		([ty], tyenv)
  | Decl decls ->
  		let rec ty_line decls (tys, tyenv) =
  			(match decls with
					decl :: tl ->
						let rec extend_env first_env (tys, tyenv) decl =
							(match decl with
									(id, exp) :: tl ->
										if exists_var id tl then err ("Duplicated declaration in let: " ^ id)
										else
											let (s, ty) = ty_exp first_env varenv exp in 
												extend_env first_env (tys @ [ty], (Environment.extend id (closure ty first_env s) tyenv)) tl
								| [] -> (tys, tyenv))	
						in
							ty_line tl (extend_env tyenv (tys, tyenv) decl)
				|	[] -> (tys, tyenv))
			in ty_line decls ([], tyenv)
	| RecDecl funcs -> 			
			let rec extend_env = function
					(id, _, _) :: f_tl ->
						if exists_var_letrec id f_tl then err ("Duplicated declaration in let: " ^ id)
						else 
							let arg_ty = fresh_tyvar () in
							let body_ty = fresh_tyvar () in
							let tyfun = TyFun (arg_ty, body_ty) in
							let tyfuns, tyenv' = extend_env f_tl in
								(tyfun :: tyfuns, Environment.extend id (tysc_of_ty tyfun) tyenv')
				| [] -> ([], tyenv)
			in
			let tyfuns, tyenv' = extend_env funcs in
			let rec eval_eqs funcs tyfuns = match funcs, tyfuns with
					(id, paras, e) :: f_tl, tyfun :: tf_tl ->
						(match tyfun with 
								TyFun (arg_ty, body_ty) ->
									(match paras with 
											para :: p_tl -> 
												let (s, ty) = ty_exp (Environment.extend para (tysc_of_ty arg_ty) tyenv') varenv (FunExp (p_tl, e)) in
													(ty, body_ty) :: (eqs_of_subst s) @ (eval_eqs f_tl tf_tl)
										| [] -> assert false)
							| _ -> assert false)
				| [], [] -> []
				| _, _ -> assert false
			in
			let eqs =	eval_eqs funcs tyfuns in
			let s = unify eqs in
			let rec extend_env_sc funcs tyfuns = match funcs, tyfuns with
					(id, paras, e) :: f_tl, tyfun :: tf_tl ->
						let tys, newtyenv = extend_env_sc f_tl tf_tl in
						let ty = subst_type s tyfun in
							(ty :: tys, Environment.extend id (closure ty tyenv s) newtyenv)
				| [], [] -> ([], tyenv)
				| _, _ -> assert false
			in
				extend_env_sc funcs tyfuns
	| TypeDecl (id, variant) ->
			let rec register_constr id firstenv = function
					(constr, ty) :: tl -> Environment.extend constr (id, ty) (register_constr id firstenv tl)
				| [] -> firstenv
			in
			let newvarenv = register_constr id varenv variant in
				raise (TypeDeclare (id, newvarenv))
	| _ -> ([TyNone], tyenv)
