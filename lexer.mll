{
let reservedWords = [
  (* Keywords *)
  ("else", Parser.ELSE);
  ("false", Parser.FALSE);
  ("if", Parser.IF);
  ("then", Parser.THEN);
  ("true", Parser.TRUE);
  ("in", Parser.IN);
  ("let", Parser.LET);
  ("and", Parser.AND);
  ("fun", Parser.FUN);
  ("dfun", Parser.DFUN);
  ("rec", Parser.REC);
  ("match", Parser.MATCH);
  ("with", Parser.WITH);
  ("type", Parser.TYPE);
  ("of", Parser.OF);
  ("list", Parser.LIST);
  ("function", Parser.FUNCTION);
]
}	

rule main = parse
  (* ignore spacing and newline characters *)
  [' ' '\009' '\012' '\n']+     { main lexbuf }

|	"(*" { comment lexbuf ; main lexbuf }
	
| "-"? ['0'-'9']+
    { Parser.INTV (int_of_string (Lexing.lexeme lexbuf)) }

| "(" { Parser.LPAREN }
| ")" { Parser.RPAREN }
| ";;" { Parser.SEMISEMI }
| "+" { Parser.PLUS }
| "*" { Parser.MULT }
| "<" { Parser.LT }
| ">" { Parser.GT }
| "&&" { Parser.AAND }
| "||" { Parser.OOR }
| "=" { Parser.EQ }
| "-" { Parser.MINUS }
| "->" { Parser.RARROW }
| "[" { Parser.LSQPAREN }
| "]" { Parser.RSQPAREN }
| ";" { Parser.SEMI }
| "::" { Parser.CONS }
| "|" { Parser.VERT }
| "," { Parser.COMMA }
| "_" { Parser.UNDERBAR }
| "^" { Parser.JOIN }
| "@" { Parser.APPEND }

| ['a'-'z'] ['a'-'z' '0'-'9' '_' '\'']*
    { let id = Lexing.lexeme lexbuf in
      try 
        List.assoc id reservedWords
      with
      _ -> Parser.ID id
    }
| ['A'-'Z'] ['a'-'z' '0'-'9' '_' '\'']*
    { let id = Lexing.lexeme lexbuf in
      try 
        List.assoc id reservedWords
      with
      _ -> Parser.CONSTR id
    }
| '\"' [^'\"']* '\"'
		{	let s = (Lexing.lexeme lexbuf) in
			let n = String.length s in
				Parser.STRING (String.sub (String.sub s 0 (n - 1)) 1 (n - 2))
		}
| eof { exit 0 }

and comment = parse
	"(*" { comment lexbuf ; comment lexbuf } 
|	"*)" { () }
| eof { () }
| _ { comment lexbuf }
