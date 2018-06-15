
(* The type of tokens. *)

type token = 
  | WITH
  | VERT
  | TRUE
  | THEN
  | SEMISEMI
  | SEMI
  | RSQPAREN
  | RPAREN
  | REC
  | RARROW
  | PLUS
  | OOR
  | MULT
  | MINUS
  | MATCH
  | LT
  | LSQPAREN
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
  | DFUN
  | CONS
  | AND
  | AAND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.program)
