(* DATATYPE


*)
abstype receipt = Void | Receipt of string * int * int * receipt * receipt
with
(* new
   TYPE: unit -> reciept
   PRE:  true
   POST: An empty receipt.
*)

(* add (ev search)

*)
fun add (receipt, item) = raise Fail "not yet implemented."

(* del (receipt, item)
   TYPE: receipt * string -> receipt
   PRE:  true
   POST: returns reciept without one occurence of item.
*)

(* sum

*)
fun sum receipt = raise Fail "not yet implemented."

(* addTax (takeAway, reciept)
   TYPE: bool * receipt -> receipt
   PRE:  true
   POST: receipt with an item Tax added or updated, the amount depending on
         the bool takeAway.
*)

(* display

*)
fun display receipt = raise Fail "not yet implemented."

(* requireID (exists beer)

*)
fun requireID receipt = raise Fail "not yet implemented."

end
