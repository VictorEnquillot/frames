open Make_test_v;;

testing "Item_symbol_list_by_usagefile_quitup_provider_v with
   Item_symbol_list_by_usagefile_quitup_provider_u_figure_formula_coordinate.ml";;

(* toplevel 
   #use "Item_symbol_list_by_usagefile_quitup_provider_u_figure_formula_coordinate.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_enp = "coordinate"
let nam_cof = "value_alone";;
let nam_usf = "implementation_for_formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_enp_l = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;
let sym_enp = List.find (fun e -> Entity_proper_symbol_v.string_off e = nam_enp) sym_enp_l;;
let sym_ent = Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp;;

test_number 1 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
=
  Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate")
);;

let sym_cof = Contentfile_symbol_v.make nam_cof;;

test_number 2 (
sym_cof
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag *)
=
 Contentfile_symbol_t.Value_alone
);;

let qua_cof = (sym_cof, sym_ent, sym_cat, sym_dos);;
let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;
let sym_usf = List.find (fun e -> Usagefile_symbol_v.name e = nam_usf) sym_usf_l;;

test_number 3 (
sym_usf
(* : Usagefile_symbol_t.usagefile_symbol *)
=
Usagefile_symbol_t.Usagefile_for_formula_symbol
  Usagefile_for_formula_symbol_t.Implementation_for_formula
);;

let sym_uim = Usagefile_symbol_v.usagefile_for_formula_symbol_off_usagefile_symbol sym_usf;;
let qui_uim = (sym_uim, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 4 (
qui_uim 
(* : Usagefile_for_formula_symbol_t.usagefile_for_formula_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
 =
  (Usagefile_for_formula_symbol_t.Implementation_for_formula,  
   Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
   Category_symbol_t.Formula, Domain_symbol_t.Figure)
);;

(* Coordinate : Node of CT, Stem of BT *)

let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent;;
let tri_enp = (sym_enp, sym_cat, sym_dos);;

let is_ct_stem = Usagefile_for_formula_interface_v.is_constructor_stem_of_entity_proper_tritup tri_enp;;
let is_bt_stem = Usagefile_for_formula_interface_v.is_builder_stem_of_entity_proper_tritup tri_enp;;
let has_no_bpt = Usagefile_for_formula_interface_v.has_no_builder_proper_topson_symbol_of_entity_proper_tritup tri_enp;;

test_number 5 (
not is_ct_stem && is_bt_stem && has_no_bpt
);;

let sym_it3 = List.nth Usagefile_for_formula_interface_v.all_item_symbol_list 2;;(* building_and_storing_basic_sons *)
let sym_it4 = List.nth Usagefile_for_formula_interface_v.all_item_symbol_list 3;;(* building_and_storing_proper_sons *)
let sym_it7 = List.nth Usagefile_for_formula_interface_v.all_item_symbol_list 6;; (* builder_tag_listing_off_formula *)
let sym_it8 = List.nth Usagefile_for_formula_interface_v.all_item_symbol_list 7;; (* builder_tag_listing_off_tag *)

let no_it3_it4_l = List_v.exclusion_off_list_of_list Usagefile_for_formula_interface_v.all_item_symbol_list [sym_it3; sym_it4] ;;
let lis = List_v.exclusion_off_list_of_list no_it3_it4_l [sym_it7; sym_it8];;
let sym_ite_l = Usagefile_for_formula_interface_v.make_of_tuple qui_uim;;

test_number 6 (
lis
=
sym_ite_l
);;

test_number 7 (
sym_ite_l
(* : Item_symbol_list_by_usagefile_quitup_provider_v.Item_symbol_t.item_symbol list *)
=
  [Item_symbol_t.Item_for_any_only_top_symbol
    Item_for_any_only_top_symbol_t.Heading;
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Symbolizing_for_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Making_for_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Retrieving_for_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag);
   Item_symbol_t.Item_for_any_only_top_symbol
    Item_for_any_only_top_symbol_t.Ending]
);;
