open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v with
   Constructor_basename_tree_by_domain_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_figureset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "figure" [];;

let nam_con_t = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_con_t
(* : string Tree_t.tree *)
  =
 Tree_t.Inner ("figure",
   [Tree_t.Inner ("coordinate",
     [Tree_t.Inner ("coordinate_cartesian",
       [Tree_t.Leaf "x:ofstring"; Tree_t.Leaf "y:ofstring";
        Tree_t.Leaf "z:ofstring"]);
      Tree_t.Inner ("coordinate_cylindrical",
       [Tree_t.Leaf "cylindrical_rho"; Tree_t.Leaf "cylindrical_phi";
        Tree_t.Leaf "cylindrical_zed"]);
      Tree_t.Inner ("coordinate_polar",
       [Tree_t.Leaf "polar_rho"; Tree_t.Leaf "polar_theta"]);
      Tree_t.Inner ("coordinate_spherical",
       [Tree_t.Leaf "spherical_rho"; Tree_t.Leaf "spherical_phi";
        Tree_t.Leaf "spherical_theta"])]);
    Tree_t.Inner ("point", [Tree_t.Leaf "point_constructor:ofstring"]);
    Tree_t.Inner ("triangle",
     [Tree_t.Inner ("triangle_isoceles",
       [Tree_t.Leaf "triangle_isoceles_equilateral:ofstring";
        Tree_t.Leaf "triangle_isoceles_right:ofstring";
        Tree_t.Leaf "triangle_isoceles_acute:ofstring";
        Tree_t.Leaf "triangle_isoceles_obtuse:ofstring"]);
      Tree_t.Inner ("triangle_scalene",
       [Tree_t.Leaf "triangle_scalene_right:ofstring";
        Tree_t.Leaf "triangle_scalene_acute:ofstring";
        Tree_t.Leaf "triangle_scalene_obtuse:ofstring"])]);
    Tree_t.Inner ("vector", [Tree_t.Leaf "vector_constructor:ofstring"]);
    Tree_t.Inner ("fake",
     [Tree_t.Inner ("fake_son", [Tree_t.Leaf "fake_son_constructor"])])])
);;

let son_tl = Tree_v.topson_tree_list_off_tree nam_con_t;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

let son_l = Tree_v.topson_node_list_off_tree nam_con_t;;

test_number 2 (
son_l
(* : string list *)
  =
  ["coordinate"; "point"; "triangle"; "vector"; "fake"]
);;

let lea_l = Tree_v.leaf_node_list_off_tree nam_con_t;;

test_number 3 (
lea_l
=
  ["x:ofstring";
   "y:ofstring";
   "z:ofstring";
   "cylindrical_rho";
   "cylindrical_phi";
   "cylindrical_zed";
   "polar_rho";
   "polar_theta";
   "spherical_rho";
   "spherical_phi";
   "spherical_theta";
   "point_constructor:ofstring";
   "triangle_isoceles_equilateral:ofstring";
   "triangle_isoceles_right:ofstring";
   "triangle_isoceles_acute:ofstring";
   "triangle_isoceles_obtuse:ofstring";
   "triangle_scalene_right:ofstring";
   "triangle_scalene_acute:ofstring";
   "triangle_scalene_obtuse:ofstring";
   "vector_constructor:ofstring";
   "fake_son_constructor"]
);;
