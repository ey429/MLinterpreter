(* ML interpreter / type reconstruction *)
type id = string

type binOp = Plus | Minus | Mult | Eq | Lt | Gt | And | Or | Cons

type tyvar = int

type ty = TyInt | TyBool | TyVar of tyvar | TyFun of ty * ty | TyList of ty | TyVariant of string | TyTuple of ty list | TyNone

type tysc = TyScheme of tyvar list * ty

let tysc_of_ty ty = TyScheme ([], ty)

type exp =
    Var of id
  | ILit of int
  | BLit of bool
  | BinOp of binOp * exp * exp
  | IfExp of exp * exp * exp
  | LetExp of ((exp * exp) list) * exp
  | FunExp of (id list) * exp
  | DFunExp of (id list) * exp
  | MatchExp of exp * exp * exp * id * id
  | ListExp of exp list
  | AppExp of exp * exp
  | LetRecExp of ((id * (id list) * exp) list) * exp
  | ConstrExp of id * exp
  | TupleExp of exp list
	| None

type texp = 
		TupleT of texp list
	| ListT of texp
	| TVar of string
	| TNone

type program = 
    Exp of exp
  | Decl of ((exp * exp) list) list
  | RecDecl of (id * (id list) * exp) list
 	| TypeDecl of id * texp
 	| VariantDecl of id * ((id * texp) list)
