open Make_test_v;;

testing "Entity_current_symbol_list_by_item_all_topsons_sextup_provider_v with
   Entity_current_symbol_list_by_item_all_topsons_sextup_provider_u_figure_formula_triangle_isoceles_equilateral.ml";; 

(* toplevel 
   #use "Entity_current_symbol_list_by_item_all_topsons_sextup_provider_u_figure_formula_triangle_isoceles_equilateral.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_efn = "triangle_isoceles_equilateral";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_efn_l = Entity_fictive_nullary_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_efn = List.find (fun e -> Entity_fictive_nullary_symbol_v.string_off e = nam_efn) sym_efn_l;;
let gss_efn = Generatorset_symbol_v.generatorset_symbol_of_entity_fictive_nullary_symbol sym_efn;;
Generatorset_symbol_by_sole_index_provider_v.store soi_efn gss_efn;;
let tag_efn = Tag_v.make sym_efn soi_efn;;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Making *)

let nam_iat = "making";;
let sym_iat = Item_all_topsons_symbol_v.make nam_iat;;
let sym_ite = Item_symbol_v.item_symbol_of_item_all_topsons_symbol sym_iat;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let sex_ite = Tag_v.make sym_ite soi_ite;;

test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
   [22; 1; 3; 14; 2; 4])
);;

let tag_iat = Tag_v.make sym_iat soi_ite;;
let sym_enc_l = Entity_current_symbol_list_by_item_all_topsons_sextup_provider_v.provide tag_iat;;

test_number 2 (
sym_enc_l
(* : Entity_symbol_t.entity_symbol list list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty);
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral"))]
);;

test_number 3 (
sym_enc_l = Entity_current_symbol_list_by_item_sextup_provider_v.provide sex_ite
);;

