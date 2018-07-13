open Syntax
open Eval
open Util
open Typing

let rec read_eval_print env tyenv varenv tylenv =
  print_string "# ";
  flush stdout;
 	try 
 	let decl = Parser.toplevel Lexer.main (Lexing.from_channel stdin) in
	let (tys, newtyenv) = ty_decl tyenv varenv tylenv decl in
	let (eqs, newenv) = eval_decl env decl in
		let rec print_eqs tys eqs = 
			(match (tys, eqs) with
					(ty :: ty_tl, (id, v) :: eq_tl) ->
						if not (exists_var id eq_tl) then
							(Printf.printf "val %s : " id;
							pp_ty ty;
							print_string " = ";
							pp_val v;
							print_newline());
						print_eqs ty_tl eq_tl
				| _ -> read_eval_print newenv newtyenv varenv tylenv)
		in print_eqs tys eqs
	with
			Typing.TypeDeclare (s, newvarenv, newtylenv) ->
				print_string s;
				print_newline();
				read_eval_print env tyenv newvarenv newtylenv
		| Typing.Error s | Eval.Error s | Failure s ->
				print_string (s);
				print_newline();
				read_eval_print env tyenv varenv tylenv
		|	Parser.Error ->
				print_string ("Parser Error");
				print_newline();
				read_eval_print env tyenv varenv tylenv

let initial_tyenv =
	Environment.extend "i" (tysc_of_ty TyInt)
		(Environment.extend "ii" (tysc_of_ty TyInt)
			(Environment.extend "iii" (tysc_of_ty TyInt)
				(Environment.extend "iv" (tysc_of_ty TyInt)
					(Environment.extend "v" (tysc_of_ty TyInt)
						(Environment.extend "x" (tysc_of_ty TyInt) Environment.empty)))))

let initial_env =
	Environment.extend "i" (IntV 1)
		(Environment.extend "ii" (IntV 2)
			(Environment.extend "iii" (IntV 3)
				(Environment.extend "iv" (IntV 4)
					(Environment.extend "v" (IntV 5)
						(Environment.extend "x" (IntV 10) Environment.empty)))))

let initial_varenv = Environment.empty

let initial_tylenv =
	Environment.extend "" TyNone
		(Environment.extend "int" TyInt
			(Environment.extend "bool" TyBool 
				(Environment.extend "string" TyString Environment.empty)))

let _ = read_eval_print initial_env initial_tyenv initial_varenv initial_tylenv

(*
let rec read_eval_print env =
  print_string "# ";
  flush stdout;
 	try let decl = Parser.toplevel Lexer.main (Lexing.from_channel stdin) in
		let (eqs, newenv) = eval_decl env decl in
		let rec print_eqs eqs = 
			match eqs with
					(id, v) :: tl ->
						if not (exists_var id tl) then
							(Printf.printf "val %s = " id;
							pp_val v;
							print_newline());
						print_eqs tl
				| [] -> read_eval_print newenv
		in print_eqs eqs
	with 
			Eval.Error s | Failure s ->
				print_string (s);
				print_newline();
				read_eval_print env
		|	Parser.Error ->
				print_string ("Parser Error");
				print_newline();
				read_eval_print env

let initial_env =
	Environment.extend "i" (IntV 1)
		(Environment.extend "ii" (IntV 2)
			(Environment.extend "iii" (IntV 3)
				(Environment.extend "iv" (IntV 4)
					(Environment.extend "v" (IntV 5)
						(Environment.extend "x" (IntV 10) Environment.empty)))))

let _ = read_eval_print initial_env
*)
