(* DATATYPE


*)
abstype receipt = Void | Receipt of string * int * int * receipt * receipt
with
(* new

*)

(* add (receipt, item)
	TYPE: receipt * string
	PRE:
	POST:
*)
fun add (receipt, item) = raise Fail "not yet implemented."

(* del (search)

*)

(* sum
	TYPE:
	PRE:
	POST:
*)
fun sum receipt = raise Fail "not yet implemented."

(* addTax

*)

(* display
	TYPE:
	PRE:
	POST:
*)
fun display receipt = raise Fail "not yet implemented."

(* discount (search)

*)

(* requireID (exists beer)
	TYPE:
	PRE:
	POST:
*)
fun requireID receipt = raise Fail "not yet implemented."

end
