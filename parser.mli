
(* The type of tokens. *)

type token = 
  | TRUE
  | THEN
  | SEMISEMI
  | RPAREN
  | REC
  | RARROW
  | PLUS
  | OOR
  | MULT
  | LT
  | LPAREN
  | LET
  | INTV of (int)
  | IN
  | IF
  | ID of (Syntax.id)
  | GT
  | FUN
  | FALSE
  | EQ
  | ELSE
  | AND
  | AAND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.program)
