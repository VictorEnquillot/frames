open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_generatorset_item_symbol.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_generatorset_item_symbol.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "generatorset")];;

let wor_l = Database_record_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
wor_l
(* : string list *)
=
  ["constructors generatorset                               = item";
   "constructors item                                      = item_for_any_only_top  item_for_formula  item_for_symbol ";
   "constructors item_for_any_only_top                     = ending heading";
   "constructors item_for_formula                          = item_for_formula_by_group_topsons item_for_formula_only_top";
   "constructors item_for_formula_by_group_topsons         = builder_tag_listing_off_formula  making_for_formula  symbolizing_for_formula  typing_for_formula";
   "constructors item_for_formula_only_top                  = builder_tag_listing_off_tag building_and_storing_for_formula data_tag_listing_off_formula data_tag_listing_off_tag documenting_for_formula fullnaming_for_formula iterating_one_function_for_formula iterating_two_functions_for_formula longnaming_for_formula naming_for_formula retrieving_for_formula string_offing_for_formula";
   "constructors item_for_symbol                           = item_for_symbol_each_grandson_bare item_for_symbol_each_grandson_notleaf item_for_symbol_each_grandson_ofstring item_for_symbol_each_topson_bare item_for_symbol_each_topson_notleaf item_for_symbol_each_topson_ofstring item_for_symbol_only_top  item_for_symbol_by_group_topsons";
   "constructors item_for_symbol_by_group_topsons           = listing_for_symbol making_for_symbol making_for_symbol_bare making_for_symbol_notleaf making_for_symbol_ofstring naming_for_symbol naming_for_symbol_bare naming_for_symbol_notleaf naming_for_symbol_ofstring string_offing_for_symbol string_offing_for_symbol_bare string_offing_for_symbol_notleaf string_offing_for_symbol_ofstring typing_for_symbol";
   "constructors item_for_symbol_each_grandson_bare        = abbreviating_grandson_bare_for_symbol querying_grandson_bare_for_symbol";
   "constructors item_for_symbol_each_grandson_notleaf     = extracting_grandson_notleaf_for_symbol querying_grandson_notleaf_for_symbol upgrading_grandson_notleaf_for_symbol";
   "constructors item_for_symbol_each_grandson_ofstring    = abbreviating_grandson_ofstring_for_symbol querying_grandson_ofstring_for_symbol";
   "constructors item_for_symbol_each_topson_bare          = abbreviating_topson_bare_for_symbol querying_topson_bare_for_symbol";
   "constructors item_for_symbol_each_topson_notleaf       = extracting_topson_notleaf_for_symbol querying_topson_notleaf_for_symbol upgrading_topson_notleaf_for_symbol";
   "constructors item_for_symbol_each_topson_ofstring      = abbreviating_topson_ofstring_for_symbol querying_topson_ofstring_for_symbol";
   "constructors item_for_symbol_only_top                  = documenting_for_symbol longnaming_for_symbol fullnaming_for_symbol "]
);;

