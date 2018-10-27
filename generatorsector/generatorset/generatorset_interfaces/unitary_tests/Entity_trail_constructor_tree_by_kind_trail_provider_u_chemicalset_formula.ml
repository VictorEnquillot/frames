open Make_test_v;;

testing "Entity_trail_constructor_tree_by_kind_trail_provider_v with
   Entity_trail_constructor_tree_by_kind_trail_provider_u_chemicalset_formula.ml";;

(* toplevel 
   #use "Entity_trail_constructor_tree_by_kind_trail_provider_u_chemicalset_formula.ml";; 
*)

let tra_cat = [("category", "formula"); ("domain", "chemicalset")];;
let wor_t = Word_tree_by_kind_trail_provider_v.provide tra_cat;;
let et_dos = Entity_trail_constructor_tree_by_kind_trail_provider_v.provide tra_cat;;
let tos_l = Tree_v.topson_node_list_off_tree et_dos;;
let de6_tl = Tree_v.subtree_list_of_depth_off_tree 6 et_dos;;
let de7_tl = Tree_v.subtree_list_of_depth_off_tree 7 et_dos;;
let de8_tl = Tree_v.subtree_list_of_depth_off_tree 8 et_dos;;

let select_trail key nam tra =
Trail_v.value_of_key_off_trail tra "entity" = nam 
;;

test_number 1 (
tos_l
(* : Entity_trail_constructor_tree_by_kind_trail_provider_v.Trail_t.trail list *)
=
[[("entity", "block"); ("category", "formula"); ("domain", "chemicalset")];
 [("entity", "cluster"); ("category", "formula");
  ("domain", "chemicalset")];
 [("entity", "coffer"); ("category", "formula");
  ("domain", "chemicalset")];
 [("entity", "fragment"); ("category", "formula");
  ("domain", "chemicalset")];
 [("entity", "grouping"); ("category", "formula");
  ("domain", "chemicalset")];
 [("entity", "molecule"); ("category", "formula");
  ("domain", "chemicalset")];
 [("entity", "polypeptide_subunit"); ("category", "formula");
  ("domain", "chemicalset")];
 [("entity", "segment"); ("category", "formula");
  ("domain", "chemicalset")]]
);;

test_number 2 (
Tree_v.subtree_of_node_predicate_off_tree (select_trail "entity" "fragment_onetied_zerotied") et_dos
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "fragment_onetied_zerotied"); ("category", "formula");
   ("domain", "chemicalset")],
 [Tree_t.Leaf
   [("entity", "list"); ("category", "formula");
    ("domain", "chemicalset")];
  Tree_t.Leaf
   [("entity", "block:mark"); ("category", "formula");
    ("domain", "chemicalset")]])
);;

test_number 3 (
Tree_v.subtree_of_node_predicate_off_tree (select_trail "entity" "molecule_forked") et_dos
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "molecule_forked"); ("category", "formula");
   ("domain", "chemicalset")],
 [Tree_t.Leaf
   [("entity", "doublet"); ("category", "formula");
    ("domain", "chemicalset")];
  Tree_t.Leaf
   [("entity", "fragment_head:mark"); ("category", "formula");
    ("domain", "chemicalset")];
  Tree_t.Leaf
   [("entity", "grouping:mark"); ("category", "formula");
    ("domain", "chemicalset")]])
);;

test_number 4 (
Tree_v.subtree_of_node_predicate_off_tree (select_trail "entity" "cluster") et_dos
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "cluster"); ("category", "formula");
   ("domain", "chemicalset")],
 [Tree_t.Inner
   ([("entity", "cluster_fromid"); ("category", "formula");
     ("domain", "chemicalset")],
   [Tree_t.Leaf
     [("entity", "list"); ("category", "formula");
      ("domain", "chemicalset")];
    Tree_t.Leaf
     [("entity", "molecule:mark"); ("category", "formula");
      ("domain", "chemicalset")]]);
  Tree_t.Inner
   ([("entity", "protein_fromid"); ("category", "formula");
     ("domain", "chemicalset")],
   [Tree_t.Leaf
     [("entity", "list"); ("category", "formula");
      ("domain", "chemicalset")];
    Tree_t.Leaf
     [("entity", "polypeptide:mark"); ("category", "formula");
      ("domain", "chemicalset")]])])
);;

