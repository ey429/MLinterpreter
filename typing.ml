open Syntax
open Util

exception Error of string
exception TypeDeclare of string * ((Syntax.id * Syntax.ty) Environment.t) * (Syntax.ty Environment.t)

let err s = raise (Error s)

type tyenv = tysc Environment.t

let fresh_tyvar =
	let counter = ref 0 in
	let body () =
		let v = !counter in
			counter := v + 1; TyVar v
		in body

let rec freevar_ty = function
	  TyVar tyvar -> MySet.singleton (tyvar)
	| TyFun (ty1, ty2) -> MySet.union (freevar_ty ty1) (freevar_ty ty2)
	| TyList ty -> freevar_ty ty
	| TyTuple tys -> MySet.bigunion (MySet.from_list (List.map freevar_ty tys))
	| _ -> MySet.empty
	
let string_of_ty ty = 
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
							TyFun _ -> "(" ^ s1 ^ ")"
						| _ -> s1) ^ " -> " ^ s2, free'')
		| TyList ty -> 
				let s, free' = string_of_ty free ty in
					(s ^ " list", free')
		| TyVariant s -> (s, free)
		| TyTuple tys ->
				let cover s = function
						TyFun _ | TyTuple _ -> "(" ^ s ^ ")"
					| _ -> s
				in
				let rec string_of_tuple s free = function
						hd :: md :: tl ->
							let s', free' = string_of_ty free hd in
								string_of_tuple (s ^ (cover s' hd) ^ " * ") free' (md :: tl)
					| [x] ->
							let s', free' = string_of_ty free x in (s ^ (cover s' x), free')
					| [] -> (s, free)
				in string_of_tuple "" free tys
		| _ -> ("-", free)
	in
	let (s, free) = string_of_ty MySet.empty ty in s

let type_err ty1 ty2 = raise (Error ("Type error: type " ^ (string_of_ty ty2) ^ " is expected, got type " ^ (string_of_ty ty1)))

let pp_ty ty = 
	print_string (string_of_ty ty)

type subst = (tyvar * ty) list

let rec replace (s_tyvar, s_ty) = function
		TyInt -> TyInt
	| TyBool -> TyBool
	| TyVar tyvar -> if tyvar == s_tyvar then s_ty else TyVar tyvar
	| TyFun (ty1, ty2) -> TyFun (replace (s_tyvar, s_ty) ty1, replace (s_tyvar, s_ty) ty2)
	| TyList ty -> TyList (replace (s_tyvar, s_ty) ty)
	| TyVariant s -> TyVariant s
	| TyTuple tys -> TyTuple (List.map (replace (s_tyvar, s_ty)) tys)
	| _ -> TyNone

let rec subst_type subst ty1 = 
	(match subst with
			((tyvar, ty2) :: tl) -> subst_type tl (replace (tyvar, ty2) ty1)
		| [] -> ty1)

let eqs_of_subst subst =
	let eq_of_subst (tyvar, ty) = (TyVar tyvar, ty) in
		List.map eq_of_subst subst

let replace_eqs s eqs = 
	let replace_eq s (l, r) = (replace s l, replace s r) in
		List.map (replace_eq s) eqs

let rec unify = function
		(ty1, ty2) :: tl ->
			if ty1 = ty2 then unify tl
			else 
				(match ty1, ty2 with
						TyNone, _ | _, TyNone -> unify tl
					|	TyFun (ty11, ty12), TyFun(ty21, ty22) -> 
							unify ((ty11, ty21) :: (ty12, ty22) :: tl)
					| TyList ty1', TyList ty2' -> 
					  	unify ((ty1', ty2') :: tl)
					| TyVariant s1, TyVariant s2 ->
							if s1 = s2 then unify tl
							else type_err ty1 ty2 
					| TyTuple tys1, TyTuple tys2 ->
							let rec add_eq eqs = function
									ty1' :: tl1, ty2' :: tl2 ->
										add_eq ((ty1', ty2') :: eqs) (tl1, tl2)
								| [], [] -> eqs
								| _ -> type_err ty1 ty2
							in
							let eqs = add_eq tl (tys1, tys2) in
								unify eqs	
					| TyVar tyvar, ty | ty, TyVar tyvar -> 
							let free = freevar_ty ty in
								if MySet.member tyvar free then err ("Type error: Typing failed")
								else (tyvar, ty) :: unify (replace_eqs (tyvar, ty) tl)
					| _ -> type_err ty1 ty2)
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

let pattern_match varenv s mexp ty = 
	let rec pattern_match varenv = function
		  Var id ->
				let alpha = fresh_tyvar () in
					([(id, alpha)], [], alpha)
		| ILit _ -> ([], [], TyInt)
		| BLit _ -> ([], [], TyBool)
		| BinOp (Cons, l, r) ->
				let (pair1, eqs1, ty1) = pattern_match varenv l in
				let (pair2, eqs2, ty2) = pattern_match varenv r in
					(pair1 @ pair2, (TyList ty1, ty2) :: eqs1 @ eqs2, ty2)
		| TupleExp mlist ->
				let rec read_tuple = function
						mexp' :: m_tl ->
							let (pair1, eqs1, ty) = pattern_match varenv mexp' in
							let (pair2, eqs2, tylist) = read_tuple m_tl in
								(pair1 @ pair2, eqs1 @ eqs2, ty :: tylist)
					| [] -> ([], [], [])
				in
				let (pair, eqs, tylist) = read_tuple mlist in
					(pair, eqs, TyTuple tylist)
		| ListExp mlist ->
				let rec read_list = function
						mexp' :: m_tl ->
							let (pair1, eqs1, ty1) = pattern_match varenv mexp' in
							let (pair2, eqs2, ty2) = read_list m_tl in
								(pair1 @ pair2, (TyList ty1, ty2) :: eqs1 @ eqs2, ty2)
					| [] ->	let alpha = fresh_tyvar () in ([], [], TyList alpha)
				in read_list mlist
		| ConstrExp (id, mexp') ->
				let (varname, ty) = 
					(try Environment.lookup id varenv
		   			with Environment.Not_bound -> err ("Constructor not bound: " ^ id)) in
		   	let (pair, eqs, ty') = pattern_match varenv mexp' in
		   		(pair, (ty, ty') :: eqs, TyVariant varname)
		| None -> 
				([], [], TyNone)
		| _ -> err ("Matching failed")
	in
	let (pair, eqs, mty) = pattern_match varenv mexp in
	let s' = unify ((ty, mty) :: eqs @ (eqs_of_subst s)) in
	let pair' = List.map (fun (x, y) -> (x, subst_type s' y)) pair in
		(pair', s', subst_type s' mty)

let rec pair_to_env tyenv = function
		(id, ty) :: tl -> Environment.extend id (tysc_of_ty ty) (pair_to_env tyenv tl)
	| [] -> tyenv

let rec pair_to_env_sc tyenv first_env s = function
		(id, ty) :: tl -> Environment.extend id (closure ty first_env s) (pair_to_env_sc tyenv first_env s tl)
	| [] -> tyenv

let check_conflicts pair =
	let dupl = exists_dupl pair in
	if not (dupl = "") then err ("Variable " ^ dupl ^ " appears several times")
	else ()

let rec eval_texp tylenv = function
		TupleT tlist ->
			TyTuple (List.map (eval_texp tylenv) tlist)
	| ListT t ->
			TyList (eval_texp tylenv t)
	| TVar x ->
			(try Environment.lookup x tylenv
			with Environment.Not_bound -> err ("Type not bound: " ^ x))		
	| _ -> TyNone
	
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
						(mexp, exp) :: tl -> 
							let (s, ty) = ty_exp first_env varenv exp in
							let (pair, s', mty) = pattern_match varenv s mexp ty in
								extend_env first_env ((eqs_of_subst s') @ eqs, pair_to_env_sc tyenv first_env s' pair) tl
					| [] -> (eqs, tyenv))
			in
				let (eqs, newenv) = extend_env tyenv ([], tyenv) decl in
				let (s1, ty) = ty_exp newenv varenv exp in
				let neweqs = (eqs_of_subst s1) @ eqs in
				let s2 = unify neweqs in (s2, subst_type s2 ty)
	| LetRecExp (funcs, exp) ->
			let rec extend_env = function
					(id, _, _) :: f_tl ->
						let arg_ty = fresh_tyvar () in
						let body_ty = fresh_tyvar () in
						let tyfun = TyFun (arg_ty, body_ty) in
						let tyfuns, tyenv' = extend_env f_tl in
							(tyfun :: tyfuns, Environment.extend id (tysc_of_ty tyfun) tyenv')
				| [] -> ([], tyenv)
			in
			let tyfuns, tyenv' = extend_env funcs in
			let rec eval_eqs funcs tyfuns = match funcs, tyfuns with
					(id, mexps, e) :: f_tl, tyfun :: tf_tl ->
						(match tyfun with 
								TyFun (arg_ty, body_ty) -> 
									(match mexps with 
											mexp :: m_tl -> 
												let (pair, s, mty) = pattern_match varenv [] mexp arg_ty in
												let (s', ty) = ty_exp (pair_to_env tyenv' pair) varenv (FunExp (m_tl, e)) in
													(ty, body_ty) :: (eqs_of_subst s) @ (eqs_of_subst s') @ (eval_eqs f_tl tf_tl)
										| [] -> assert false)
							| _ -> assert false)
				| [], [] -> []
				| _, _ -> assert false
			in
			let eqs =	eval_eqs funcs tyfuns in
			let s = unify eqs in
			let rec extend_env_sc funcs tyfuns = match funcs, tyfuns with
					(id, _, _) :: f_tl, tyfun :: tf_tl ->
						Environment.extend id (closure (subst_type s tyfun) tyenv s) (extend_env_sc f_tl tf_tl)						
				| [], [] -> tyenv
				| _, _ -> assert false
			in
			let newtyenv = extend_env_sc funcs tyfuns in
			let (s2, ty2) = ty_exp newtyenv varenv exp in
			let eqs' = (eqs_of_subst s2) @ (eqs_of_subst s) in
			let s' = unify eqs' in (s', subst_type s' ty2)			
	| FunExp (mexps, exp) -> 
			(match mexps with
					mexp :: m_tl ->
						let arg_ty = fresh_tyvar () in
						let (pair, s, mty) = pattern_match varenv [] mexp arg_ty in
						let (s', body_ty) = ty_exp (pair_to_env tyenv pair) varenv (FunExp (m_tl, exp)) in
						let eqs = (eqs_of_subst s) @ (eqs_of_subst s') in
						let s'' = unify eqs in 
							(s'', TyFun (subst_type s'' arg_ty, subst_type s'' body_ty))
				| [] -> ty_exp tyenv varenv exp)
	| MatchExp (exp, cases) ->
			let alpha = fresh_tyvar () in
			let rec match_case (s, ty) = function
					(mexp, body) :: tl ->
						let (pair, s', mty) = pattern_match varenv s mexp ty in
						let (s_body, ty_body) = ty_exp (pair_to_env tyenv pair) varenv body in
							(ty_body, alpha) :: (eqs_of_subst s') @ (eqs_of_subst s_body) @ (match_case (s, ty) tl)
				| [] -> []
			in
			let (s, ty) = ty_exp tyenv varenv exp in
			let eqs = match_case (s, ty) cases in
			let s' = unify eqs in (s', subst_type s' alpha)
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
			let eqs = (ty1, ty) :: (eqs_of_subst s1) in
			let s = unify eqs in (s, TyVariant varname)
	| TupleExp explist -> 
			let rec ty_tuple = function
					exp :: tl ->
						let (s, ty) = ty_exp tyenv varenv exp in
						let (eqs', tys') = ty_tuple tl in
							((eqs_of_subst s) @ eqs', ty :: tys')
				| [] -> ([], [])
			in
			let (eqs, tys) = ty_tuple explist in
			let s = unify eqs in (s, subst_type s (TyTuple tys))
	| _ -> ([], TyNone)

let ty_decl tyenv varenv tylenv = function
    Exp e ->
    	let (s, ty) = ty_exp tyenv varenv e in
    		([ty], tyenv)
  | Decl decls ->
  		let rec ty_line decls (tys, tyenv) =
  			(match decls with
					decl :: tl ->
						let rec extend_env first_env (tys, tyenv) decl =
							(match decl with
									(mexp, exp) :: tl -> 
										let (s, ty) = ty_exp first_env varenv exp in
										let (pair, s', mty) = pattern_match varenv s mexp ty in
										let tys' = List.map (fun (x, y) -> y) pair in
											extend_env first_env (tys @ tys', pair_to_env_sc tyenv first_env s' pair) tl
								| [] -> (tys, tyenv))	
						in
							ty_line tl (extend_env tyenv (tys, tyenv) decl)
				|	[] -> (tys, tyenv))
			in ty_line decls ([], tyenv)
	| RecDecl funcs -> 			
			let rec extend_env = function
					(id, _, _) :: f_tl ->
						let arg_ty = fresh_tyvar () in
						let body_ty = fresh_tyvar () in
						let tyfun = TyFun (arg_ty, body_ty) in
						let tyfuns, tyenv' = extend_env f_tl in
							(tyfun :: tyfuns, Environment.extend id (tysc_of_ty tyfun) tyenv')
				| [] -> ([], tyenv)
			in
			let tyfuns, tyenv' = extend_env funcs in
			let rec eval_eqs funcs tyfuns = match funcs, tyfuns with
					(id, mexps, e) :: f_tl, tyfun :: tf_tl ->
						(match tyfun with 
								TyFun (arg_ty, body_ty) ->
									(match mexps with 
											mexp :: m_tl -> 
												let (pair, s, mty) = pattern_match varenv [] mexp arg_ty in
												let (s', ty) = ty_exp (pair_to_env tyenv' pair) varenv (FunExp (m_tl, e)) in
													(ty, body_ty) :: (eqs_of_subst s) @ (eqs_of_subst s') @ (eval_eqs f_tl tf_tl)
										| [] -> assert false)
							| _ -> assert false)
				| [], [] -> []
				| _, _ -> assert false
			in
			let eqs =	eval_eqs funcs tyfuns in
			let s = unify eqs in
			let rec extend_env_sc funcs tyfuns = match funcs, tyfuns with
					(id, _, _) :: f_tl, tyfun :: tf_tl ->
						let tys, newtyenv = extend_env_sc f_tl tf_tl in
						let ty = subst_type s tyfun in
							(ty :: tys, Environment.extend id (closure ty tyenv s) newtyenv)
				| [], [] -> ([], tyenv)
				| _, _ -> assert false
			in
				extend_env_sc funcs tyfuns
	| TypeDecl (id, texp) ->
			let ty = eval_texp tylenv texp in
			let tylenv' = Environment.extend id ty tylenv in
				raise (TypeDeclare ("type " ^ id ^ " = " ^ (string_of_ty ty), varenv, tylenv'))
	| VariantDecl (id, variant) ->
			let tylenv' = Environment.extend id (TyVariant id) tylenv in
			let rec register_constr id firstenv = function
					(constr, texp) :: tl -> 
						let ty = eval_texp tylenv' texp in
						let (s, varenv') = register_constr id firstenv tl in
							(constr ^ (if ty = TyNone then "" else " of " ^ (string_of_ty ty)) ^ (if tl = [] then "" else " | ") ^ s, Environment.extend constr (id, ty) varenv')
				| [] -> ("", firstenv)
			in
			let (s, newvarenv) = register_constr id varenv variant in
				raise (TypeDeclare ("type " ^ id ^ " = " ^ s, newvarenv, tylenv'))
	| _ -> ([TyNone], tyenv)
