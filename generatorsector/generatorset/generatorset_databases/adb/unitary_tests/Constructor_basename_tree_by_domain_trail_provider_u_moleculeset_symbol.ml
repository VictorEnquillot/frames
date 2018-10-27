open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v.ml with 
   Constructor_basename_tree_by_domain_trail_provider_u_figureset_symbol.ml";;

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_figureset_symbol.ml";; 
*)

let tra_cat = [("category", "symbol"); ("domain", "figure")];;
let wlt_dos = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_cat;;

test_number 1 (
wlt_dos
(* : string Tree_t.tree *) 
=
  Tree_t.Inner ("figure",
   [Tree_t.Inner ("triangle",
     [Tree_t.Leaf "triangle_isoceles_equilateral";
      Tree_t.Inner ("triangle_isoceles",
       [Tree_t.Leaf "triangle_isoceles_right";
        Tree_t.Inner ("triangle_isoceles_oblique",
         [Tree_t.Leaf "triangle_isoceles_oblique_acute";
          Tree_t.Leaf "triangle_isoceles_oblique_obtuse"])]);
      Tree_t.Inner ("triangle_scalene",
       [Tree_t.Inner ("triangle_scalene_oblique",
         [Tree_t.Leaf "triangle_scalene_oblique_acute";
          Tree_t.Leaf "triangle_scalene_oblique_obtuse"]);
        Tree_t.Leaf "triangle_scalene_right"])]);
    Tree_t.Inner ("vector", [Tree_t.Leaf "self"]);
    Tree_t.Inner ("point",
     [Tree_t.Inner ("point_fromid", [Tree_t.Leaf "string"])]);
    Tree_t.Inner ("coordinate",
     [Tree_t.Inner ("coordinate_cartesian",
       [Tree_t.Leaf "x"; Tree_t.Leaf "y"; Tree_t.Leaf "z"; Tree_t.Leaf "t"]);
      Tree_t.Inner ("coordinate_cylindrical",
       [Tree_t.Leaf "cylindrical_rho"; Tree_t.Leaf "cylindrical_phi";
        Tree_t.Leaf "cylindrical_zed"]);
      Tree_t.Inner ("coordinate_polar",
       [Tree_t.Leaf "polar_rho"; Tree_t.Leaf "theta"]);
      Tree_t.Inner ("coordinate_spherical",
       [Tree_t.Leaf "spherical_rho"; Tree_t.Leaf "spherical_phi";
        Tree_t.Leaf "psi"])])])
);;

