open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v with
   Constructor_basename_tree_by_domain_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_generatorset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;

let nam_con_t = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_con_t
(* : string Tree_t.tree *)
  =
  Tree_t.Inner ("generatorset",
   [Tree_t.Inner ("item",
     [Tree_t.Inner ("item_for_any_only_top",
       [Tree_t.Leaf "ending"; Tree_t.Leaf "heading"]);
      Tree_t.Inner ("item_for_formula",
       [Tree_t.Inner ("item_for_formula_by_group_topsons",
         [Tree_t.Leaf "builder_tag_listing_off_formula";
          Tree_t.Leaf "making_for_formula";
          Tree_t.Leaf "symbolizing_for_formula";
          Tree_t.Leaf "typing_for_formula"]);
        Tree_t.Inner ("item_for_formula_only_top",
         [Tree_t.Leaf "builder_tag_listing_off_tag";
          Tree_t.Leaf "building_and_storing_for_formula";
          Tree_t.Leaf "data_tag_listing_off_formula";
          Tree_t.Leaf "data_tag_listing_off_tag";
          Tree_t.Leaf "documenting_for_formula";
          Tree_t.Leaf "fullnaming_for_formula";
          Tree_t.Leaf "iterating_one_function_for_formula";
          Tree_t.Leaf "iterating_two_functions_for_formula";
          Tree_t.Leaf "longnaming_for_formula";
          Tree_t.Leaf "naming_for_formula";
          Tree_t.Leaf "retrieving_for_formula";
          Tree_t.Leaf "string_offing_for_formula"])]);
      Tree_t.Inner ("item_for_symbol",
       [Tree_t.Inner ("item_for_symbol_each_grandson_bare",
         [Tree_t.Leaf "abbreviating_grandson_bare_for_symbol";
          Tree_t.Leaf "querying_grandson_bare_for_symbol"]);
        Tree_t.Inner ("item_for_symbol_each_grandson_notleaf",
         [Tree_t.Leaf "extracting_grandson_notleaf_for_symbol";
          Tree_t.Leaf "querying_grandson_notleaf_for_symbol";
          Tree_t.Leaf "upgrading_grandson_notleaf_for_symbol"]);
        Tree_t.Inner ("item_for_symbol_each_grandson_ofstring",
         [Tree_t.Leaf "abbreviating_grandson_ofstring_for_symbol";
          Tree_t.Leaf "querying_grandson_ofstring_for_symbol"]);
        Tree_t.Inner ("item_for_symbol_each_topson_bare",
         [Tree_t.Leaf "abbreviating_topson_bare_for_symbol";
          Tree_t.Leaf "querying_topson_bare_for_symbol"]);
        Tree_t.Inner ("item_for_symbol_each_topson_notleaf",
         [Tree_t.Leaf "extracting_topson_notleaf_for_symbol";
          Tree_t.Leaf "querying_topson_notleaf_for_symbol";
          Tree_t.Leaf "upgrading_topson_notleaf_for_symbol"]);
        Tree_t.Inner ("item_for_symbol_each_topson_ofstring",
         [Tree_t.Leaf "abbreviating_topson_ofstring_for_symbol";
          Tree_t.Leaf "querying_topson_ofstring_for_symbol"]);
        Tree_t.Inner ("item_for_symbol_only_top",
         [Tree_t.Leaf "documenting_for_symbol";
          Tree_t.Leaf "longnaming_for_symbol";
          Tree_t.Leaf "fullnaming_for_symbol"]);
        Tree_t.Inner ("item_for_symbol_by_group_topsons",
         [Tree_t.Leaf "listing_for_symbol"; Tree_t.Leaf "making_for_symbol";
          Tree_t.Leaf "making_for_symbol_bare";
          Tree_t.Leaf "making_for_symbol_notleaf";
          Tree_t.Leaf "making_for_symbol_ofstring";
          Tree_t.Leaf "naming_for_symbol";
          Tree_t.Leaf "naming_for_symbol_bare";
          Tree_t.Leaf "naming_for_symbol_notleaf";
          Tree_t.Leaf "naming_for_symbol_ofstring";
          Tree_t.Leaf "string_offing_for_symbol";
          Tree_t.Leaf "string_offing_for_symbol_bare";
          Tree_t.Leaf "string_offing_for_symbol_notleaf";
          Tree_t.Leaf "string_offing_for_symbol_ofstring";
          Tree_t.Leaf "typing_for_symbol"])])])])
);;

let son_tl = Tree_v.topson_tree_list_off_tree nam_con_t;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

let son_l = Tree_v.topson_node_list_off_tree nam_con_t;;

test_number 2 (
son_l
(* : string list *)
  =
  ["item"]
);;

let lea_l = Tree_v.leaf_node_list_off_tree nam_con_t;;

test_number 3 (
lea_l
=
  ["ending";
   "heading";
   "builder_tag_listing_off_formula";
   "making_for_formula";
   "symbolizing_for_formula";
   "typing_for_formula";
   "builder_tag_listing_off_tag";
   "building_and_storing_for_formula";
   "data_tag_listing_off_formula";
   "data_tag_listing_off_tag";
   "documenting_for_formula";
   "fullnaming_for_formula";
   "iterating_one_function_for_formula";
   "iterating_two_functions_for_formula";
   "longnaming_for_formula";
   "naming_for_formula";
   "retrieving_for_formula";
   "string_offing_for_formula";
   "abbreviating_grandson_bare_for_symbol";
   "querying_grandson_bare_for_symbol";
   "extracting_grandson_notleaf_for_symbol";
   "querying_grandson_notleaf_for_symbol";
   "upgrading_grandson_notleaf_for_symbol";
   "abbreviating_grandson_ofstring_for_symbol";
   "querying_grandson_ofstring_for_symbol";
   "abbreviating_topson_bare_for_symbol";
   "querying_topson_bare_for_symbol";
   "extracting_topson_notleaf_for_symbol";
   "querying_topson_notleaf_for_symbol";
   "upgrading_topson_notleaf_for_symbol";
   "abbreviating_topson_ofstring_for_symbol";
   "querying_topson_ofstring_for_symbol";
   "documenting_for_symbol";
   "longnaming_for_symbol";
   "fullnaming_for_symbol";
   "listing_for_symbol";
   "making_for_symbol";
   "making_for_symbol_bare";
   "making_for_symbol_notleaf";
   "making_for_symbol_ofstring";
   "naming_for_symbol";
   "naming_for_symbol_bare";
   "naming_for_symbol_notleaf";
   "naming_for_symbol_ofstring";
   "string_offing_for_symbol";
   "string_offing_for_symbol_bare";
   "string_offing_for_symbol_notleaf";
   "string_offing_for_symbol_ofstring";
   "typing_for_symbol"]
);;
