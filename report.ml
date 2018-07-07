(* exercise 3.4.4 *)

let makefact maker x = if x < 1 then 1 else x * maker maker (x + -1) in
let fact x = makefact makefact x in fact 5;;

(* exercise 3.4.6 *)
let fact = fun n -> n + 1 in
let fact = fun n -> if n < 1 then 1 else n * fact (n + -1) in
fact 5;;

(* 25 *)

let fact = dfun n -> n + 1 in
let fact = fun n -> if n < 1 then 1 else n * fact (n + -1) in
fact 5;;

(* 25 *)

let fact = fun n -> n + 1 in
let fact = dfun n -> if n < 1 then 1 else n * fact (n + -1) in
fact 5;;

(* 120 *)

let fact = dfun n -> n + 1 in
let fact = dfun n -> if n < 1 then 1 else n * fact (n + -1) in
fact 5;;

(* 120 *)
