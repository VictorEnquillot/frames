open Make_test_v;;

testing "Entity_basename_lefthandside_list_by_category_trail_provider_v with
   Entity_basename_lefthandside_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

(* toplevel 
   #use "Entity_basename_lefthandside_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

*)

let tra_dom = [("domain", "natural")];;
let tra_cat = Trail_v.make "category" "symbol" tra_dom;;

let ebl_l = Entity_basename_lefthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
ebl_l
(* : string list *)
=
  ["digit"; "expression"; "expression_atomic"; "natural"; "operation";
   "token"]
);;

