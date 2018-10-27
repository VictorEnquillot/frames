open Make_test_v;;

testing "Word_word_string_triplet_list_by_domain_trail_provider_v with
   Word_word_string_triplet_list_by_domain_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_domain_trail_provider_u_generatorset.ml";; 

*)

let tra_dos = [("domain", "generatorset")];;
let tri_wws_l = Word_word_string_triplet_list_by_domain_trail_provider_v.provide tra_dos;;

let par_l1 = List_v.sublist_of_int_of_int_of_list 0 14 tri_wws_l;;
test_number 1 (
par_l1
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("constructors", "generatorset", "item");
   ("constructors", "item",
    "item_for_any_only_top  item_for_formula  item_for_symbol");
   ("constructors", "item_for_any_only_top", "ending heading");
   ("constructors", "item_for_formula",
    "item_for_formula_by_group_topsons item_for_formula_only_top");
   ("constructors", "item_for_formula_by_group_topsons",
    "builder_tag_listing_off_formula  making_for_formula  symbolizing_for_formula  typing_for_formula");
   ("constructors", "item_for_formula_only_top",
    "builder_tag_listing_off_tag building_and_storing_for_formula data_tag_listing_off_formula data_tag_listing_off_tag documenting_for_formula fullnaming_for_formula iterating_one_function_for_formula iterating_two_functions_for_formula longnaming_for_formula naming_for_formula retrieving_for_formula string_offing_for_formula");
   ("constructors", "item_for_symbol",
    "item_for_symbol_each_grandson_bare item_for_symbol_each_grandson_notleaf item_for_symbol_each_grandson_ofstring item_for_symbol_each_topson_bare item_for_symbol_each_topson_notleaf item_for_symbol_each_topson_ofstring item_for_symbol_only_top  item_for_symbol_by_group_topsons");
   ("constructors", "item_for_symbol_by_group_topsons",
    "listing_for_symbol making_for_symbol making_for_symbol_bare making_for_symbol_notleaf making_for_symbol_ofstring naming_for_symbol naming_for_symbol_bare naming_for_symbol_notleaf naming_for_symbol_ofstring string_offing_for_symbol string_offing_for_symbol_bare string_offing_for_symbol_notleaf string_offing_for_symbol_ofstring typing_for_symbol");
   ("constructors", "item_for_symbol_each_grandson_bare",
    "abbreviating_grandson_bare_for_symbol querying_grandson_bare_for_symbol");
   ("constructors", "item_for_symbol_each_grandson_notleaf",
    "extracting_grandson_notleaf_for_symbol querying_grandson_notleaf_for_symbol upgrading_grandson_notleaf_for_symbol");
   ("constructors", "item_for_symbol_each_grandson_ofstring",
    "abbreviating_grandson_ofstring_for_symbol querying_grandson_ofstring_for_symbol");
   ("constructors", "item_for_symbol_each_topson_bare",
    "abbreviating_topson_bare_for_symbol querying_topson_bare_for_symbol");
   ("constructors", "item_for_symbol_each_topson_notleaf",
    "extracting_topson_notleaf_for_symbol querying_topson_notleaf_for_symbol upgrading_topson_notleaf_for_symbol");
   ("constructors", "item_for_symbol_each_topson_ofstring",
    "abbreviating_topson_ofstring_for_symbol querying_topson_ofstring_for_symbol");
   ("constructors", "item_for_symbol_only_top",
    "documenting_for_symbol longnaming_for_symbol fullnaming_for_symbol")]
);;

let par_l2 = List_v.sublist_of_int_of_int_of_list 15 50 tri_wws_l;;

test_number 2 (
par_l2
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("builders", "abbreviating_grandson_bare_for_symbol", "list string");
   ("builders", "abbreviating_grandson_ofstring_for_symbol", "list string");
   ("builders", "abbreviating_topson_bare_for_symbol", "list string");
   ("builders", "abbreviating_topson_ofstring_for_symbol", "list string");
   ("builders", "builder_tag_listing_off_formula", "list string");
   ("builders", "builder_tag_listing_off_tag", "list string");
   ("builders", "building_and_storing_for_formula", "list string");
   ("builders", "data_tag_listing_off_formula", "list string");
   ("builders", "data_tag_listing_off_tag", "list string");
   ("builders", "documenting_for_formula", "list string");
   ("builders", "documenting_for_symbol", "list string");
   ("builders", "ending", "list string");
   ("builders", "extracting_grandson_notleaf_for_symbol", "list string");
   ("builders", "extracting_topson_notleaf_for_symbol", "list string");
   ("builders", "fullnaming_for_formula", "list string");
   ("builders", "fullnaming_for_symbol", "list string");
   ("builders", "heading", "list string");
   ("builders", "iterating_one_function_for_formula", "list string");
   ("builders", "iterating_two_functions_for_formula", "list string");
   ("builders", "listing_for_symbol", "list string");
   ("builders", "longnaming_for_formula", "list string");
   ("builders", "longnaming_for_symbol", "list string");
   ("builders", "making_for_formula", "list string");
   ("builders", "making_for_symbol", "list string");
   ("builders", "making_for_symbol_bare", "list string");
   ("builders", "making_for_symbol_notleaf", "list string");
   ("builders", "making_for_symbol_ofstring", "list string");
   ("builders", "naming_for_formula", "list string");
   ("builders", "naming_for_symbol", "list string");
   ("builders", "naming_for_symbol_bare", "list string");
   ("builders", "naming_for_symbol_notleaf", "list string");
   ("builders", "naming_for_symbol_ofstring", "list string");
   ("builders", "querying_grandson_bare_for_symbol", "list string");
   ("builders", "querying_grandson_notleaf_for_symbol", "list string");
   ("builders", "querying_grandson_ofstring_for_symbol", "list string");
   ("builders", "querying_topson_bare_for_symbol", "list string")]
);;
