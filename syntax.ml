(* ML interpreter / type reconstruction *)
type id = string

type binOp = Plus | Minus | Mult | Eq | Lt | Gt | And | Or | Cons

type exp =
  | Var of id
  | ILit of int
  | BLit of bool
  | BinOp of binOp * exp * exp
  | IfExp of exp * exp * exp
  | LetExp of ((id * exp) list) * exp
  | FunExp of (id list) * exp
  | DFunExp of (id list) * exp
  | MatchExp of exp * exp * exp * id * id
  | ListExp of exp list
  | AppExp of exp * exp
  | LetRecExp of id * (id list) * exp * exp


type program = 
    Exp of exp
  | Decl of ((id * exp) list) list
  | RecDecl of id * (id list) * exp
  

type tyvar = int

type ty = TyInt | TyBool | TyVar of tyvar | TyFun of ty * ty | TyList of ty | TyNone

type tysc = TyScheme of tyvar list * ty

let tysc_of_ty ty = TyScheme ([], ty)

