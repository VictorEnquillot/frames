open Make_test_v;;

testing "Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_sextup_provider_v with 
   Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_sextup_provider_u_figure_formula_x_iterating.ml";;

(* toplevel 
   #use "Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_sextup_provider_u_figure_formula_x_iterating.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_enp = "x";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_ite = "iterating";;



let store = Generatorset_symbol_by_sole_index_provider_v.store;;
let gss_of_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp_l = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_enp = List.find (fun e -> Entity_symbol_v.string_off e = nam_enp) sym_enp_l;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_of_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol;;
let sex_ite = Tag_v.make_n_store_son store gss_of_ite sym_ite idx_ite soi_usf;;

test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Iterating,
   [8; 1; 3; 1; 2; 4])
);;

let tag_iot = Item_tag_v.item_only_top_tag_off_item_tag sex_ite;;
let sym_enc_l = Entity_current_symbol_list_by_item_only_top_sextup_provider_v.provide tag_iot;;

test_number 2 (
sym_enc_l
= 
[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "x"))]
);;

let sym_enc_tag_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_only_top_sextup_provider_v.provide tag_iot;;

test_number 3 (
sym_enc_tag_cap_dol
(* : (Entity_symbol_t.entity_symbol, Camlparagraph_tag_t.camlparagraph_tag)
  Doublet_list_t.doublet_list *)
=
[(Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "x")),
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
        Camlparagraph_for_any_comment_symbol_t.Camlfile_title),
   [1; 5; 8; 1; 3; 1; 2; 4]))]
);;

test_number 4 (
sym_enc_tag_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_sextup_provider_v.provide sex_ite
);;

