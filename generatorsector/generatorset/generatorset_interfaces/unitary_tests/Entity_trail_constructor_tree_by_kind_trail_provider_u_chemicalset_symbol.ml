open Make_test_v;;

testing "Entity_trail_constructor_tree_by_kind_trail_provider_v with
   Entity_trail_constructor_tree_by_kind_trail_provider_u_chemicalset_symbol.ml";;

(* toplevel 
   #use "Entity_trail_constructor_tree_by_kind_trail_provider_u_chemicalset_symbol.ml";; 
*)

let tra_cat = [("category", "symbol"); ("domain", "chemicalset")];;
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
List_v.sublist_of_int_of_int_of_list 0 10 tos_l
(* : Entity_trail_constructor_tree_by_kind_trail_provider_v.Trail_t.trail list *)
=
[[("entity", "atom"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "block"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "bond"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "bridge"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "chain"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "cluster"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "coffer"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "cterminal_subunit"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "fragment"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "grouping"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "mendeleev"); ("category", "symbol");
  ("domain", "chemicalset")]]
);;

test_number 2 (
Tree_v.subtree_of_node_predicate_off_tree (select_trail "entity" "bond") et_dos
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "bond"); ("category", "symbol"); ("domain", "chemicalset")],
 [Tree_t.Leaf
   [("entity", "bond_covalent"); ("category", "symbol");
    ("domain", "chemicalset")];
  Tree_t.Leaf
   [("entity", "bond_hydrogen"); ("category", "symbol");
    ("domain", "chemicalset")];
  Tree_t.Leaf
   [("entity", "bond_ionic"); ("category", "symbol");
    ("domain", "chemicalset")]])
);;

test_number 3 (
Tree_v.subtree_of_node_predicate_off_tree (select_trail "entity" "polypeptide") et_dos
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "polypeptide"); ("category", "symbol");
   ("domain", "chemicalset")],
 [Tree_t.Inner
   ([("entity", "polypeptide_fromid"); ("category", "symbol");
     ("domain", "chemicalset")],
   [Tree_t.Leaf
     [("entity", "string"); ("category", "symbol");
      ("domain", "chemicalset")]])])
);;

test_number 4 (
Tree_v.subtree_of_node_predicate_off_tree (select_trail "entity" "cluster") et_dos
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "cluster"); ("category", "symbol");
   ("domain", "chemicalset")],
 [Tree_t.Inner
   ([("entity", "cluster_fromid"); ("category", "symbol");
     ("domain", "chemicalset")],
   [Tree_t.Leaf
     [("entity", "string"); ("category", "symbol");
      ("domain", "chemicalset")]]);
  Tree_t.Inner
   ([("entity", "protein_fromid"); ("category", "symbol");
     ("domain", "chemicalset")],
   [Tree_t.Leaf
     [("entity", "string"); ("category", "symbol");
      ("domain", "chemicalset")]])])
);;

test_number 5 (
tos_l
(* : Trail_t.trail list *)
=
[[("entity", "atom"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "block"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "bond"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "bridge"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "chain"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "cluster"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "coffer"); ("category", "symbol"); ("domain", "chemicalset")];
 [("entity", "cterminal_subunit"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "fragment"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "grouping"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "mendeleev"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "molecule"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "polypeptide_subunit"); ("category", "symbol");
  ("domain", "chemicalset")];
 [("entity", "segment"); ("category", "symbol");
  ("domain", "chemicalset")]]
);;

