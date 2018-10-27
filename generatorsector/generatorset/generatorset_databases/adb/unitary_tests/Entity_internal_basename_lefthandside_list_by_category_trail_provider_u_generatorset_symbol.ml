open Make_test_v;;

testing "Entity_internal_basename_lefthandside_list_by_category_trail_provider_v with
   Entity_internal_basename_lefthandside_list_by_category_trail_provider_u_generatorset_symbol.ml";; 

(* toplevel 
   #use "Entity_internal_basename_lefthandside_list_by_category_trail_provider_u_generatorset_symbol.ml";; 

*)

let tra_dos = [("domain", "generatorset")];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;

let ebl_l = Entity_internal_basename_lefthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
ebl_l
(* : string list *)
  =
["generatorset";
 "item";
 "item_for_any_only_top";
 "item_for_formula";
 "item_for_formula_by_group_topsons";
 "item_for_formula_only_top";
 "item_for_symbol";
 "item_for_symbol_by_group_topsons";
 "item_for_symbol_each_grandson_bare";
 "item_for_symbol_each_grandson_notleaf";
 "item_for_symbol_each_grandson_ofstring";
 "item_for_symbol_each_topson_bare";
 "item_for_symbol_each_topson_notleaf";
 "item_for_symbol_each_topson_ofstring";
 "item_for_symbol_only_top"]
);;

