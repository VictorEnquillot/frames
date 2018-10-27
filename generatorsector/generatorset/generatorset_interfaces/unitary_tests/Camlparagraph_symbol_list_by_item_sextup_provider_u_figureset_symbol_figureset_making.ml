open Make_test_v;;

testing "Camlparagraph_symbol_list_by_item_sextup_provider_v with
   Camlparagraph_symbol_list_by_item_sextup_provider_u_figure_symbol_figure_making.ml";;

(* toplevel 
   #use "Camlparagraph_symbol_list_by_item_sextup_provider_u_figure_symbol_figure_making.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "figure";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_ite = "making";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let sym_usf = Usagefile_symbol_v.make nam_usf;;
let sym_ite = Item_symbol_v.make nam_ite;;

let sex_ite = (sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol * Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol *
  Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 (
sym_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "making"));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol))]
);;
