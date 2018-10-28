open Make_test_v;;

testing "Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v with
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_u_chemicalset_symbol_atom_zerotied.ml";;

(* toplevel 
   #use "Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_u_chemicalset_symbol_atom_zerotied.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied";;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

(* Value_alone *)

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

let pne_n_cps_upg_l = Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v.provide sex_ite;;

let sym_ite = Item_symbol_v.make "aliasing";;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let tag_ite_ali = Tag_v.make sym_ite soi_ite;;

let pne_n_cps_ali_l = Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.provide tag_ite_ali;;

(* figure *)

let sym_dos_geo = Domain_symbol_v.make "figure";;
let gss_dos_geo = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos_geo;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos_geo gss_dos_geo;;
let tag_dos_geo = Tag_v.make sym_dos_geo soi_dos_geo;;

let sym_cat_geo = Category_symbol_v.make "symbol";;
let gss_cat_geo = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat_geo;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat_geo gss_cat_geo;;
let tag_cat_geo = Tag_v.make sym_cat_geo soi_cat_geo;;

let sym_enp_geo = Entity_symbol_v.top_has_notopsonleaf "triangle";;
let gss_enp_geo = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp_geo;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp_geo gss_enp_geo;;
let tag_enp_geo = Tag_v.make sym_enp_geo soi_enp_geo;;

test_number 1 (
pne_n_cps_ali_l
(* : (string list, Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_list_t.doublet_list *)
=
[]
);;

test_number 2 (
pne_n_cps_upg_l
(* : (string list, Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Translating_path_depth_to_camlparagraph_symbol_v.Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_list_t.doublet_list *)
=
[([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_propert.Sonentity "atom_zerotied_raregas");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],

  Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)));
 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_propert.Sonentity "atom_zerotied_anion");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)));
 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_propert.Sonentity "atom_zerotied_cation");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)));
 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_t.Entity_proper
      "atom_zerotied_cation_plusone");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_propert.Sonentity "atom_zerotied_cation");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)));
 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_t.Entity_proper
      "atom_zerotied_cation_plustwo");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_propert.Sonentity "atom_zerotied_cation");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)));
 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_t.Entity_proper
      "atom_zerotied_cation_plusthree");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_propert.Sonentity "atom_zerotied_cation");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)));
 ([Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_propert.Sonentity "halfbridge");
   Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Entity_symbol_path_constructor_subtree_by_entity_tritup_provider_v.Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Entity_symbol_path_n_camlparagraph_symbol_list_by_item_sextup_provider_v.Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)))]
);;
