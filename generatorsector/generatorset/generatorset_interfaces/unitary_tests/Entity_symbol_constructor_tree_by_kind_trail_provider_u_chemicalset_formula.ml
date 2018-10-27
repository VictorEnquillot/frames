open Make_test_v;;

testing "Entity_symbol_constructor_tree_by_kind_trail_provider_v with
   Entity_symbol_constructor_tree_by_kind_trail_provider_u_chemicalset_formula.ml";; 

(* toplevel 
   #use "Entity_symbol_constructor_tree_by_kind_trail_provider_u_chemicalset_formula.ml";; 
*)

let entity_basename_fulltree = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide;;

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let est_dos = Entity_symbol_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;

let nam_ent_t = entity_basename_fulltree tag_cat;;
let nam_ent_roo = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_son_tl = Tree_v.topson_tree_list_off_tree nam_ent_t;;

let tos_l = Tree_v.topson_node_list_off_tree est_dos;;
let sym_ent_t = Entity_symbol_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;
let nod_l = Tree_v.node_list_off_tree sym_ent_t;;

let nam_ent_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree (fun n -> (Tree_v.is_inner_of_node_off_tree n nam_ent_t) && (Tree_v.has_unique_leaf_son_of_node_of_tree n nam_ent_t)) nam_ent_t ;;

let sym_ent_son_tl = List.map (Entity_symbol_constructor_tree_by_kind_trail_provider_v.leaf_entity_symbol_self_or_string_or_datastructure_of_tree nam_ent_t) nam_ent_son_tl;;

test_number 1 (
Tree_v.is_complete est_dos
);;

test_number 2 (
tos_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "block");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "cluster");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "coffer");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "cterminal_subunit"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "fragment");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "grouping");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "polypeptide_subunit");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "segment")]
);;

test_number 3 (
nam_ent_sut_l
(* : string Tree_t.tree list *)
=
[Tree_t.Inner ("block_none_none_ax0e0_monoatomic",
  [Tree_t.Leaf "atom_zerotied"]);
 Tree_t.Inner ("block_none_none_ax3e1_trigonalpyramidal",
  [Tree_t.Leaf "z_nh3_z"]);
 Tree_t.Inner ("block_none_single_ax3e1_trigonalpyramidal",
  [Tree_t.Leaf "z_nh2_s"]);
 Tree_t.Inner ("block_none_conjugated_ax3e0_trigonalplanar",
  [Tree_t.Leaf "z_nh2_c"]);
 Tree_t.Inner ("block_none_triple_ax2e0_linear", [Tree_t.Leaf "z_ch_t"]);
 Tree_t.Inner ("block_single_single_ax3e0_trigonalplanar",
  [Tree_t.Leaf "s_bf_s"]);
 Tree_t.Inner ("block_single_single_ax4e1_seesaw", [Tree_t.Leaf "s_sf2_s"]);
 Tree_t.Inner ("block_single_singlesingle_ax3e1_trigonalpyramidal",
  [Tree_t.Leaf "s_n_ss"]);
 Tree_t.Inner ("block_single_singledouble_ax3e0_trigonalplanar",
  [Tree_t.Leaf "s_c_sd"]);
 Tree_t.Inner ("cluster_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("protein_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("coffer_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("block_none_none_ax0e0_monoatomic",
  [Tree_t.Leaf "atom_zerotied"]);
 Tree_t.Inner ("block_none_none_ax3e1_trigonalpyramidal",
  [Tree_t.Leaf "z_nh3_z"]);
 Tree_t.Inner ("fragment_zerotied_zerotied_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_closed_leftextended_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_head_halfbridged",
  [Tree_t.Leaf "hb_s_nh_s_ch2_sr3_s_ch_s"]);
 Tree_t.Inner ("block_single_singlesingle_ax3e1_trigonalpyramidal",
  [Tree_t.Leaf "s_n_ss"]);
 Tree_t.Inner ("block_single_singledouble_ax3e0_trigonalplanar",
  [Tree_t.Leaf "s_c_sd"]);
 Tree_t.Inner ("fragment_buried_leftextended_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_leaf_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_leaf_leftextended_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_leaf_halfbridgetailed",
  [Tree_t.Leaf "c_ch_cr5_hb_c"]);
 Tree_t.Inner ("fragment_leaf_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_leaf_leftextended_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_leaf_halfbridgetailed",
  [Tree_t.Leaf "c_ch_cr5_hb_c"]);
 Tree_t.Inner ("grouping_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("molecule_bridged_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("molecule_dendrimer_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("molecule_forked_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("block_none_none_ax0e0_monoatomic",
  [Tree_t.Leaf "atom_zerotied"]);
 Tree_t.Inner ("molecule_linear_tetratomic", [Tree_t.Leaf "ammonia"]);
 Tree_t.Inner ("molecule_linear_pentatomic", [Tree_t.Leaf "methane"]);
 Tree_t.Inner ("polypeptide_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("nucleicacid_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("molecule_polymer_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("polypeptide_subunit_proline", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("block_none_single_ax3e1_trigonalpyramidal",
  [Tree_t.Leaf "z_nh2_s"]);
 Tree_t.Inner ("block_none_conjugated_ax3e0_trigonalplanar",
  [Tree_t.Leaf "z_nh2_c"]);
 Tree_t.Inner ("block_none_triple_ax2e0_linear", [Tree_t.Leaf "z_ch_t"]);
 Tree_t.Inner ("block_single_single_ax3e0_trigonalplanar",
  [Tree_t.Leaf "s_bf_s"]);
 Tree_t.Inner ("block_single_single_ax4e1_seesaw", [Tree_t.Leaf "s_sf2_s"]);
 Tree_t.Inner ("segment_onetied_onetied", [Tree_t.Leaf "s_co_c_nh_s_ch2_s"])]
);;

test_number 4 (
 List.nth sym_ent_son_tl 1
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "cluster"),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.String "cluster_fromid")));
  Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.String "protein_fromid")))])
);;

test_number 5 (
List.nth sym_ent_son_tl 2
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coffer"),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.String "coffer_fromid")))])
);;

test_number 6 (
List.nth sym_ent_son_tl 3
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "cterminal_subunit")))
);;

test_number 7 (
List.nth sym_ent_son_tl 7
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "polypeptide_subunit"),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.String
         "polypeptide_subunit_proline")));
  Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary
         "polypeptide_subunit_regular_leftextended")))])
);;
