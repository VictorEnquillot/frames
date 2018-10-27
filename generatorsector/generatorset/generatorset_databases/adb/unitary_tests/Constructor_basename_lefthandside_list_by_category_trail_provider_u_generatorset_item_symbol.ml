open Make_test_v;;

testing "Constructor_basename_lefthandside_list_by_category_trail_provider_v
   Constructor_basename_lefthandside_list_by_category_trail_provider_u_generatorset_item_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_lefthandside_list_by_category_trail_provider_u_generatorset_item_symbol.ml";;

*)

let nam_dos = "generatorset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol = Constructor_basename_lefthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_t.doublet list *)
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

