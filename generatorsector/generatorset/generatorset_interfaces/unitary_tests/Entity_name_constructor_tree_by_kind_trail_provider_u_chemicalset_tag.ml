open Make_test_v;;

testing "Entity_basename_constructor_tree_by_kind_trail_provider_v with
   Entity_basename_constructor_tree_by_kind_trail_provider_u_chemicalset_tag.ml";; 

(* toplevel 
   #use "Entity_basename_constructor_tree_by_kind_trail_provider_u_chemicalset_tag.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make "tag";;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_ent_t = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;
let nam_ent_top = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_nod_l = Tree_v.node_list_off_tree nam_ent_t;;
let nam_ent_top_son_l = Tree_v.topson_node_list_off_tree nam_ent_t;;
let nam_ent_nol_son_l = Tree_v.noleaf_topson_node_list_off_tree nam_ent_t;;
let nam_ent_cur_l = Tree_v.noroot_notopson_noleaf_node_list_off_tree nam_ent_t;; 
let nam_ent_lea_l = Tree_v.leaf_node_list_off_tree nam_ent_t;;

let nam_ent_ful_l = nam_ent_top :: ( nam_ent_nol_son_l @ nam_ent_cur_l @ nam_ent_lea_l);;
test_number 1 (
Tree_v.is_complete nam_ent_t
);;

test_number 2 (
nam_ent_top 
(* : string *)
= 
"chemicalset"
);;

test_number 3 (
nam_ent_nol_son_l 
(* : string list *)
=
["atom"; "block"; "bond"; "bridge"; "chain"; "cluster"; "cterminal_subunit";
 "fragment"; "grouping"; "mendeleev"; "molecule"; "peptideca"; "protein";
 "polypeptide_sidegroup"; "residue"; "segment"]
);;

test_number 4 (
nam_ent_cur_l 
(* : string list *)
=
["atom_zerotied"; "atom_zerotied_raregas"; "atom_zerotied_anion";
 "atom_zerotied_anion_minusone"; "atom_zerotied_anion_minustwo";
 "atom_zerotied_cation"; "atom_zerotied_cation_plusone";
 "atom_zerotied_cation_plustwo"; "atom_zerotied_cation_plusthree";
 "halfbridge"; "atom_onetied"; "atom_onetied_conjugated";
 "atom_onetied_double"; "atom_onetied_single"; "atom_onetied_triple";
 "atom_twotied"; "atom_twotied_singlesingle";
 "atom_twotied_singleconjugated"; "atom_twotied_singledouble";
 "atom_twotied_singletriple"; "atom_twotied_conjugatedconjugated";
 "atom_twotied_conjugated_double"; "atom_twotied_doubledouble";
 "atom_threetied"; "atom_threetied_singlesingle_single";
 "atom_threetied_singlesingledouble";
 "atom_threetied_singleconjugatedconjugated";
 "atom_threetied_conjugatedconjugated_conjugated";
 "atom_threetied_doubledouble_double"; "atom_fourtied"; "atom_fivetied";
 "atom_sixtied"; "block_zerozero"; "atom_zerotied"; "atom_zerotied_raregas";
 "atom_zerotied_anion"; "atom_zerotied_anion_minusone";
 "atom_zerotied_anion_minustwo"; "atom_zerotied_cation";
 "atom_zerotied_cation_plusone"; "atom_zerotied_cation_plustwo";
 "atom_zerotied_cation_plusthree"; "halfbridge"; "block_zerozero_diatomic";
 "block_zerozero_triatomic"; "block_zerozero_tetratomic";
 "block_zerozero_pentatomic"; "block_zeroone"; "block_zeroonesingle";
 "block_zeroonedouble"; "block_zeroonetriple"; "block_zerofork";
 "block_zerobifork"; "block_zerotrifork"; "block_zeroquadrifork";
 "block_oneone"; "block_onesingleonesingle"; "block_onesingleonedouble";
 "block_onesingleonetriple"; "block_onedoubleonesingle";
 "block_onedoubleonedouble"; "block_onetripleonesingle"; "block_oneend";
 "block_onefork"; "block_onebifork"; "block_onesinglebifork";
 "block_onesinglebiforksinglesingle"; "block_onedoublebifork";
 "block_onetrifork"; "block_onesingletriforksinglesinglesingle";
 "block_onezero"; "fragment_closed"; "block_zerozero"; "atom_zerotied";
 "atom_zerotied_raregas"; "atom_zerotied_anion";
 "atom_zerotied_anion_minusone"; "atom_zerotied_anion_minustwo";
 "atom_zerotied_cation"; "atom_zerotied_cation_plusone";
 "atom_zerotied_cation_plustwo"; "atom_zerotied_cation_plusthree";
 "halfbridge"; "block_zerozero_diatomic"; "block_zerozero_triatomic";
 "block_zerozero_tetratomic"; "block_zerozero_pentatomic"; "fragment_head";
 "block_zerofork"; "block_zerobifork"; "block_zerotrifork";
 "block_zeroquadrifork"; "fragment_buried"; "block_onefork";
 "block_onebifork"; "block_onesinglebifork";
 "block_onesinglebiforksinglesingle"; "block_onedoublebifork";
 "block_onetrifork"; "block_onesingletriforksinglesinglesingle";
 "fragment_leaf"; "block_zerofork"; "block_zerobifork"; "block_zerotrifork";
 "block_zeroquadrifork"; "fragment_leaf"; "block_zerofork";
 "block_zerobifork"; "block_zerotrifork"; "block_zeroquadrifork";
 "grouping_polyfragment"; "grouping_bridged"; "molecule_aminoacid";
 "molecule_aminoacid_segmented"; "molecule_aminoacid_fragmented";
 "molecule_aminoacid_regular"; "molecule_bridged"; "molecule_dendrimer";
 "molecule_forked"; "molecule_forked_oneforked"; "molecule_forked_twoforked";
 "molecule_forked_threeforked"; "molecule_forked_moreforked";
 "molecule_linear"; "molecule_linear_monoatomic"; "atom_zerotied";
 "atom_zerotied_raregas"; "atom_zerotied_anion";
 "atom_zerotied_anion_minusone"; "atom_zerotied_anion_minustwo";
 "atom_zerotied_cation"; "atom_zerotied_cation_plusone";
 "atom_zerotied_cation_plustwo"; "atom_zerotied_cation_plusthree";
 "halfbridge"; "molecule_linear_diatomic"; "molecule_linear_triatomic";
 "molecule_linear_tetratomic"; "molecule_linear_pentatomic";
 "molecule_linear_polyatomic"; "molecule_polymer"; "polypeptide";
 "polypeptide_regular"; "peptideca_buried"; "peptideca_buried_segmented";
 "peptideca_buried_fragmented"; "molecule_aminoacid_regular";
 "peptideca_nterminal"; "peptideca_nterminal_segmented";
 "peptideca_nterminal_fragmented"; "molecule_aminoacid_regular"; "frompdbid";
 "residue_nterminal"; "residue_nterminal_segmented";
 "residue_nterminal_fragmented"; "molecule_aminoacid_regular";
 "residue_buried"; "residue_buried_segmented"; "residue_buried_fragmented";
 "molecule_aminoacid_regular"; "segment_head"; "block_zeroone";
 "block_zeroonesingle"; "block_zeroonedouble"; "block_zeroonetriple";
 "segment_buried"; "block_oneone"; "block_onesingleonesingle";
 "block_onesingleonedouble"; "block_onesingleonetriple";
 "block_onedoubleonesingle"; "block_onedoubleonedouble";
 "block_onetripleonesingle"]
);;

test_number 5 (
List_v.sublist_of_int_of_int_of_list 0 60 nam_ent_lea_l 
(* : string list *)
 =
["ar"; "he"; "kr"; "ne"; "xe"; "f_1m"; "h_1m"; "cl_1m"; "br_1m"; "i_1m";
 "o_2m"; "s_2m"; "h_1p"; "k_1p"; "li_1p"; "na_1p"; "ni_1p"; "cu_1p"; "mg_2p";
 "ca_2p"; "fe_2p"; "zn_2p"; "cu_2p"; "fe_3p"; "ni_3p"; "hbc"; "hbd"; "hbs";
 "hbt"; "o_c"; "o_d"; "h_s"; "f_s"; "n_t"; "o_t"; "cl_ss"; "f_ss"; "h_ss";
 "n_sc"; "o_sc"; "n_sd"; "c_st"; "n_st"; "n_cc"; "o_cc"; "c_cd"; "c_dd";
 "s_dd"; "n_sss"; "cl_sss"; "c_ssd"; "n_sdd"; "s_sdd"; "c_scc"; "n_scc";
 "c_ccc"; "n_ccc"; "s_ddd"; "c_4s"; "n_4s"; "s_4s"]
);;

