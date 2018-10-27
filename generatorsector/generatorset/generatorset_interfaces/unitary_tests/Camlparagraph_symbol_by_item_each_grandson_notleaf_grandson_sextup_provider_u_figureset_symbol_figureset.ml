open Make_test_v;;

testing "Camlparagraph_symbol_by_item_each_grandson_notleaf_extracting_grandson_sextup_provider_v
and     Camlparagraph_symbol_by_item_each_grandson_notleaf_querying_grandson_sextup_provider_v 
and     Camlparagraph_symbol_by_item_each_grandson_notleaf_upgrading_grandson_sextup_provider_v 
with    Camlparagraph_symbol_by_item_each_grandson_notleaf_grandson_sextup_provider_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Camlparagraph_symbol_by_item_each_grandson_notleaf_grandson_sextup_provider_u_figure_symbol_figure.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "figure";;
let nam_cof = "value_alone";;
let nam_usf = "implementation";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_ent_ft = Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let tri_ent = (sym_ent, sym_cat, sym_dos);;

test_number 1 (
tri_ent
(* : Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let sym_usf = Usagefile_symbol_v.make nam_usf;;

(* Extracting_grandson *)

let nam_ite = "extracting_grandson";;
let sym_igl = Item_each_grandson_notleaf_symbol_v.make nam_ite;;

let sex_igl = (sym_igl, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 2 (
 sex_igl
(* : Item_each_grandson_notleaf_symbol_t.item_each_grandson_notleaf_symbol *
  Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
 =
  (Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;
              
let sym_cap = Camlparagraph_symbol_by_item_each_grandson_notleaf_extracting_grandson_sextup_provider_v.provide sex_igl;;

test_number 3 (
sym_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
       Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol))
);;

(* Querying_grandson *)

let nam_ite = "querying_grandson";;
let sym_igl = Item_each_grandson_notleaf_symbol_v.make nam_ite;;

let sex_igl = (sym_igl, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 4 (
 sex_igl
(* : Item_each_grandson_notleaf_symbol_t.item_each_grandson_notleaf_symbol *
  Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
 =
  (Item_each_grandson_notleaf_symbol_t.Querying_grandson,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;
              
let sym_cap = Camlparagraph_symbol_by_item_each_grandson_notleaf_querying_grandson_sextup_provider_v.provide sex_igl;;

test_number 5 (
sym_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
       Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol))
);;

(* Upgrading_grandson *)

let nam_ite = "upgrading_grandson";;
let sym_igl = Item_each_grandson_notleaf_symbol_v.make nam_ite;;

let sex_igl = (sym_igl, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 6 (
 sex_igl
(* : Item_each_grandson_notleaf_symbol_t.item_each_grandson_notleaf_symbol *
  Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
 =
  (Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;
              
let sym_cap = Camlparagraph_symbol_by_item_each_grandson_notleaf_upgrading_grandson_sextup_provider_v.provide sex_igl;;

test_number 7 (
sym_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
       Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol))
);;

