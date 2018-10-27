open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Entity_symbol_list_by_camlline_octtup_provider_u_moleculeset_formula_moleculeset_typing.ml";;

(* toplevel 
   #use "Entity_symbol_list_by_camlline_octtup_provider_u_moleculeset_formula_moleculeset_typing.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;n
let nam_enp = "moleculeset";;
let nam_usf = "implementation";;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

(* Type_alone *)

let nam_cof = "type_alone";;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Typing *)

let sym_ite = Item_symbol_v.make "typing";;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let sex_ite = Tag_v.make sym_ite soi_ite;;

let sym_cap = Camlparagraph_symbol_v.type_definition_for_formula;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;
let sep_cap = Tag_v.make sym_cap soi_cap;;

let sym_cal = Camlline_symbol_v.type_eft_equal;;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;
let oct_cal = Tag_v.make sym_cal soi_cal;;

let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 1 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Type_definition_for_formula,
 [2; 3; 1; 1; 1; 1; 3])
);;

test_number 2 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]
);;

