open Make_test_v;;

testing "Constructor_basename_list_by_constructor_notleaf_trail_provider_v with
   Constructor_basename_list_by_constructor_notleaf_trail_provider_u_generatorset_item_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_constructor_notleaf_trail_provider_u_generatorset_item_symbol.ml";; 

*)

let nam_dos = "generatorset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent = "generatorset";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_notleaf_trail_provider_v.provide tra_ent;;

test_number 1 (
nam_ent_l
(* : string list *)
=
["item"]
);;

let nam_ent = "item";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_notleaf_trail_provider_v.provide tra_ent;;

test_number 2 (
nam_ent_l
(* : string list *)
=
 ["item_for_any_only_top"; "item_for_formula"; "item_for_symbol"]
);;

let nam_ent = "item_for_any_only_top";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_notleaf_trail_provider_v.provide tra_ent;;

test_number 3 (
nam_ent_l
(* : string list *)
=
["ending"; "heading"]
);;

let nam_ent = "item_for_formula";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_notleaf_trail_provider_v.provide tra_ent;;

test_number 4 (
nam_ent_l
(* : string list *)
=
 ["item_for_formula_by_group_topsons"; "item_for_formula_only_top"]
);;

let nam_ent = "item_for_symbol";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_notleaf_trail_provider_v.provide tra_ent;;

test_number 5 (
nam_ent_l
(* : string list *)
=
  ["item_for_symbol_each_grandson_bare";
   "item_for_symbol_each_grandson_notleaf";
   "item_for_symbol_each_grandson_ofstring";
   "item_for_symbol_each_topson_bare"; 
   "item_for_symbol_each_topson_notleaf";
   "item_for_symbol_each_topson_ofstring"; 
   "item_for_symbol_only_top";
   "item_for_symbol_by_group_topsons"]
);;

