open Make_test_v;;

testing "Item_each_grandson_leaf_symbol_u with
   Item_each_grandson_leaf_symbol_u_any.ml";;

(* toplevel
   #use "Item_each_grandson_leaf_symbol_u_any.ml";;

*)

let nam_ite = "abbreviating_topson_bare_for_symbol";;
let sym_itb = Item_for_symbol_each_topson_bare_symbol_v.make nam_ite "";;

test_number 1 (
sym_itb 
(* : Item_each_grandson_leaf_symbol_t.item_each_grandson_leaf_symbol *)
=
Item_for_symbol_each_topson_bare_symbol_t.Abbreviating_topson_bare_for_symbol
);;

let nam_itb = Item_for_symbol_each_topson_bare_symbol_v.name sym_itb;;

test_number 2 (
nam_itb 
= 
nam_ite
);;

let sym_ite = Item_symbol_v.item_symbol_of_item_for_symbol_each_topson_bare_symbol sym_itb;;

test_number 3 (
 sym_ite 
(* : Item_symbol_t.item_symbol *)
  =
Item_symbol_t.Item_for_symbol_symbol
  (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol
     Item_for_symbol_each_topson_bare_symbol_t.Abbreviating_topson_bare_for_symbol)
);;
