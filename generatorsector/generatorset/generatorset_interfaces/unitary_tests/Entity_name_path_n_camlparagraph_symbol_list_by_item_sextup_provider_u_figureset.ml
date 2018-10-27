open Make_test_v;;

testing "Entity_basename_path_n_camlparagraph_symbol_list_by_item_sextup_provider_u_figure.ml";;

(* toplevel 
   #use "Entity_basename_path_n_camlparagraph_symbol_list_by_item_sextup_provider_u_figure.ml";; 
*)

let sym_dos = Domain_symbol_v.make "figure";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf "point";;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;


let sym_cof = Contentfile_symbol_v.make "value_alone";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make "implementation";;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

let sym_ite = Item_symbol_v.make "upgrading_grandson";;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let sex_ite = Tag_v.make sym_ite soi_ite;;

let pne_n_cps_upg_l = Enpcsleptp_v.provide sex_ite;;
let pat_upg_2_l = Doublet_list_v.filter_if_left (fun p -> List.length p=2) pne_n_cps_upg_l;;

test_number 1 (
pne_n_cps_upg_l
(* : (string list, Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_list_t.doublet_list *)
=
[(["atom_zerotied_raregas"; "atom_zerotied"],
  Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
 (["atom_zerotied_anion"; "atom_zerotied"],
  Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
 (["atom_zerotied_cation"; "atom_zerotied"],
  Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
 (["halfbridge"; "atom_zerotied"],
  Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
 (["atom_zerotied_cation_plusone"; "atom_zerotied_cation"; "atom_zerotied"],
  Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)));
 (["atom_zerotied_cation_plustwo"; "atom_zerotied_cation"; "atom_zerotied"],
  Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)));
 (["atom_zerotied_cation_plusthree"; "atom_zerotied_cation"; "atom_zerotied"],
  Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)))]
);;

test_number 2 (
pat_upg_2_l 
(* : (string list, Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.camlparagraph_symbol)
   Doublet_list_t.doublet_list *)
  =
[(["atom_zerotied_raregas"; "atom_zerotied"],
    Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
   (["atom_zerotied_anion"; "atom_zerotied"],
    Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
   (["atom_zerotied_cation"; "atom_zerotied"],
    Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
   (["halfbridge"; "atom_zerotied"],
    Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Enpcsleptp_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)))]
);;
