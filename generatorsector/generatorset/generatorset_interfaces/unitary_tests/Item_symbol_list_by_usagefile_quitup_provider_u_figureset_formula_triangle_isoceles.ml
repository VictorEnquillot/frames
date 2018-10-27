open Make_test_v;;

testing "Item_symbol_list_by_usagefile_quitup_provider_v with
   Item_symbol_list_by_usagefile_quitup_provider_u_figure_formula_triangle_isoceles.ml";;

(* toplevel 
   #use "Item_symbol_list_by_usagefile_quitup_provider_u_figure_formula_triangle_isoceles.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_enp = "triangle_isoceles"
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
   (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles")
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
let ite_l = Usagefile_for_formula_interface_v.make_of_tuple qui_uim;;

(* Triangle_isoceles : Stem of CT, Node of BT *)

test_number 4 (
ite_l
(* : Item_symbol_list_by_usagefile_quitup_provider_v.Item_symbol_t.item_symbol list *)
=
   [Item_symbol_t.Item_for_any_only_top_symbol
    Item_for_any_only_top_symbol_t.Heading;
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Symbolizing_for_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Building_and_storing_proper_sons);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Making_for_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Retrieving_for_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_by_group_topsons_symbol
      Item_for_formula_by_group_topsons_symbol_t.Builder_tag_listing_off_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Builder_tag_listing_off_tag);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Data_tag_listing_off_formula);
   Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Data_tag_listing_off_tag);
   Item_symbol_t.Item_for_any_only_top_symbol
    Item_for_any_only_top_symbol_t.Ending]
);;
