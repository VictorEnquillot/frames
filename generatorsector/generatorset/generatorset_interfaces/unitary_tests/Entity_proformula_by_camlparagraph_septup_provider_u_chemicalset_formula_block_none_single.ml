open Make_test_v;;

testing "Entity_proformula_by_camlparagraph_septup_provider_v with 
   Entity_proformula_by_camlparagraph_septup_provider_u_chemicalset_formula_block_none_single.ml"

(* toplevel 
   #use "Entity_proformula_by_camlparagraph_septup_provider_u_chemicalset_formula_block_none_single.ml"
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_cat = Category_symbol_v.make nam_cat;;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf "block_none_single";;
let sym_usf = Usagefile_symbol_v.make "implementation";;

let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

(* Type_alone *)

let sym_cof = Contentfile_symbol_v.make "type_alone";;

let sym_ite_typ = Item_symbol_v.make "typing";;

let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Typing *)

let gss_ite_typ = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_typ gss_ite_typ;;
let tag_ite_typ = Tag_v.make sym_ite_typ soi_ite_typ;;

let pfo_ite_typ = Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v.provide tag_ite_typ;;

let sym_cap_typ = Camlparagraph_symbol_v.type_definition_for_formula;;
let gss_cap_typ = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_typ gss_cap_typ;;
let tag_cap_typ = Tag_v.make sym_cap_typ soi_cap_typ;;

let pne_n_cps_typ_l = Entity_proformula_by_camlparagraph_septup_provider_v.provide tag_cap_typ;;

test_number 1 (
 tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
 [3; 1; 1; 2; 3; 1])
);;

test_number 2 (
pfo_ite_typ
(* : (Entity_symbol_t.entity_symbol list list,
   Camlparagraph_symbol_t.camlparagraph_symbol)
   Doublet_t.doublet list *)
  =
[([[Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         Entity_fictive_nullary_symbol_t.Empty)]],
  Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
    (Camlparagraph_for_any_comment_symbol_t.Item_title "typing"));

 ([[Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_v.top_has_notopsonleaf "atom");
    Entity_symbol_t.Entity_external_symbol
      (Entity_external_symbol_t.Entity_external_datastructure_symbol
         Entity_external_datastructure_symbol_t.List_caml)]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    Camlparagraph_endmarked_symbol_t.Type_definition_for_formula)]
);;

test_number 3 (
pne_n_cps_typ_l 
(* : (Entity_symbol_t.entity_symbol list,
   Camlparagraph_symbol_t.camlparagraph_symbol)
  Doublet_t.doublet list *)
= 
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "atom");
  Entity_symbol_t.Entity_external_symbol
   (Entity_external_symbol_t.Entity_external_datastructure_symbol
     Entity_external_datastructure_symbol_t.List_caml)]]
);;

