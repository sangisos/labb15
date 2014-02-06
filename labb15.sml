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

(* addTax

*)

(* print

*)

(* discount (search)

*)

(* requireID (exists beer)

*)
end
