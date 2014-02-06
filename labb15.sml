(* abstype receipt
   REPRESENTATION CONVETION: A binary search tree represented by
      Receipt(itemName, itemAmount, L, R) where
         itemName is the name of the specific item,
         itemAmount is the total number of the specific item,
         L is the left binary search tree receipt,
         R is the right binary search tree receipt.
   REPRESENTATION INVARIANT: for a binary search tree
      with (itemName,itemAmount) in the root, left subtree L,
      and right subtree R:
      - every element of L has a itemName smaller
      - every element of R has a itemName larger
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
