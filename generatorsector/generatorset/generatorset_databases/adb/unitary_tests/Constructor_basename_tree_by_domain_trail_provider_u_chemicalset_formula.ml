open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v with
   Constructor_basename_tree_by_domain_trail_provider_u_chemicalset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_chemicalset_formula.ml";; 

*)

let nam_dos = "chemicalset";;
let tra_cat = [("category", "formula"); ("domain", nam_dos)];;

let tra_cat_sym = [("category", "symbol"); ("domain", nam_dos)];;
let wor_ft_sym = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_cat_sym;;

let has_tree_of_node_off_tree nod tre = (fun t -> Tree_v.root_node_off_tree t = nod) tre;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

let wor_ft_for = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_cat;;
let son_tl = Tree_v.topson_tree_list_off_tree wor_ft_for;;

let fin = Database_filename_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
fin
(* Filename_p.filename *) 
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/chemicalset/chemicalset_code_formulas.set"
);;

test_number 2 (
let _ = try List.filter (fun t -> Tree_v.noleaf_root_off_tree t = "atom") son_tl
(* : string Tree_t.tree list *)
with Failure "Leaf:noleaf_root_off_tree" -> []
in 
[]
=
[]
);;

test_number 3 (
Tree_v.topson_node_list_off_tree wor_ft_for
(* : string list *)
  =
["block"; "cluster"; "coffer"; "fragment"; "grouping"; "molecule";
 "polypeptide_subunit"; "segment"]
);;

test_number 4 (
Tree_v.topson_node_list_off_tree wor_ft_sym
(* : string list *)
  =
["atom"; "block"; "bond"; "bridge"; "chain"; "cluster"; "coffer"; "fragment";
 "grouping"; "mendeleev"; "molecule"; "polypeptide_subunit"; "segment"]
);;

test_number 5 (
subtree_of_node_name "cluster" wor_ft_for
(* : string Tree_t.tree *)
=
Tree_t.Inner ("cluster",
 [Tree_t.Inner ("cluster_fromid",
   [Tree_t.Leaf "list"; Tree_t.Leaf "molecule:tag"]);
  Tree_t.Inner ("protein_fromid",
   [Tree_t.Leaf "list"; Tree_t.Leaf "polypeptide:tag"])])
);;

test_number 6 (
subtree_of_node_name "cluster" wor_ft_sym
(* : string Tree_t.tree *)
=
Tree_t.Inner ("cluster",
 [Tree_t.Inner ("cluster_fromid", [Tree_t.Leaf "string"]);
  Tree_t.Inner ("protein_fromid", [Tree_t.Leaf "string"])])
);;

test_number 7 (
subtree_of_node_name "cluster_fromid" wor_ft_for 
(* : string Tree_t.tree *)
=
Tree_t.Inner ("cluster_fromid",
 [Tree_t.Leaf "list"; Tree_t.Leaf "molecule:tag"])
);;

test_number 8 (
subtree_of_node_name "protein_fromid" wor_ft_for 
(* : string Tree_t.tree *)
=
Tree_t.Inner ("protein_fromid",
 [Tree_t.Leaf "list"; Tree_t.Leaf "polypeptide:tag"])
);;

test_number 9 (
subtree_of_node_name "grouping" wor_ft_for 
(* : string Tree_t.tree *)
=
Tree_t.Inner ("grouping",
 [Tree_t.Leaf "empty";
  Tree_t.Inner ("fragment_leaf",
   [Tree_t.Leaf "block_onetied_zerotied";
    Tree_t.Inner ("fragment_onetied_zerotied",
     [Tree_t.Leaf "list"; Tree_t.Leaf "block:tag"]);
    Tree_t.Inner ("fragment_leaf_fromid",
     [Tree_t.Leaf "list"; Tree_t.Leaf "block:tag"]);
    Tree_t.Inner ("fragment_leaf_leftextended_fromid",
     [Tree_t.Leaf "list"; Tree_t.Leaf "block:tag"]);
    Tree_t.Inner ("fragment_leaf_halfbridgetailed",
     [Tree_t.Leaf "list"; Tree_t.Leaf "block:tag"])]);
  Tree_t.Leaf "fragment_tree";
  Tree_t.Inner ("polypeptide_sidegroup",
   [Tree_t.Leaf "capped_list"; Tree_t.Leaf "fragment:tag";
    Tree_t.Leaf "grouping:tag"]);
  Tree_t.Inner ("grouping_fromid",
   [Tree_t.Leaf "capped_list"; Tree_t.Leaf "fragment:tag";
    Tree_t.Leaf "grouping:tag"])])
);;

test_number 10 (
subtree_of_node_name "grouping" wor_ft_sym 
(* : string Tree_t.tree *)
=
Tree_t.Inner ("grouping",
 [Tree_t.Leaf "empty";
  Tree_t.Inner ("fragment_leaf",
   [Tree_t.Leaf "block_onetied_zerotied";
    Tree_t.Inner ("fragment_onetied_zerotied",
     [Tree_t.Leaf "s_ch_d_cd_ch2_z"; Tree_t.Leaf "s_ch_s_ch3_ch_s_ch3_z";
      Tree_t.Leaf "s_ch_d_nh_z"; Tree_t.Leaf "s_ch_d_nh_cco_s_ch3_z";
      Tree_t.Leaf "s_ch2_s_ch2_s_s_s_ch3_z"; Tree_t.Leaf "s_ch2_s_ch3_z";
      Tree_t.Leaf "s_ch2r2_s_ch3_z"; Tree_t.Leaf "s_ch2r3_s_ch3_z";
      Tree_t.Leaf "s_ch2r4_s_ch3_z"; Tree_t.Leaf "s_ch2r5_s_ch3_z";
      Tree_t.Leaf "s_ch2_s_oh_z"; Tree_t.Leaf "s_ch2_cco_cnh2_z";
      Tree_t.Leaf "s_ch2_d_co_s_oh_z"; Tree_t.Leaf "s_ch2_s_coo_z"]);
    Tree_t.Inner ("fragment_leaf_fromid", [Tree_t.Leaf "string"]);
    Tree_t.Inner ("fragment_leaf_leftextended_fromid",
     [Tree_t.Leaf "string"]);
    Tree_t.Inner ("fragment_leaf_halfbridgetailed",
     [Tree_t.Leaf "c_ch_cr5_hb_c"])]);
  Tree_t.Leaf "fragment_tree";
  Tree_t.Inner ("polypeptide_sidegroup",
   [Tree_t.Leaf "sidegroup_alanine"; Tree_t.Leaf "sidegroup_arginine";
    Tree_t.Leaf "sidegroup_asparagine"; Tree_t.Leaf "sidegroup_aspartic";
    Tree_t.Leaf "sidegroup_cysteine"; Tree_t.Leaf "sidegroup_glutamine";
    Tree_t.Leaf "sidegroup_glutamic"; Tree_t.Leaf "sidegroup_histidine";
    Tree_t.Leaf "sidegroup_isoleucine"; Tree_t.Leaf "sidegroup_leucine";
    Tree_t.Leaf "sidegroup_lysine"; Tree_t.Leaf "sidegroup_methionine";
    Tree_t.Leaf "sidegroup_phenylalanine"; Tree_t.Leaf "sidegroup_serine";
    Tree_t.Leaf "sidegroup_threonine"; Tree_t.Leaf "sidegroup_tryptophan";
    Tree_t.Leaf "sidegroup_tyrosine"; Tree_t.Leaf "sidegroup_valine"]);
  Tree_t.Inner ("grouping_fromid", [Tree_t.Leaf "string"])])
);;
