open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v with
   Constructor_basename_tree_by_domain_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_moleculeset_formula.ml";; 

*)

let tra_dos = Trail_v.make "domain" "moleculeset" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let tra_kin_con = Trail_v.make "kind" "content" tra_cat;;
let tra_kin_typ = Trail_v.make "kind" "type" tra_cat;;
let tra_kin_des = Trail_v.make "kind" "description" tra_cat;;

let wor_t_typ = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_kin_typ;;
let wor_t_con = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_kin_con;;
let wor_t_des = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_kin_des;;

let son_tl = Tree_v.topson_tree_list_off_tree wor_t_con;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

test_number 1 (
tra_kin_typ
(* : Trail_t.trail *) 
=
[("kind", "type"); ("category", "formula"); ("domain", "moleculeset")]
);;

test_number 2 (
Tree_v.topson_node_list_off_tree wor_t_typ
(* : string list *)
  =
["grouping"; "molecule"]
);;

test_number 3 (
wor_t_typ
(* : string Tree_t.tree *)
  =
Tree_t.Inner ("moleculeset",
 [Tree_t.Inner ("grouping",
   [Tree_t.Inner ("grouping_fromid",
     [Tree_t.Leaf "capped_list"; 
      Tree_t.Leaf "fragment:tag";
      Tree_t.Leaf "grouping:tag"])]);
  Tree_t.Inner ("molecule",
   [Tree_t.Inner ("molecule_forked",
     [Tree_t.Leaf "guanidine";
      Tree_t.Inner ("molecule_forked_fromid",
       [Tree_t.Leaf "capped_list"; 
	Tree_t.Leaf "fragment_head:tag";
        Tree_t.Leaf "grouping:tag"])]);
    Tree_t.Inner ("molecule_linear",
     [Tree_t.Inner ("molecule_linear_diatomic",
       [Tree_t.Leaf "capped_list"; 
	Tree_t.Leaf "fragment_head:tag";
        Tree_t.Leaf "grouping:tag"]);
      Tree_t.Inner ("molecule_linear_overdiatomic",
       [Tree_t.Leaf "capped_list"; 
	Tree_t.Leaf "fragment_head:tag";
        Tree_t.Leaf "grouping:tag"])]);
    Tree_t.Inner ("molecule_polymer",
     [Tree_t.Inner ("polypeptide_fromid",
       [Tree_t.Leaf "list"; 
	Tree_t.Leaf "polypeptide_subunit:tag"]);
      Tree_t.Inner ("molecule_polymer_fromid",
       [Tree_t.Leaf "list"; Tree_t.Leaf "polymer_subunit:tag"])])])])
);;

test_number 4 (
subtree_of_node_name "molecule_forked" wor_t_typ
(* : string Tree_t.tree *)
=
Tree_t.Inner ("molecule_forked",
 [Tree_t.Leaf "guanidine";
  Tree_t.Inner ("molecule_forked_fromid",
   [Tree_t.Leaf "capped_list"; 
    Tree_t.Leaf "fragment_head:tag";
    Tree_t.Leaf "grouping:tag"])])
);;

test_number 5 (
subtree_of_node_name "molecule_linear" wor_t_typ
(* : string Tree_t.tree *)
=
Tree_t.Inner ("molecule_linear",
 [Tree_t.Inner ("molecule_linear_diatomic",
   [Tree_t.Leaf "capped_list"; Tree_t.Leaf "fragment_head:tag";
    Tree_t.Leaf "grouping:tag"]);
  Tree_t.Inner ("molecule_linear_overdiatomic",
   [Tree_t.Leaf "capped_list"; Tree_t.Leaf "fragment_head:tag";
    Tree_t.Leaf "grouping:tag"])])
);;

test_number 6 (
subtree_of_node_name "molecule_polymer" wor_t_typ
(* : string Tree_t.tree *)
=
Tree_t.Inner ("molecule_polymer",
 [Tree_t.Inner ("polypeptide_fromid",
   [Tree_t.Leaf "list"; Tree_t.Leaf "polypeptide_subunit:tag"]);
  Tree_t.Inner ("molecule_polymer_fromid",
   [Tree_t.Leaf "list"; Tree_t.Leaf "polymer_subunit:tag"])])
);;

test_number 7 (
tra_kin_con
(* : Trail_t.trail *) 
=
[("kind", "content"); ("category", "formula"); ("domain", "moleculeset")]
);;

test_number 8 (
Tree_v.topson_node_list_off_tree wor_t_con
(* : string list *)
  =
[]
);;

test_number 9 (
wor_t_con
(* : string Tree_t.tree *)
  =
Tree_t.Leaf "moleculeset"
);;

test_number 10 (
tra_kin_des
(* : Trail_t.trail *) 
=
[("kind", "description"); ("category", "formula"); ("domain", "moleculeset")]
);;

test_number 11 (
Tree_v.topson_node_list_off_tree wor_t_des
(* : string list *)
  =
[]
);;

test_number 12 (
wor_t_des
(* : string Tree_t.tree *)
  =
  Tree_t.Empty
);;

