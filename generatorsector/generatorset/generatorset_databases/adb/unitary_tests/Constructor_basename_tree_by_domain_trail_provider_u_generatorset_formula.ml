open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v with
   Constructor_basename_tree_by_domain_trail_provider_u_generatorset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_generatorset_formula.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;

let nam_con_t = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_dos;;

let son_tl = Tree_v.topson_tree_list_off_tree nam_con_t;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

test_number 1 (
Tree_v.topson_node_list_off_tree nam_con_t
(* : string list *)
  =
["triangle"; "vector"; "point"; "coordinate"]
);;

test_number 2 (
Tree_v.leaf_node_list_off_tree nam_con_t
=
["triangle_isoceles_equilateral"; "triangle_isoceles_right";
 "triangle_isoceles_acute"; "triangle_isoceles_obtuse";
 "triangle_scalene_right"; "triangle_scalene_acute";
 "triangle_scalene_obtuse"; "vector_3d"; "vector_2d"; "vector_1d";
 "point_3d"; "point_2d"; "point_1d"; "x_3d"; "y_3d"; "z_3d";
 "cylindrical_rho"; "cylindrical_phi"; "cylindrical_zed"; "spherical_rho";
 "spherical_phi"; "spherical_theta"; "x_2d"; "y_2d"; "polar_rho";
 "polar_theta"; "coordinate_1d"]
);;

test_number 3 (
nam_con_t
(* : string Tree_t.tree *)
  =
Tree_t.Inner ("generatorset",
 [Tree_t.Inner ("triangle",
   [Tree_t.Inner ("triangle_isoceles",
     [Tree_t.Leaf "triangle_isoceles_equilateral";
      Tree_t.Leaf "triangle_isoceles_right";
      Tree_t.Leaf "triangle_isoceles_acute";
      Tree_t.Leaf "triangle_isoceles_obtuse"]);
    Tree_t.Inner ("triangle_scalene",
     [Tree_t.Leaf "triangle_scalene_right";
      Tree_t.Leaf "triangle_scalene_acute";
      Tree_t.Leaf "triangle_scalene_obtuse"])]);
  Tree_t.Inner ("vector",
   [Tree_t.Leaf "vector_3d"; Tree_t.Leaf "vector_2d";
    Tree_t.Leaf "vector_1d"]);
  Tree_t.Inner ("point",
   [Tree_t.Leaf "point_3d"; Tree_t.Leaf "point_2d"; Tree_t.Leaf "point_1d"]);
  Tree_t.Inner ("coordinate",
   [Tree_t.Inner ("coordinate_3d",
     [Tree_t.Inner ("coordinate_cartesian_3d",
       [Tree_t.Leaf "x_3d"; Tree_t.Leaf "y_3d"; Tree_t.Leaf "z_3d"]);
      Tree_t.Inner ("coordinate_cylindrical",
       [Tree_t.Leaf "cylindrical_rho"; Tree_t.Leaf "cylindrical_phi";
        Tree_t.Leaf "cylindrical_zed"]);
      Tree_t.Inner ("coordinate_spherical",
       [Tree_t.Leaf "spherical_rho"; Tree_t.Leaf "spherical_phi";
        Tree_t.Leaf "spherical_theta"])]);
    Tree_t.Inner ("coordinate_2d",
     [Tree_t.Inner ("coordinate_cartesian_2d",
       [Tree_t.Leaf "x_2d"; Tree_t.Leaf "y_2d"]);
      Tree_t.Inner ("coordinate_polar",
       [Tree_t.Leaf "polar_rho"; Tree_t.Leaf "polar_theta"])]);
    Tree_t.Leaf "coordinate_1d"])])
);;


