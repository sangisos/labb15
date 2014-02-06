(* DATATYPE


*)
abstype receipt = Void | Receipt of string * int * int * receipt * receipt
with
(* new

*)

(* add (ev search)

*)
fun add (receipt, item) = raise Fail "not yet implemented."

(* del (search)

*)

(* sum

*)
fun sum receipt = raise Fail "not yet implemented."

(* addTax

*)

(* display

*)
fun display receipt = raise Fail "not yet implemented."

(* discount (search)

*)

(* requireID (exists beer)

*)
fun requireID receipt = raise Fail "not yet implemented."

end
