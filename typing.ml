open Syntax
open Util

exception Error of string

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
	| TyNone -> ("-", free)

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
  | Eq -> ([(ty1, TyInt); (ty2, TyInt)], TyBool)
  | Lt -> ([(ty1, TyInt); (ty2, TyInt)], TyBool)
  | Gt -> ([(ty1, TyInt); (ty2, TyInt)], TyBool)
  | And -> ([(ty1, TyBool); (ty2, TyBool)], TyBool)
  | Or -> ([(ty1, TyBool); (ty2, TyBool)], TyBool)
  | Cons -> ([(TyList ty1, ty2)], TyList ty1)

let rec ty_exp tyenv = function
    Var x -> 
      (try 
      	let TyScheme (vars, ty) = Environment.lookup x tyenv in
      	let s = List.map (fun id -> (id, fresh_tyvar ())) vars in 
      		([], subst_type s ty)
      with Environment.Not_bound -> err ("Variable not bound: " ^ x))
  | ILit _ -> ([], TyInt)
  | BLit _ -> ([], TyBool)
  | BinOp (op, exp1, exp2) -> 
      let (s1, ty1) = ty_exp tyenv exp1 in
      let (s2, ty2) = ty_exp tyenv exp2 in
      let (eq3, ty) = ty_prim op ty1 ty2 in
      let eqs = (eqs_of_subst s1) @ (eqs_of_subst s2) @ eq3 in
      let s3 = unify eqs in (s3, subst_type s3 ty)
  | IfExp (exp1, exp2, exp3) ->
  		let (s1, ty1) = ty_exp tyenv exp1 in
  		let (s2, ty2) = ty_exp tyenv exp2 in
  		let (s3, ty3) = ty_exp tyenv exp3 in
  		let eqs = (ty1, TyBool) :: (ty2, ty3) :: (eqs_of_subst s1) @ (eqs_of_subst s2) @ (eqs_of_subst s3) in
  		let s = unify eqs in (s, subst_type s ty2)
  | LetExp (decl, exp) ->
			let rec extend_env first_env (eqs, tyenv) decl =
				(match decl with
						(id, exp) :: tl -> 
							if exists_var id tl then err ("Duplicated declaration in let: " ^ id)
							else
								let (s, ty) = ty_exp first_env exp in
									extend_env first_env ((eqs_of_subst s) @ eqs, (Environment.extend id (closure ty first_env s) tyenv)) tl
					| [] -> (eqs, tyenv))
			in
				let (eqs, newenv) = extend_env tyenv ([], tyenv) decl in
				let (s1, ty) = ty_exp newenv exp in
				let neweqs = (eqs_of_subst s1) @ eqs in
				let s2 = unify neweqs in (s2, subst_type s2 ty)
	| LetRecExp (id, paras, exp1, exp2) ->
			(match paras with 
					para :: p_tl -> 
						let arg_ty = fresh_tyvar () in
						let body_ty = fresh_tyvar () in
						let tyfun = TyFun (arg_ty, body_ty) in
						let (s1, ty1) = ty_exp (Environment.extend id (tysc_of_ty tyfun) (Environment.extend para (tysc_of_ty arg_ty) tyenv)) (FunExp (p_tl, exp1)) in
						let eqs = (ty1, body_ty) :: (eqs_of_subst s1) in
						let s = unify eqs in
						let (s2, ty2) = ty_exp (Environment.extend id (closure (subst_type s tyfun) tyenv s) tyenv) exp2 in
						let eqs' =  (eqs_of_subst s) @ (eqs_of_subst s2) in
						let s' = unify eqs' in (s', subst_type s' ty2)
				| [] -> err ("Function has no argument: " ^ id))
	| FunExp (ids, exp) -> 
			(match ids with
					id :: tl ->
						let arg_ty = fresh_tyvar () in
						let (s, body_ty) = ty_exp (Environment.extend id (tysc_of_ty arg_ty) tyenv) (FunExp (tl, exp)) in
							(s, TyFun (subst_type s arg_ty, body_ty))
				| [] -> ty_exp tyenv exp)
	| MatchExp (exp1, exp2, exp3, x1, x2) ->
			let alpha = fresh_tyvar () in
			let beta = fresh_tyvar () in
			let (s1, ty1) = ty_exp tyenv exp1 in
			let (s2, ty2) = ty_exp tyenv exp2 in
			let tyenv' = Environment.extend x1 (tysc_of_ty alpha) (Environment.extend x2 (tysc_of_ty (TyList alpha)) tyenv) in
			let (s3, ty3) = ty_exp tyenv' exp3 in
			let eqs = (ty1, TyList alpha) :: (ty2, beta) :: (ty3, beta) :: (eqs_of_subst s1) @ (eqs_of_subst s2) @ (eqs_of_subst s3) in
			let s = unify eqs in (s, subst_type s beta)
	| ListExp explist -> 
			let alpha = fresh_tyvar () in
			let rec ty_list eqs = function
					exp :: tl -> 
						let (s, ty) = ty_exp tyenv exp in
							ty_list ((ty, alpha) :: (eqs_of_subst s) @ eqs) tl
				| [] -> eqs
			in
			let eqs = ty_list [] explist in
			let s = unify eqs in (s, subst_type s (TyList alpha))
	| AppExp (exp1, exp2) ->
			let (s1, ty1) = ty_exp tyenv exp1 in
			let (s2, ty2) = ty_exp tyenv exp2 in
			let arg_ty = fresh_tyvar () in
			let body_ty = fresh_tyvar () in
			let eqs = (ty1, TyFun(arg_ty, body_ty)) :: (ty2, arg_ty) :: (eqs_of_subst s1) @ (eqs_of_subst s2) in
			let s = unify eqs in (s, subst_type s body_ty)
	| _ -> ([], TyNone)

let ty_decl tyenv = function
    Exp e ->
    	let (s, ty) = ty_exp tyenv e in
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
											let (s, ty) = ty_exp first_env exp in 
												extend_env first_env (tys @ [ty], (Environment.extend id (closure ty first_env s) tyenv)) tl
								| [] -> (tys, tyenv))	
						in
							ty_line tl (extend_env tyenv (tys, tyenv) decl)
				|	[] -> (tys, tyenv))
			in ty_line decls ([], tyenv)
  | RecDecl (id, paras, e) ->
			let s, ty = 
				(match paras with 
						para :: p_tl -> 
							let arg_ty = fresh_tyvar () in
							let body_ty = fresh_tyvar () in
							let tyfun = TyFun (arg_ty, body_ty) in
							let (s1, ty1) = ty_exp (Environment.extend id (tysc_of_ty tyfun) (Environment.extend para (tysc_of_ty arg_ty) tyenv)) (FunExp (p_tl, e)) in
							let eqs = (ty1, body_ty) :: (eqs_of_subst s1) in
							let s = unify eqs in (s, subst_type s tyfun)
					| [] -> err ("Function has no argument: " ^ id))
			in ([ty], Environment.extend id (closure ty tyenv s) tyenv)
