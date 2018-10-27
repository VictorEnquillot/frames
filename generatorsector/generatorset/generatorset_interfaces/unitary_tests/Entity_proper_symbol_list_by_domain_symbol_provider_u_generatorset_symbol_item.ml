open Make_test_v;;

testing "Entity_proper_symbol_list_by_domain_symbol_provider_v with
   Entity_proper_symbol_list_by_domain_symbol_provider_u_generatorset_symbol_item.ml";;

(* toplevel 
   #use "Entity_proper_symbol_list_by_domain_symbol_provider_u_generatorset_symbol_item.ml";; 

*)

let nam_dos = "generatorset";;
let nam_ent = "item";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

test_number 1 (
 sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
   [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "abbreviating_grandson_leaf_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "abbreviating_grandson_leaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "abbreviating_topson_leaf_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "abbreviating_topson_leaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "builder_tag_listing"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "building_n_storing"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "documenting"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "ending"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "extracting_grandson_notleaf_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "extracting_grandson_notleaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "extracting_topson_notleaf_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "extracting_topson_notleaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "fullnaming_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "fullnaming_for_symbol"));
   Entity_symbol_t.Entity_proper "generatorset";
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "heading"));
   Entity_symbol_t.Entity_proper "item";
   Entity_symbol_t.Entity_proper "item_all_topsons";
   Entity_symbol_t.Entity_proper "item_all_topsons_for_formula";
   Entity_symbol_t.Entity_proper "item_all_topsons_for_symbol";
   Entity_symbol_t.Entity_proper "item_each_grandson_leaf";
   Entity_symbol_t.Entity_proper "item_each_grandson_leaf_for_formula";
   Entity_symbol_t.Entity_proper "item_each_grandson_leaf_for_symbol";
   Entity_symbol_t.Entity_proper "item_each_grandson_notleaf";
   Entity_symbol_t.Entity_proper "item_each_grandson_notleaf_for_formula";
   Entity_symbol_t.Entity_proper "item_each_grandson_notleaf_for_symbol";
   Entity_symbol_t.Entity_proper "item_each_topson_leaf";
   Entity_symbol_t.Entity_proper "item_each_topson_leaf_for_formula";
   Entity_symbol_t.Entity_proper "item_each_topson_leaf_for_symbol";
   Entity_symbol_t.Entity_proper "item_each_topson_notleaf";
   Entity_symbol_t.Entity_proper "item_each_topson_notleaf_for_formula";
   Entity_symbol_t.Entity_proper "item_each_topson_notleaf_for_symbol";
   Entity_symbol_t.Entity_proper "item_gather_both_topsons";
   Entity_symbol_t.Entity_proper "item_gather_both_topsons_for_symbol";
   Entity_symbol_t.Entity_proper "item_only_top";
   Entity_symbol_t.Entity_proper "item_only_top_for_any";
   Entity_symbol_t.Entity_proper "item_only_top_for_formula";
   Entity_symbol_t.Entity_proper "item_only_top_for_symbol";
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "iter2ing_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "itering_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "listing_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "longnaming_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "longnaming_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "making_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "making_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "map2ing_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "maping_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "naming_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "naming_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "querying_grandson_leaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "querying_grandson_notleaf_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "querying_grandson_notleaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "querying_topson_leaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "querying_topson_notleaf_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "querying_topson_notleaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "retrieving_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "string_offing_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "string_offing_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "symbol_of_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "typing_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "typing_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "upgrading_grandson_notleaf_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "upgrading_grandson_notleaf_for_symbol"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "upgrading_topson_notleaf_for_formula"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare
        "upgrading_topson_notleaf_for_symbol"))]
);;

let enp_l = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

test_number 2 (
enp_l
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper "generatorset";
   Entity_symbol_t.Entity_proper "item";
   Entity_symbol_t.Entity_proper "item_all_topsons";
   Entity_symbol_t.Entity_proper "item_all_topsons_for_formula";
   Entity_symbol_t.Entity_proper "item_all_topsons_for_symbol";
   Entity_symbol_t.Entity_proper "item_each_grandson_leaf";
   Entity_symbol_t.Entity_proper "item_each_grandson_leaf_for_formula";
   Entity_symbol_t.Entity_proper "item_each_grandson_leaf_for_symbol";
   Entity_symbol_t.Entity_proper "item_each_grandson_notleaf";
   Entity_symbol_t.Entity_proper "item_each_grandson_notleaf_for_formula";
   Entity_symbol_t.Entity_proper "item_each_grandson_notleaf_for_symbol";
   Entity_symbol_t.Entity_proper "item_each_topson_leaf";
   Entity_symbol_t.Entity_proper "item_each_topson_leaf_for_formula";
   Entity_symbol_t.Entity_proper "item_each_topson_leaf_for_symbol";
   Entity_symbol_t.Entity_proper "item_each_topson_notleaf";
   Entity_symbol_t.Entity_proper "item_each_topson_notleaf_for_formula";
   Entity_symbol_t.Entity_proper "item_each_topson_notleaf_for_symbol";
   Entity_symbol_t.Entity_proper "item_gather_both_topsons";
   Entity_symbol_t.Entity_proper "item_gather_both_topsons_for_symbol";
   Entity_symbol_t.Entity_proper "item_only_top";
   Entity_symbol_t.Entity_proper "item_only_top_for_any";
   Entity_symbol_t.Entity_proper "item_only_top_for_formula";
   Entity_symbol_t.Entity_proper "item_only_top_for_symbol"]
);;

