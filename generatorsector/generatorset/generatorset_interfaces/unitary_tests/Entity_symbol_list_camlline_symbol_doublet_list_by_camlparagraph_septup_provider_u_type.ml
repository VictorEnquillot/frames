open Make_test_v;;

testing "Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_u_type.ml";;

(* toplevel 
   #use "Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_u_type.ml";; 
*)

let sym_dos_che = Domain_symbol_v.make "chemicalset";;
let sym_cat_che = Category_symbol_v.make "symbol";;
let sym_enp_che = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied";;
let sym_cof_che = Contentfile_symbol_v.make "type_alone";;
let sym_usf_che = Usagefile_symbol_v.make "implementation";;
let sym_ite_che = Item_symbol_v.make "typing";;
let sym_cap_che = Camlparagraph_symbol_v.type_definition_for_symbol;;
let sym_cal_che = Camlline_symbol_v.pipe_ess_bof_ess_tdot_ess;;

let gss_dos_che = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos_che gss_dos_che;;
let tag_dos_che = Tag_v.make sym_dos_che soi_dos_che;;

let gss_cat_che = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat_che gss_cat_che;;
let tag_cat_che = Tag_v.make sym_cat_che soi_cat_che;;

let gss_enp_che = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp_che gss_enp_che;;
let tag_enp_che = Tag_v.make sym_enp_che soi_enp_che;;


let gss_cof_che = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof_che gss_cof_che;;
let tag_cof_che = Tag_v.make sym_cof_che soi_cof_che;;

let gss_usf_che = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf_che gss_usf_che;;
let tag_usf_che = Tag_v.make sym_usf_che soi_usf_che;;

let gss_ite_che = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_che gss_ite_che;;
let tag_ite_che = Tag_v.make sym_ite_che soi_ite_che;;

let gss_cap_che = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_che gss_cap_che;;
let tag_cap_che = Tag_v.make sym_cap_che soi_cap_che;;

let es_esl_n_cls_che_l = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_che;;

test_number 1 (
tag_cap_che 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type,
   [2; 3; 1; 1; 3; 1; 1])
);;

test_number 2 (
es_esl_n_cls_che_l
(* : (Entity_symbol_t.entity_symbol list,
     Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
[
([Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Sonentity "atom_zerotied_raregas")],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Sonentity "atom_zerotied_anion")],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Sonentity "atom_zerotied_cation")],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Sonentity "halfbridge")],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;
