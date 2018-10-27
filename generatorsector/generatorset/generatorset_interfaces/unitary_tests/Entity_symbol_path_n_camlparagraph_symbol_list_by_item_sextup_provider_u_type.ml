open Make_test_v;;

testing "Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_u_type.ml";;

(* toplevel 
   #use "Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_u_type.ml";; 
*)


let sym_dos_che = Domain_symbol_v.make "chemicalset";;
let gss_dos_che = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos_che gss_dos_che;;
let tag_dos_che = Tag_v.make sym_dos_che soi_dos_che;;

let sym_cat_che = Category_symbol_v.make "symbol";;
let gss_cat_che = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat_che gss_cat_che;;
let tag_cat_che = Tag_v.make sym_cat_che soi_cat_che;;

let sym_enp_che = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied";;
let gss_enp_che = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp_che gss_enp_che;;
let tag_enp_che = Tag_v.make sym_enp_che soi_enp_che;;


let sym_cof_che = Contentfile_symbol_v.make "type_alone";;
let gss_cof_che = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof_che gss_cof_che;;
let tag_cof_che = Tag_v.make sym_cof_che soi_cof_che;;

let sym_usf_che = Usagefile_symbol_v.make "implementation";;
let gss_usf_che = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf_che gss_usf_che;;
let tag_usf_che = Tag_v.make sym_usf_che soi_usf_che;;

let sym_ite_che = Item_symbol_v.make "typing";;
let gss_ite_che = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_che;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_che gss_ite_che;;
let tag_ite_che = Tag_v.make sym_ite_che soi_ite_che;;

let pne_n_cps_che_l = Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.provide tag_ite_che;;
let pat_2_l = Doublet_list_v.filter_if_left (fun p -> List.length p=2) pne_n_cps_che_l;;

test_number 1 (
pne_n_cps_che_l
(* : (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.entity_symbol list list,
     Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_list_t.doublet_list *)
=
[[([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_propert.Sonentity "atom_zerotied_raregas");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")];

 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_propert.Sonentity "atom_zerotied_anion");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")];

 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_propert.Sonentity "atom_zerotied_cation");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")];

 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_propert.Sonentity "halfbridge");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")]],

  Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type)]
);;

test_number 2 (
pat_2_l 
(* : (string list, Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.camlparagraph_symbol)
   Doublet_list_t.doublet_list *)
  =
[]
);;
