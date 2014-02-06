(* DATATYPE


*)
abstype receipt = Void | Receipt of string * int * receipt * receipt
with
(* new
   TYPE: unit -> receipt
   PRE:  true
   POST: An empty receipt.
*)

(* add (receipt, item)
	TYPE: receipt * string -> receipt
	PRE:
	POST:
*)
fun add (receipt, item) = raise Fail "not yet implemented."

(* del (receipt, item)
   TYPE: receipt * string -> receipt
   PRE:  true
   POST: returns receipt without one occurence of item.
*)

(* sum (receipt, prices)
	TYPE:
	PRE:
	POST:
*)
fun sum (receipt, prices) = raise Fail "not yet implemented."

(* addTax (takeAway, reciept)
   TYPE: bool * receipt -> receipt
   PRE:  true
   POST: receipt with an item Tax added or updated, the amount depending on
         the bool takeAway.
*)

(* display (receipt, prices)
	TYPE:
	PRE:
	POST:
*)
fun display receipt = raise Fail "not yet implemented."

(* requireID (exists beer)
	TYPE:
	PRE:
	POST:
*)
fun requireID receipt = raise Fail "not yet implemented."

end
