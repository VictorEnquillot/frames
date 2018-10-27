open Make_test_v;;

testing "Entity_basename_constructor_tree_by_kind_trail_provider_v
   Entity_basename_constructor_tree_by_kind_trail_provider_u_chemicalset_formula.ml";;

(* toplevel 
   #use "Entity_basename_constructor_tree_by_kind_trail_provider_u_chemicalset_formula.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
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
["block"; "cluster"; "coffer"; "fragment"; "grouping"; "molecule";
 "polypeptide_subunit"; "segment"]
);;

test_number 4 (
nam_ent_cur_l 
(* : string list *)
=
["block_zerotied"; "block_zerotied_zerotied"; "block_none_none_ax0";
 "block_none_none_ax0e0_monoatomic"; "block_none_none_ax1";
 "block_none_none_ax1en_diatomic"; "block_none_none_ax2";
 "block_none_none_ax2e0_linear"; "block_none_none_ax2e1_bent";
 "block_none_none_ax2e2_bent"; "block_none_none_ax3";
 "block_none_none_ax3e0_trigonalplanar";
 "block_none_none_ax3e1_trigonalpyramidal"; "block_none_none_ax4";
 "block_none_none_ax4e1_tetrahedral"; "block_zerotied_onetied";
 "block_none_single"; "block_none_single_ax1";
 "block_none_single_ax1en_diatomic"; "block_none_single_ax3";
 "block_none_single_ax3e0_trigonalplanar";
 "block_none_single_ax3e1_trigonalpyramidal"; "block_none_single_ax4";
 "block_none_single_ax4e1_tetrahedral"; "block_none_conjugated";
 "block_none_conjugated_ax3e0_trigonalplanar"; "block_none_double";
 "block_none_double_ax3e0_trigonalplanar"; "block_none_triple";
 "block_none_triple_ax2"; "block_none_triple_ax2e0_linear"; "block_onetied";
 "block_onetied_onetied"; "block_single_single"; "block_single_single_ax2";
 "block_single_single_ax2e0_bent"; "block_single_single_ax2e2_bent";
 "block_single_single_ax2e3_linear"; "block_single_single_ax3";
 "block_single_single_ax3e0_trigonalplanar";
 "block_single_single_ax3e1_trigonalpyramidal";
 "block_single_single_ax3e2_tshaped"; "block_single_single_ax4";
 "block_single_single_ax4e0_tetrahedral"; "block_single_single_ax4e1_seesaw";
 "block_single_conjugated"; "block_single_conjugated_ax3e0_trigonalplanar";
 "block_single_double"; "block_single_double_ax3";
 "block_single_double_ax3e0_trigonalplanar"; "block_single_triple";
 "block_single_triple_ax2"; "block_single_triple_ax2e0_linear";
 "block_onetied_forktied"; "block_onetied_biforktied";
 "block_single_singlesingle"; "block_single_singlesingle_ax3";
 "block_single_singlesingle_ax3e1_trigonalpyramidal";
 "block_single_singledouble";
 "block_single_singledouble_ax3e0_trigonalplanar";
 "block_onetied_triforktied"; "block_single_singlesinglesingle";
 "block_single_singlesinglesingle_ax4";
 "block_single_singlesinglesingle_ax4e1_tetrahedral"; "cluster_fromid";
 "protein_fromid"; "coffer_fromid"; "fragment_closed";
 "block_zerotied_zerotied"; "block_none_none_ax0";
 "block_none_none_ax0e0_monoatomic"; "block_none_none_ax1";
 "block_none_none_ax1en_diatomic"; "block_none_none_ax2";
 "block_none_none_ax2e0_linear"; "block_none_none_ax2e1_bent";
 "block_none_none_ax2e2_bent"; "block_none_none_ax3";
 "block_none_none_ax3e0_trigonalplanar";
 "block_none_none_ax3e1_trigonalpyramidal"; "block_none_none_ax4";
 "block_none_none_ax4e1_tetrahedral"; "fragment_zerotied_zerotied";
 "fragment_zerotied_zerotied_fromid"; "fragment_closed_leftextended_fromid";
 "fragment_head"; "fragment_head_forked"; "fragment_head_biforked";
 "fragment_head_triforked"; "fragment_head_halfbridged"; "fragment_buried";
 "block_onetied_forktied"; "block_onetied_biforktied";
 "block_single_singlesingle"; "block_single_singlesingle_ax3";
 "block_single_singlesingle_ax3e1_trigonalpyramidal";
 "block_single_singledouble";
 "block_single_singledouble_ax3e0_trigonalplanar";
 "block_onetied_triforktied"; "block_single_singlesinglesingle";
 "block_single_singlesinglesingle_ax4";
 "block_single_singlesinglesingle_ax4e1_tetrahedral";
 "fragment_buried_leftextended_fromid"; "fragment_leaf";
 "fragment_onetied_zerotied"; "fragment_leaf_fromid";
 "fragment_leaf_leftextended_fromid"; "fragment_leaf_halfbridgetailed";
 "fragment_leaf"; "fragment_onetied_zerotied"; "fragment_leaf_fromid";
 "fragment_leaf_leftextended_fromid"; "fragment_leaf_halfbridgetailed";
 "polypeptide_sidegroup"; "grouping_fromid"; "molecule_bridged";
 "molecule_dendrimer"; "molecule_dendrimer_fromid"; "molecule_forked";
 "molecule_linear"; "molecule_linear_monoatomic";
 "block_none_none_ax0e0_monoatomic"; "molecule_linear_diatomic";
 "molecule_linear_triatomic"; "molecule_linear_tetratomic";
 "molecule_linear_pentatomic"; "molecule_linear_overpentatomic";
 "molecule_polymer"; "polypeptide_fromid"; "nucleicacid_fromid";
 "molecule_polymer_fromid"; "polypeptide_subunit_proline"; "segment_head";
 "block_zerotied_onetied"; "block_none_single"; "block_none_single_ax1";
 "block_none_single_ax1en_diatomic"; "block_none_single_ax3";
 "block_none_single_ax3e0_trigonalplanar";
 "block_none_single_ax3e1_trigonalpyramidal"; "block_none_single_ax4";
 "block_none_single_ax4e1_tetrahedral"; "block_none_conjugated";
 "block_none_conjugated_ax3e0_trigonalplanar"; "block_none_double";
 "block_none_double_ax3e0_trigonalplanar"; "block_none_triple";
 "block_none_triple_ax2"; "block_none_triple_ax2e0_linear";
 "segment_zerotied_onetied"; "segment_buried"; "block_onetied_onetied";
 "block_single_single"; "block_single_single_ax2";
 "block_single_single_ax2e0_bent"; "block_single_single_ax2e2_bent";
 "block_single_single_ax2e3_linear"; "block_single_single_ax3";
 "block_single_single_ax3e0_trigonalplanar";
 "block_single_single_ax3e1_trigonalpyramidal";
 "block_single_single_ax3e2_tshaped"; "block_single_single_ax4";
 "block_single_single_ax4e0_tetrahedral"; "block_single_single_ax4e1_seesaw";
 "block_single_conjugated"; "block_single_conjugated_ax3e0_trigonalplanar";
 "block_single_double"; "block_single_double_ax3";
 "block_single_double_ax3e0_trigonalplanar"; "block_single_triple";
 "block_single_triple_ax2"; "block_single_triple_ax2e0_linear";
 "segment_onetied_onetied"]
);;

test_number 5 (
nam_ent_lea_l 
(* : string list *)
 =
["atom_zerotied"; "doublet"; "atom:mark"; "atom:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "block_none_halfbridge";
 "block_zerotied_forktied"; "block_onetied_zerotied"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "list"; "molecule:mark"; "list"; "polypeptide:mark";
 "list"; "molecule:mark"; "atom_zerotied"; "doublet"; "atom:mark";
 "atom:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "list"; "block:mark";
 "list"; "block:mark"; "list"; "block:mark"; "block_zerotied_forktied";
 "list"; "block:mark"; "list"; "block:mark"; "list"; "block:mark";
 "fragment_head_rightextended_fromid"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "fragment_buried_biforked"; "fragment_buried_triforked";
 "fragment_buried_fromid"; "list"; "block:mark"; "block_onetied_zerotied";
 "list"; "block:mark"; "list"; "block:mark"; "list"; "block:mark"; "list";
 "block:mark"; "empty"; "block_onetied_zerotied"; "list"; "block:mark";
 "list"; "block:mark"; "list"; "block:mark"; "list"; "block:mark";
 "fragment_tree"; "doublet"; "fragment:mark"; "grouping:mark"; "doublet";
 "fragment:mark"; "grouping:mark"; "doublet"; "fragment_head:mark";
 "grouping:mark"; "doublet"; "fragment_head:mark"; "grouping:mark";
 "doublet"; "fragment_head:mark"; "grouping:mark"; "atom_zerotied";
 "doublet"; "fragment_head:mark"; "grouping:mark"; "singlet";
 "fragment:mark"; "singlet"; "fragment:mark"; "singlet"; "fragment:mark";
 "singlet"; "fragment:mark"; "list"; "polypeptide_subunit:mark"; "list";
 "polymer_subunit:mark"; "list"; "polymer_subunit:mark"; "doublet";
 "fragment:mark"; "grouping:mark";
 "polypeptide_subunit_regular_leftextended"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "block_none_halfbridge"; "list"; "block:mark";
 "segment_rightextended_fromid"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "capped_list";
 "atom_core:mark"; "atom_onetied:mark"; "capped_list"; "atom_core:mark";
 "atom_onetied:mark"; "capped_list"; "atom_core:mark"; "atom_onetied:mark";
 "capped_list"; "atom_core:mark"; "atom_onetied:mark"; "list"; "block:mark";
 "segment_leftextended_fromid"; "segment_polymer_fromid"]
);;

