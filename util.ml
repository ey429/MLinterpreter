(* 変数名の重複を調べる補助関数 *)
let rec exists_var x = function
		(id, v) :: tl -> (x = id) || (exists_var x tl)
	|	[] -> false

let rec exists_dupl = function
		(id, _) :: tl ->
			if exists_var id tl then id
			else exists_dupl tl
	| [] -> ""

let rec print_ids = function
		id :: tl ->
			print_string (id ^ " ");
			print_ids tl
	| [] -> print_newline()

