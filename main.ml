open Syntax
open Eval
open Typing

let rec read_eval_print env tyenv =
  print_string "# ";
  flush stdout;
  let decl = Parser.toplevel Lexer.main (Lexing.from_channel stdin) in
	try let (newtyenv, ty) = ty_decl tyenv decl in
  try let (id, newenv, v) = eval_decl env decl in
    Printf.printf "val %s : " id;
    pp_ty ty;
    print_string " = ";
    pp_val v;
    print_newline();
    read_eval_print newenv newtyenv
  with Error s ->
  	print_string ("Fatal Error -> " ^ s);
  	print_newline();
  	read_eval_print env tyenv
  with Error s ->
  	print_string ("Fatal Error -> " ^ s);
  	print_newline();
  	read_eval_print env tyenv

let initial_env = Environment.empty

let initial_tyenv = Environment.empty

let _ = read_eval_print initial_env initial_tyenv

