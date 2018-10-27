open Make_test_v;;

testing "Entity_symbol_constructor_tree_by_kind_trail_provider_v with
   Entity_symbol_constructor_tree_by_kind_trail_provider_u_chemicalset_tag.ml";; 

(* toplevel 
   #use "Entity_symbol_constructor_tree_by_kind_trail_provider_u_chemicalset_tag.ml";; 
*)

let entity_basename_fulltree = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide;;

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make "tag";;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let est_dos = Entity_symbol_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;

let nam_ent_t = entity_basename_fulltree tag_cat;;
let nam_ent_roo = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_son_tl = Tree_v.topson_tree_list_off_tree nam_ent_t;;

let tos_l = Tree_v.topson_node_list_off_tree est_dos;;
let de6_tl = Tree_v.subtree_list_of_depth_off_tree 6 est_dos;;
let de7_tl = Tree_v.subtree_list_of_depth_off_tree 7 est_dos;;
let de8_tl = Tree_v.subtree_list_of_depth_off_tree 8 est_dos;;

let sym_ent_t = Entity_symbol_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;
let nod_l = Tree_v.node_list_off_tree sym_ent_t;;

let nam_ent_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree (fun n -> (Tree_v.is_inner_of_node_off_tree n nam_ent_t) && (Tree_v.has_unique_leaf_son_of_node_of_tree n nam_ent_t)) nam_ent_t ;;

let de4_tl = Tree_v.subtree_list_of_depth_off_tree 4 sym_ent_t;;
let de5_tl = Tree_v.subtree_list_of_depth_off_tree 5 sym_ent_t;;

let sym_ent_son_tl = List.map (Entity_symbol_constructor_tree_by_kind_trail_provider_v.leaf_entity_symbol_self_or_string_or_datastructure_of_tree nam_ent_t) nam_ent_son_tl;;

let fromid_nam_t = Tree_v.subtree_of_node_predicate_off_tree (fun s -> s = "fromid") nam_ent_t;;

let fromid_sym_t = Tree_v.subtree_of_node_predicate_off_tree (fun e -> Entity_symbol_v.string_off e = "fromid") sym_ent_t;;

test_number 1 (
Tree_v.is_complete est_dos
);;

test_number 2 (
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
  (Entity_symbol_t.Entity_proper "cterminal_subunit");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "fragment");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "grouping");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "mendeleev");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "peptideca");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "protein");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "polypeptide_sidegroup");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "residue");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "segment")]
);;

test_number 3 (
nam_ent_sut_l
(* : string Tree_t.tree list *)
=
[Tree_t.Inner ("atom_onetied_conjugated", [Tree_t.Leaf "o_c"]);
 Tree_t.Inner ("atom_onetied_double", [Tree_t.Leaf "o_d"]);
 Tree_t.Inner ("atom_twotied_singledouble", [Tree_t.Leaf "n_sd"]);
 Tree_t.Inner ("atom_twotied_conjugated_double", [Tree_t.Leaf "c_cd"]);
 Tree_t.Inner ("atom_threetied_doubledouble_double", [Tree_t.Leaf "s_ddd"]);
 Tree_t.Inner ("atom_fivetied", [Tree_t.Leaf "cl_5s"]);
 Tree_t.Inner ("atom_sixtied", [Tree_t.Leaf "s_6s"]);
 Tree_t.Inner ("block_zerozero_diatomic", [Tree_t.Leaf "co_zz"]);
 Tree_t.Inner ("block_zeroonetriple", [Tree_t.Leaf "ch_t"]);
 Tree_t.Inner ("cluster", [Tree_t.Leaf "fromid"]);
 Tree_t.Inner ("block_zerozero_diatomic", [Tree_t.Leaf "co_zz"]);
 Tree_t.Inner ("mendeleev", [Tree_t.Leaf "skipped"]);
 Tree_t.Inner ("molecule_aminoacid_segmented", [Tree_t.Leaf "glycine"]);
 Tree_t.Inner ("molecule_dendrimer", [Tree_t.Leaf "fake_d2"]);
 Tree_t.Inner ("molecule_forked_oneforked", [Tree_t.Leaf "guanidine"]);
 Tree_t.Inner ("molecule_forked_twoforked", [Tree_t.Leaf "fake_2"]);
 Tree_t.Inner ("molecule_forked_threeforked", [Tree_t.Leaf "fake_3"]);
 Tree_t.Inner ("molecule_forked_moreforked", [Tree_t.Leaf "fake_4"]);
 Tree_t.Inner ("molecule_linear_tetratomic", [Tree_t.Leaf "ammonia"]);
 Tree_t.Inner ("molecule_linear_pentatomic", [Tree_t.Leaf "methane"]);
 Tree_t.Inner ("molecule_linear_polyatomic", [Tree_t.Leaf "glycine"]);
 Tree_t.Inner ("peptideca_buried_segmented",
  [Tree_t.Leaf "molecule_aminoacid_glycine"]);
 Tree_t.Inner ("peptideca_nterminal_segmented",
  [Tree_t.Leaf "molecule_aminoacid_glycine"]);
 Tree_t.Inner ("frompdbid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("residue_nterminal_segmented",
  [Tree_t.Leaf "molecule_aminoacid_glycine"]);
 Tree_t.Inner ("residue_buried_segmented",
  [Tree_t.Leaf "molecule_aminoacid_glycine"]);
 Tree_t.Inner ("block_zeroonetriple", [Tree_t.Leaf "ch_t"])]
);;

test_number 4 (
 List_v.sublist_of_int_of_int_of_list 0 36 de7_tl
(* : Entity_symbol_t.entity_symbol Tree_t.tree list *)
=
[Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "f_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "h_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cl_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "br_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "i_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "o_2m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "s_2m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "h_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "k_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "li_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "na_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ni_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cu_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "mg_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ca_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "fe_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "zn_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cu_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "fe_3p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ni_3p")));
 Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "block_onesinglebiforksinglesingle"),
  [Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "c_s2")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "n_s2_1p")))]);
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "block_onesinglebiforksinglesingleconjugated")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "c_ds2")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "n_ds2_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "c_ss3")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "n_ss3_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ar")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "he")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "kr")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ne")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "xe")));
 Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "atom_zerotied_anion_minusone"),
  [Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "f_1m")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "h_1m")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "cl_1m")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "br_1m")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "i_1m")))]);
 Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "atom_zerotied_anion_minustwo"),
  [Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "o_2m")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "s_2m")))]);
 Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "atom_zerotied_cation_plusone"),
  [Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "h_1p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "k_1p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "li_1p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "na_1p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "ni_1p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "cu_1p")))]);
 Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "atom_zerotied_cation_plustwo"),
  [Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "mg_2p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "ca_2p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "fe_2p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "zn_2p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "cu_2p")))]);
 Tree_t.Inner
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "atom_zerotied_cation_plusthree"),
  [Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "fe_3p")));
   Tree_t.Leaf
    (Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "ni_3p")))]);
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "hbc")))]
);;

test_number 5 (
List_v.sublist_of_int_of_int_of_list 37 38 de7_tl
(* : Entity_symbol_t.entity_symbol Tree_t.tree list *)
=
[Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "hbd")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "hbs")))]
);;

test_number 6 (
de8_tl
(* : Entity_symbol_t.entity_symbol Tree_t.tree list *)
=
[Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "c_s2")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "n_s2_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "f_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "h_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cl_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "br_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "i_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "o_2m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "s_2m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "h_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "k_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "li_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "na_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ni_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cu_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "mg_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ca_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "fe_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "zn_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cu_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "fe_3p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ni_3p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "c_s2")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "n_s2_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "f_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "h_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cl_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "br_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "i_1m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "o_2m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "s_2m")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "h_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "k_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "li_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "na_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ni_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cu_1p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "mg_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ca_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "fe_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "zn_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "cu_2p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "fe_3p")));
 Tree_t.Leaf
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "ni_3p")))]
);;

