(* ML interpreter / type reconstruction *)
type id = string

type binOp = Plus | Mult | Lt | Gt | And | Or

type exp =
  | Var of id (* Var "x" --> x *)
  | ILit of int (* ILit 3 --> 3 *)
  | BLit of bool (* BLit true --> true *)
  | BinOp of binOp * exp * exp
  (* BinOp(Plus, ILit 4, Var "x") --> 4 + x *)
  | IfExp of exp * exp * exp
  (* IfExp(BinOp(Lt, Var "x", ILit 4), 
           ILit 3, 
           Var "x") --> 
     if x<4 then 3 else x *)
  | LetExp of ((id * exp) list) * exp
  | FunExp of (id list) * exp
  | AppExp of exp * (exp list)
  | LetRecExp of id * (id list) * exp * exp


type program = 
    Exp of exp
  | Decl of id * exp
  | RecDecl of id * (id list) * exp
  
(*
type tyvar = int

type ty = TyInt | TyBool | TyVar of tyvar | TyFun of ty * ty

let pp_ty = function
		TyInt -> print_string "int"
	| TyBool -> print_string "bool"

let fresh_tyvar =
	let counter = ref 0 in
	let body () =
		let v = !counter in
			counter := v + 1; v
		in body

let rec freevar_ty = function
		TyInt -> MySet.empty
	| TyBool -> MySet.empty
	| TyVar tyvar -> MySet.singleton (tyvar)
	| TyFun ty1, ty2 -> MySet.union (freevar_ty ty1, freevar_ty ty2)
	
type subst = (tyvar * ty) list

let rec subst_type subst ty1 = match subst with
	((tyvar, ty2) :: tl) -> subst_type tl (replace tyvar, ty1, ty2)
	[] -> ty1
	
let rec replace tyvar1 ty = function
		TyInt -> TyInt
	| TyBool -> TyBool
	| TyVar tyvar2 -> (if tyvar1 == tyvar2 then ty else tyvar2) 
	| TyFun ty1, ty2 -> TyFun (replace tyvar1 ty ty1, replace tyvar1 ty ty2)
	
let rec unify = function
	(ty1, ty2) :: tl -> match ty1, ty2 with
			ty, ty -> unify tl
		| TyFun (ty11, ty12), TyFun(ty21, ty22) -> 
				unify (ty11, ty21) :: (ty12, ty22) :: tl
		| Tyvar tyvar, ty -> (tyvar, ty) :: unify (map (replace tyvar ty) tl)
		| ty, Tyvar tyvar -> (tyvar, ty) :: unify (map (replace tyvar ty) tl)
		| err Error("Typing Error")
	|	[] -> MySet.empty
*)
