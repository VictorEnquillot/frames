open Make_test_v;;

testing "Builder_basename_tree_list_by_domain_trail_provider_v with
   Builder_basename_tree_list_by_domain_trail_provider_u_musicset.ml";; 

(* toplevel 
   #use "Builder_basename_tree_list_by_domain_trail_provider_u_musicset.ml";; 

*)

let select_tree_of_root_name str tre =
  let rot = Tree_v.root_node_off_tree tre in
  let len = String.length str in
  (String.length rot >= len) 
    &&
  (str = String.sub rot 0 len)
;;

let tra_dos = Trail_v.make "domain" "music" [];;

let nam_bui_tl = Builder_basename_tree_list_by_domain_trail_provider_v.provide tra_dos;;

let roo_l = List.map Tree_v.root_node_off_tree nam_bui_tl;;

test_number 1 (
 roo_l 
(* : string list *)
  =
["triangle_isoceles_equilateral"; "triangle_isoceles_right";
 "triangle_isoceles_acute"; "triangle_isoceles_obtuse";
 "triangle_scalene_right"; "triangle_scalene_acute";
 "triangle_scalene_obtuse"; "vector_2d"; "vector_1d"; "cylindrical_rho";
 "cylindrical_phi"; "cylindrical_zed"; "spherical_rho"; "spherical_phi";
 "spherical_theta"; "polar_rho"; "polar_theta"]
);;

test_number 2 (
List.find (select_tree_of_root_name "triangle_isoceles_equilateral") nam_bui_tl
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

test_number 3 (
List.find (select_tree_of_root_name "polar_rho") nam_bui_tl
(* : string Tree_t.tree *)
=
Tree_t.Inner ("polar_rho", [Tree_t.Leaf "float"])
);;
