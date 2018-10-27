open Make_test_v;;

testing "Builder_basename_subtree_by_constructor_leaf_trail_provider_v with
   Builder_basename_subtree_by_constructor_leaf_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Builder_basename_subtree_by_constructor_leaf_trail_provider_u_generatorset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;
let tra_ent_lea = Trail_v.make "entity" "triangle_isoceles_equilateral" tra_cat;;

let nam_bui_st = Builder_basename_subtree_by_constructor_leaf_trail_provider_v.provide tra_ent_lea;;

let son_tl = Tree_v.topson_tree_list_off_tree nam_bui_st;;
let nod_lea_l = Tree_v.leaf_node_list_off_tree nam_bui_st;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

test_number 1 (
 tra_ent_lea 
(* : Trail_t.trail *)
  =
[("entity", "triangle_isoceles_equilateral"); 
 ("category", "formula");
 ("domain", "generatorset")]
);;

test_number 2 (
son_tl 
(* : string Tree_t.tree list *)
  =
[Tree_t.Inner ("point_3d",
	       [Tree_t.Inner ("x_3d", [Tree_t.Leaf "float"]);
		Tree_t.Inner ("y_3d", [Tree_t.Leaf "float"]);
		Tree_t.Inner ("z_3d", [Tree_t.Leaf "float"])]);
 Tree_t.Inner ("vector_3d",
	       [Tree_t.Inner ("point_3d",
			      [Tree_t.Inner ("x_3d", [Tree_t.Leaf "float"]);
			       Tree_t.Inner ("y_3d", [Tree_t.Leaf "float"]);
			       Tree_t.Inner ("z_3d", [Tree_t.Leaf "float"])])])]
);;

test_number 3 (
nod_lea_l 
(* : string list *)
=
  ["float"; "float"; "float"; "float"; "float"; "float"]
);;

test_number 4 (
nam_bui_st
(* : string Tree_t.tree *)
  =
  Tree_t.Inner ("triangle_isoceles_equilateral",
   [Tree_t.Inner ("point_3d",
     [Tree_t.Inner ("x_3d", [Tree_t.Leaf "float"]);
      Tree_t.Inner ("y_3d", [Tree_t.Leaf "float"]);
      Tree_t.Inner ("z_3d", [Tree_t.Leaf "float"])]);
    Tree_t.Inner ("vector_3d",
     [Tree_t.Inner ("point_3d",
       [Tree_t.Inner ("x_3d", [Tree_t.Leaf "float"]);
        Tree_t.Inner ("y_3d", [Tree_t.Leaf "float"]);
        Tree_t.Inner ("z_3d", [Tree_t.Leaf "float"])])])])
);;


