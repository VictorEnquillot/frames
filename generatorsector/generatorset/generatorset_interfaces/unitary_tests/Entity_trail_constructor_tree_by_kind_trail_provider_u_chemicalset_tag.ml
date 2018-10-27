open Make_test_v;;

testing "Entity_trail_constructor_tree_by_kind_trail_provider_v with
   Entity_trail_constructor_tree_by_kind_trail_provider_u_chemicalset_tag.ml";;

(* toplevel 
   #use "Entity_trail_constructor_tree_by_kind_trail_provider_u_chemicalset_tag.ml";; 
*)

let sym_tra_cat = [("category", "symbol"); ("domain", "chemicalset")];;
let sym_et_dos = Entity_trail_constructor_tree_by_kind_trail_provider_v.provide sym_tra_cat;;

let tra_cat = [("category", "tag"); ("domain", "chemicalset")];;
let et_dos = Entity_trail_constructor_tree_by_kind_trail_provider_v.provide tra_cat;;

let tos_l = Tree_v.topson_node_list_off_tree et_dos;;
let de6_tl = Tree_v.subtree_list_of_depth_off_tree 6 et_dos;;
let de7_tl = Tree_v.subtree_list_of_depth_off_tree 7 et_dos;;
let de8_tl = Tree_v.subtree_list_of_depth_off_tree 8 et_dos;;

test_number 1 (
List.length (Tree_v.node_list_off_tree et_dos)
=
List.length (Tree_v.node_list_off_tree sym_et_dos)
);;

test_number 2 (
List_v.sublist_of_int_of_int_of_list 0 10 tos_l
(* : Entity_trail_constructor_tree_by_kind_trail_provider_v.Trail_t.trail list *)
=
[[("entity", "atom"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "block"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "bond"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "bridge"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "chain"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "cluster"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "cterminal_subunit"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "fragment"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "grouping"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "mendeleev"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "molecule"); ("category", "tag");
  ("domain", "chemicalset")]]
);;

test_number 3 (
List.nth (Tree_v.topson_tree_list_off_tree  et_dos) 2
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "bond"); ("category", "tag"); ("domain", "chemicalset")],
 [Tree_t.Leaf
   [("entity", "bond_covalent"); ("category", "tag");
    ("domain", "chemicalset")];
  Tree_t.Leaf
   [("entity", "bond_hydrogen"); ("category", "tag");
    ("domain", "chemicalset")];
  Tree_t.Leaf
   [("entity", "bond_ionic"); ("category", "tag");
    ("domain", "chemicalset")]])
);;

test_number 4 (
 List.nth (Tree_v.topson_tree_list_off_tree  et_dos) 12
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "protein"); ("category", "tag");
   ("domain", "chemicalset")],
 [Tree_t.Inner
   ([("entity", "frompdbid"); ("category", "tag");
     ("domain", "chemicalset")],
   [Tree_t.Leaf
     [("entity", "string"); ("category", "tag");
      ("domain", "chemicalset")]])])
);;

test_number 5 (
tos_l
(* : Trail_t.trail list *)
=
[[("entity", "atom"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "block"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "bond"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "bridge"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "chain"); ("category", "tag"); ("domain", "chemicalset")];
 [("entity", "cluster"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "cterminal_subunit"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "fragment"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "grouping"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "mendeleev"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "molecule"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "peptideca"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "protein"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "polypeptide_sidegroup"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "residue"); ("category", "tag");
  ("domain", "chemicalset")];
 [("entity", "segment"); ("category", "tag");
  ("domain", "chemicalset")]]
);;

test_number 6 (
List_v.sublist_of_int_of_int_of_list 0 17 de6_tl
(* : Entity_trail_constructor_tree_by_kind_trail_provider_v.Trail_t.trail Tree_t.tree list *)
=
[Tree_t.Leaf
  [("entity", "f_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "h_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "cl_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "br_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "i_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "o_2m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "s_2m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "h_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "k_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "li_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "na_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "ni_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "cu_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "mg_2p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "ca_2p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "fe_2p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "zn_2p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "cu_2p"); ("category", "tag"); ("domain", "chemicalset")]]
);;

test_number 7 (
List_v.sublist_of_int_of_int_of_list 18 26 de6_tl
(* : Trail_t.trail Tree_t.tree list *)
=
[Tree_t.Leaf
  [("entity", "fe_3p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "ni_3p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "ar"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "he"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "kr"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "ne"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "xe"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Inner
  ([("entity", "atom_zerotied_anion_minusone"); ("category", "tag");
    ("domain", "chemicalset")],
  [Tree_t.Leaf
    [("entity", "f_1m"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "h_1m"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "cl_1m"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "br_1m"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "i_1m"); ("category", "tag");
     ("domain", "chemicalset")]]);
 Tree_t.Inner
  ([("entity", "atom_zerotied_anion_minustwo"); ("category", "tag");
    ("domain", "chemicalset")],
  [Tree_t.Leaf
    [("entity", "o_2m"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "s_2m"); ("category", "tag");
     ("domain", "chemicalset")]])]
);;

test_number 8 (
 List_v.sublist_of_int_of_int_of_list 27 31 de6_tl
(* : Trail_t.trail Tree_t.tree list *)
=
[Tree_t.Inner
  ([("entity", "atom_zerotied_cation_plusone"); ("category", "tag");
    ("domain", "chemicalset")],
  [Tree_t.Leaf
    [("entity", "h_1p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "k_1p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "li_1p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "na_1p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "ni_1p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "cu_1p"); ("category", "tag");
     ("domain", "chemicalset")]]);
 Tree_t.Inner
  ([("entity", "atom_zerotied_cation_plustwo"); ("category", "tag");
    ("domain", "chemicalset")],
  [Tree_t.Leaf
    [("entity", "mg_2p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "ca_2p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "fe_2p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "zn_2p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "cu_2p"); ("category", "tag");
     ("domain", "chemicalset")]]);
 Tree_t.Inner
  ([("entity", "atom_zerotied_cation_plusthree"); ("category", "tag");
    ("domain", "chemicalset")],
  [Tree_t.Leaf
    [("entity", "fe_3p"); ("category", "tag");
     ("domain", "chemicalset")];
   Tree_t.Leaf
    [("entity", "ni_3p"); ("category", "tag");
     ("domain", "chemicalset")]]);
 Tree_t.Leaf
  [("entity", "hbc"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "hbd"); ("category", "tag"); ("domain", "chemicalset")]]
);;

test_number 9 (
List_v.sublist_of_int_of_int_of_list 0 10 de7_tl 
(* : Entity_trail_constructor_tree_by_kind_trail_provider_v.Trail_t.trail Tree_t.tree list *)
=
[Tree_t.Leaf
  [("entity", "f_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "h_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "cl_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "br_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "i_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "o_2m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "s_2m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "h_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "k_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "li_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "na_1p"); ("category", "tag"); ("domain", "chemicalset")]]
);;

test_number 10 (
List_v.sublist_of_int_of_int_of_list 11 17 de7_tl 
(* : Entity_trail_constructor_tree_by_kind_trail_provider_v.Trail_t.trail Tree_t.tree list *)
=
[Tree_t.Leaf
  [("entity", "ni_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "cu_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "mg_2p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "ca_2p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "fe_2p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "zn_2p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "cu_2p"); ("category", "tag"); ("domain", "chemicalset")]]
);;

test_number 11 (
List_v.sublist_of_int_of_int_of_list 0 10 de8_tl 
(* : Entity_trail_constructor_tree_by_kind_trail_provider_v.Trail_t.trail Tree_t.tree list *)
=
[Tree_t.Leaf
  [("entity", "c_s2"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "n_s2_1p"); ("category", "tag");
   ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "f_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "h_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "cl_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "br_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "i_1m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "o_2m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "s_2m"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "h_1p"); ("category", "tag"); ("domain", "chemicalset")];
 Tree_t.Leaf
  [("entity", "k_1p"); ("category", "tag"); ("domain", "chemicalset")]]
);;

