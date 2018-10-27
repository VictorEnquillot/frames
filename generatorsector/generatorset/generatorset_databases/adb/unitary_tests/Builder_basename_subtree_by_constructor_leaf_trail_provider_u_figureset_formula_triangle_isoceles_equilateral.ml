open Make_test_v;;

testing "Builder_basename_subtree_by_constructor_leaf_trail_provider_v with
   Builder_basename_subtree_by_constructor_leaf_trail_provider_u_figureset_formula_triangle_isoceles_equilateral.ml";; 

(* toplevel 
   #use "Builder_basename_subtree_by_constructor_leaf_trail_provider_u_figureset_formula_triangle_isoceles_equilateral.ml";; 

*)

let tra_dos = Trail_v.make "domain" "figure" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;
let tra_ent_lea = Trail_v.make "entity" "triangle_isoceles_equilateral" tra_cat;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

test_number 1 (
 tra_ent_lea 
(* : Trail_t.trail *)
  =
[("entity", "triangle_isoceles_equilateral"); 
 ("category", "formula");
 ("domain", "figure")]
);;

let nam_bui_sut = Builder_basename_subtree_by_constructor_leaf_trail_provider_v.provide tra_ent_lea;;

test_number 2 (
nam_bui_sut
(* : string Tree_t.tree *)
  =
Tree_t.Inner ("triangle_isoceles_equilateral",
	      [Tree_t.Leaf "point"; 
	       Tree_t.Leaf "vector"])
);;

let son_tos_l = Tree_v.topson_tree_list_off_tree nam_bui_sut;;

test_number 3 (
son_tos_l 
(* : string Tree_t.tree list *)
  =
  [Tree_t.Leaf "point"; Tree_t.Leaf "vector"]
);;

let nod_lea_l = Tree_v.leaf_node_list_off_tree nam_bui_sut;;

test_number 4 (
nod_lea_l 
(* : string list *)
=
  ["float"; "float"; "float"; "float"; "float"; "float"]
);;

