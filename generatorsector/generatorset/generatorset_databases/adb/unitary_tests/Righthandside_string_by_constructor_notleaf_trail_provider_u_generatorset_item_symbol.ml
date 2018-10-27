open Make_test_v;;

testing "Righthandside_string_by_constructor_notleaf_trail_provider_v with
   Righthandside_string_by_constructor_notleaf_trail_provider_u_generatorset_item_symbol.ml";; 

(* toplevel 
   #use "Righthandside_string_by_constructor_notleaf_trail_provider_u_generatorset_item_symbol.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;

let nam_ent_str_dol = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_list_t.doublet_list *)
= 
  [("generatorset", "item");
   ("item", "item_for_any_only_top  item_for_formula  item_for_symbol");
   ("item_for_any_only_top", "ending heading");
   ("item_for_formula",
    "item_for_formula_by_group_topsons item_for_formula_only_top");
   ("item_for_formula_by_group_topsons",
    "builder_tag_listing_off_formula  making_for_formula  symbolizing_for_formula  typing_for_formula");
   ("item_for_formula_only_top",
    "builder_tag_listing_off_tag building_and_storing_for_formula data_tag_listing_off_formula data_tag_listing_off_tag documenting_for_formula fullnaming_for_formula iterating_one_function_for_formula iterating_two_functions_for_formula longnaming_for_formula naming_for_formula retrieving_for_formula string_offing_for_formula");
   ("item_for_symbol",
    "item_for_symbol_each_grandson_bare item_for_symbol_each_grandson_notleaf item_for_symbol_each_grandson_ofstring item_for_symbol_each_topson_bare item_for_symbol_each_topson_notleaf item_for_symbol_each_topson_ofstring item_for_symbol_only_top  item_for_symbol_by_group_topsons");
   ("item_for_symbol_by_group_topsons",
    "listing_for_symbol making_for_symbol making_for_symbol_bare making_for_symbol_notleaf making_for_symbol_ofstring naming_for_symbol naming_for_symbol_bare naming_for_symbol_notleaf naming_for_symbol_ofstring string_offing_for_symbol string_offing_for_symbol_bare string_offing_for_symbol_notleaf string_offing_for_symbol_ofstring typing_for_symbol");
   ("item_for_symbol_each_grandson_bare",
    "abbreviating_grandson_bare_for_symbol querying_grandson_bare_for_symbol");
   ("item_for_symbol_each_grandson_notleaf",
    "extracting_grandson_notleaf_for_symbol querying_grandson_notleaf_for_symbol upgrading_grandson_notleaf_for_symbol");
   ("item_for_symbol_each_grandson_ofstring",
    "abbreviating_grandson_ofstring_for_symbol querying_grandson_ofstring_for_symbol");
   ("item_for_symbol_each_topson_bare",
    "abbreviating_topson_bare_for_symbol querying_topson_bare_for_symbol");
   ("item_for_symbol_each_topson_notleaf",
    "extracting_topson_notleaf_for_symbol querying_topson_notleaf_for_symbol upgrading_topson_notleaf_for_symbol");
   ("item_for_symbol_each_topson_ofstring",
    "abbreviating_topson_ofstring_for_symbol querying_topson_ofstring_for_symbol");
   ("item_for_symbol_only_top",
    "documenting_for_symbol longnaming_for_symbol fullnaming_for_symbol")]
);;

let tra_ent_sca = Trail_v.make "entity" "triangle_scalene" tra_cat;;
let tra_ent_iso = Trail_v.make "entity" "triangle_isoceles" tra_cat;;
let tra_ent_tri = Trail_v.make "entity" "triangle" tra_cat;;

let rhs_str_tri = Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_tri;;

test_number 2 (
rhs_str_tri
(* : string *)
=
"triangle_isoceles triangle_scalene"
);;

let rhs_str_sca = Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_sca;;

test_number 3 (
rhs_str_sca
(* : string *)
=
"triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse"
);;

let rhs_str_iso = Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_iso;;

test_number 4 (
rhs_str_iso
(* : string *)
=
"triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse"
);;

let tra_ent_poi = Trail_v.make "entity" "point" tra_cat;;
test_raises_this_exc (Failure "Constructor_node_basename_not_found:Righthandside_string_by_constructor_notleaf_trail_provider_v.ml:build_n_store") Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_poi;;


