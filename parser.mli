
(* The type of tokens. *)

type token = 
  | WITH
  | VERT
  | UNDERBAR
  | TYPE
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
  | OF
  | MULT
  | MINUS
  | MATCH
  | LT
  | LSQPAREN
  | LPAREN
  | LIST
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
  | CONSTR of (Syntax.id)
  | CONS
  | COMMA
  | AND
  | AAND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.program)
