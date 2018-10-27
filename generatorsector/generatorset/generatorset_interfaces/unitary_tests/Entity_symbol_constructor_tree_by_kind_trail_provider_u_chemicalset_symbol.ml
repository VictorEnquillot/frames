open Make_test_v;;

testing "Entity_symbol_constructor_tree_by_category_symbol_provider_v with
   Entity_symbol_constructor_tree_by_kind_trail_provider_u_chemicalset_symbol.ml";; 

(* toplevel 
   #use "Entity_symbol_constructor_tree_by_kind_trail_provider_u_chemicalset_symbol.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_ent_ft = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;
let nam_ent_roo = Tree_v.root_off_tree nam_ent_ft;;
let nam_ent_son_tl = Tree_v.topson_tree_list_off_tree nam_ent_ft;;

let nam_ent_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree 
    (fun n -> (Tree_v.is_inner_of_node_off_tree n nam_ent_ft) 
	&& 
      (Tree_v.has_unique_leaf_son_of_node_of_tree n nam_ent_ft)) 
    nam_ent_ft ;;

let nam_ent_clu_t = Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = "cluster") nam_ent_ft;;
let nam_ent_clu = "cluster";;
let sym_ent_clu = (Entity_symbol_t.Entity_proper_symbol (Entity_symbol_t.Entity_proper "cluster")) ;;

test_number 1 (
nam_ent_clu_t
(* : string Tree_t.tree *)
  =
Tree_t.Inner ("cluster",
 [Tree_t.Inner ("cluster_fromid", [Tree_t.Leaf "string"]);
  Tree_t.Inner ("protein_fromid", [Tree_t.Leaf "string"])])
);;

test_number 2 (
Entity_symbol_constructor_tree_by_kind_trail_provider_v.make_when_extra_unique_leaf_son "cluster_fromid" nam_ent_clu_t
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "cluster_fromid")))
);;

test_number 3 (
Entity_symbol_constructor_tree_by_kind_trail_provider_v.make_when_extra_unique_leaf_son "protein_fromid" nam_ent_clu_t
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "protein_fromid")))
);;

let sym_ent_son_tl = List.map 
    (Entity_symbol_constructor_tree_by_kind_trail_provider_v.leaf_entity_symbol_self_or_string_or_datastructure_of_tree 
       nam_ent_ft) 
    nam_ent_son_tl;;

let sym_ent_ft = Entity_symbol_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;
let tos_l = Tree_v.topson_node_list_off_tree sym_ent_ft;;
let nod_l = Tree_v.node_list_off_tree sym_ent_ft;;

let sym_ent_clu_t = Tree_v.subtree_of_node_predicate_off_tree (fun n -> Entity_symbol_v.string_off n = "cluster") sym_ent_ft;;

test_number 4 (
sym_ent_clu_t
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
Tree_v.is_complete sym_ent_ft
);;

test_number 6 (
Tree_v.subtree_of_node_predicate_off_tree (fun n -> Entity_symbol_v.string_off n = "cluster_fromid") sym_ent_ft
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
     (Entity_fictive_basicnullary_symbol_t.String "cluster_fromid")))
);;

test_number 7 (
Tree_v.subtree_of_node_predicate_off_tree (fun n -> Entity_symbol_v.string_off n = "protein_fromid") sym_ent_ft
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
     (Entity_fictive_basicnullary_symbol_t.String "protein_fromid")))
);;

test_number 8 (
tos_l
(* : Entity_symbol_constructor_tree_by_kind_trail_provider_u_figure_symbol.Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "atom");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "block");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "bond");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "bridge");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "chain");
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
  (Entity_symbol_t.Entity_proper "mendeleev");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "polypeptide_subunit");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "segment")]
);;

test_number 9 (
nam_ent_sut_l
(* : string Tree_t.tree list *)
=
[Tree_t.Inner ("atom_core_fivetied", [Tree_t.Leaf "cl_sssss"]);
 Tree_t.Inner ("atom_core_sixtied", [Tree_t.Leaf "s_6s"]);
 Tree_t.Inner ("atom_onetied_conjugated", [Tree_t.Leaf "o_c"]);
 Tree_t.Inner ("atom_onetied_double", [Tree_t.Leaf "o_d"]);
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
 Tree_t.Inner ("mendeleev", [Tree_t.Leaf "skipped"]);
 Tree_t.Inner ("molecule_bridged_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("molecule_dendrimer_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("molecule_forked_fromid", [Tree_t.Leaf "string"]);
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

