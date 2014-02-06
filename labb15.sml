(*
	REPRESENTATION CONVENTION: a list of product prices, where each element
	                           consists of a product name and the price of that
	                           product.
	REPRESENTATION INVARIANT: the price should be represented in the smallest
	                          unit of the currency, e.g. cent or öre.
*)
abstype prices = Prices of (string * int) list
with
	(* empty is an empty product price list *)
	val empty = []

	(* add l, item, price
		TYPE: prices * string * int -> prices
		PRE: true
		POST: add the price information of the product with the name item and the
		      price price to l.
	*)
	fun add(l, item, price) = raise Fail "not yet implemented."

	(* search l, item
		TYPE: prices * string -> int
		PRE: true
		POST: add the price information of the product with the name item and the
		      price price to l.
		SIDE-EFFECT: raises an exception if the product name item is not present
		             in l.
	*)
	fun search(l, item) = raise Fail "not yet implemented."
end;

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
fun new () = Void;

(* add (receipt, item)
	TYPE: receipt * string -> receipt
	PRE: true
	POST: a receipt with one more occurence of item.
*)
fun add (Void, item) = Receipt(item, 1, Void, Void)
  | add (Receipt(name, count, l, r), item) =
	if name = item then
		Receipt(name, count+1, l, r)
	else if name < item then
		Receipt(name, count, add(l, item), r)
	else
		Receipt(name, count, l, add(r, item));

(* del (receipt, item)
   TYPE: receipt * string -> receipt
   PRE:  true
   POST: returns receipt without one occurence of item.
*)

(* sum (receipt, prices)
	TYPE: receipt * prices -> int
	PRE: true
	POST: The total price of the receipt in the smallest unit of the currency,
	      e.g. cent or öre.
*)
fun sum (receipt, prices) = raise Fail "not yet implemented."

(* addTax (takeAway, reciept)
   TYPE: bool * receipt -> receipt
   PRE:  true
   POST: receipt with an item Tax added or updated, the amount depending on
         the bool takeAway.
*)

(* display (receipt, prices)
	TYPE: receipt * prices -> unit
	PRE: true
	POST: none
	SIDE-EFFECT: prints the receipt to screen, using one entry for each item and
	             also displays the total price of the receipt.
*)
fun display receipt = raise Fail "not yet implemented."

(* requireID receipt
	TYPE: receipt -> bool
	PRE: true
	POST: true if there is any item on the receipt that requires ID verification,
	      such as beer or tabaco.
*)
fun requireID receipt = raise Fail "not yet implemented."

end;
