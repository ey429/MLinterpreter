open Syntax
open Eval
open Util

let rec read_eval_print env =
  print_string "# ";
  flush stdout;
 	try let decl = Parser.toplevel Lexer.main (Lexing.from_channel stdin) in
		try let (eqs, newenv) = eval_decl env decl in
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
		with Error s ->
			print_string ("Fatal Error -> " ^ s);
			print_newline();
			read_eval_print env
	with 
		Parser.Error ->
			print_string ("Fatal Error -> Parser Error");
			print_newline();
			read_eval_print env
	|	Failure s ->
			print_string ("Fatal Error -> " ^ s);
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

