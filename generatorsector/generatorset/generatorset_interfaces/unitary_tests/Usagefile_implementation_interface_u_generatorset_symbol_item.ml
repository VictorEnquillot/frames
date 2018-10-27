open Make_test_v;;

testing "Usagefile_implementation_interface_v with
   Usagefile_implementation_interface_u_generatorset_symbol_item.ml";;

(* toplevel 
   #use "Usagefile_implementation_interface_u_generatorset_symbol_item.ml";;

*)

let nam_dos = "generatorset";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat_l = Domainset_interface_v.make sym_dos;;

test_number 1 (
sym_cat_l 
(* : Category_symbol_t.category_symbol list *)
=
  [Category_symbol_t.Any;
   Category_symbol_t.Formula;
   Category_symbol_t.Mark;
   Category_symbol_t.Path;
   Category_symbol_t.Property;
   Category_symbol_t.Provider;
   Category_symbol_t.Symbol;
   Category_symbol_t.Tag;
   Category_symbol_t.Value;
   Category_symbol_t.Empty]
);;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let dou_cat = (sym_cat, sym_dos) ;;

let sym_ent_l = Category_interface_v.make_of_tuple dou_cat;;

test_number 2 (
 sym_ent_l 
(* : Entity_propert.entity_proper_symbol list *)
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

let nam_ent = "entity_proper";;
let str_ent = "item";;
let sym_ent = Entity_symbol_v.make nam_ent str_ent;;
let tri_ent = (sym_ent, sym_cat, sym_dos) ;;

let sym_cof_l = Entity_interface_v.make_of_tuple tri_ent;;

test_number 3 (
sym_cof_l 
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
[Contentfile_symbol_t.Type_alone; 
 Contentfile_symbol_t.Value_alone]
);;

let nam_cof = "type_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 4 (
sym_usf_l 
(* : Usagefile_symbol_t.usagefile_symbol list *) 
=
[Usagefile_symbol_t.Usagefile_implementation_symbol
   Usagefile_implementation_symbol_t.Implementation_for_symbol]
);;

let nam_cof = "value_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 5 (
sym_usf_l 
(* : Usagefile_implementation_symbol_t.usagefile_implementation_symbol list *) 
=
[Usagefile_symbol_t.Usagefile_implementation_symbol
   Usagefile_implementation_symbol_t.Implementation_for_symbol;
 Usagefile_symbol_t.Usagefile_interface_symbol
   Usagefile_interface_symbol_t.Interface_for_symbol]
);;

let nam_uim = "implementation_for_symbol";;
let sym_uim = Usagefile_implementation_symbol_v.make nam_uim;;
let sym_usf = Usagefile_symbol_v.make nam_uim;;
let qui_uim = (sym_uim, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_ite_l = Usagefile_implementation_interface_v.make_of_tuple qui_uim;;

test_number 6 (
sym_ite_l 
(* :  Item_symbol_t.item_symbol list *)
=
  [Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_any_symbol
      Item_only_top_for_any_symbol_t.Heading);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_any_symbol
      Item_only_top_for_any_symbol_t.Documenting);
   Item_symbol_t.Item_all_topsons_symbol
    (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
      Item_all_topsons_for_symbol_symbol_t.Naming_for_symbol);
   Item_symbol_t.Item_all_topsons_symbol
    (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
      Item_all_topsons_for_symbol_symbol_t.String_offing_for_symbol);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_symbol_symbol
      Item_only_top_for_symbol_symbol_t.Longnaming_for_symbol);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_symbol_symbol
      Item_only_top_for_symbol_symbol_t.Fullnaming_for_symbol);
   Item_symbol_t.Item_each_topson_notleaf_symbol
    (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
      Item_each_topson_notleaf_for_symbol_symbol_t.Extracting_topson_for_symbol);
   Item_symbol_t.Item_each_grandson_notleaf_symbol
    (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
      Item_each_grandson_notleaf_for_symbol_symbol_t.Extracting_grandson_for_symbol);
   Item_symbol_t.Item_each_topson_notleaf_symbol
    (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
      Item_each_topson_notleaf_for_symbol_symbol_t.Querying_topson_for_symbol);
   Item_symbol_t.Item_each_grandson_notleaf_symbol
    (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
      Item_each_grandson_notleaf_for_symbol_symbol_t.Querying_grandson_for_symbol);
   Item_symbol_t.Item_each_topson_notleaf_symbol
    (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
      Item_each_topson_notleaf_for_symbol_symbol_t.Upgrading_topson_for_symbol);
   Item_symbol_t.Item_each_grandson_notleaf_symbol
    (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
      Item_each_grandson_notleaf_for_symbol_symbol_t.Upgrading_grandson_for_symbol);
   Item_symbol_t.Item_each_topson_leaf_symbol
    (Item_each_topson_leaf_symbol_t.Item_each_topson_leaf_for_symbol_symbol
      Item_each_topson_leaf_for_symbol_symbol_t.Abbreviating_topson_for_symbol);
   Item_symbol_t.Item_each_grandson_leaf_symbol
    (Item_each_grandson_leaf_symbol_t.Item_each_grandson_leaf_for_symbol_symbol
      Item_each_grandson_leaf_for_symbol_symbol_t.Abbreviating_grandson_for_symbol);
   Item_symbol_t.Item_all_topsons_symbol
    (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
      Item_all_topsons_for_symbol_symbol_t.Making_for_symbol);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_any_symbol
      Item_only_top_for_any_symbol_t.Ending)]
);;
