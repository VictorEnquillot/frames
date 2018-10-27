open Make_test_v;;

testing "Constructor_node_basename_list_by_domain_trail_provider_v
   Constructor_node_basename_list_by_domain_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Constructor_node_basename_list_by_domain_trail_provider_u_generatorset.ml";;

*)

let nam_dos = "generatorset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_ent_str_rhs_dol = Constructor_node_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_ent_str_rhs_dol
(* : string list *)
=
["generatorset";
 "triangle";
 "triangle_isoceles";
 "triangle_scalene";
 "vector";
 "point";
 "coordinate";
 "coordinate_3d";
 "coordinate_2d";
 "coordinate_cartesian_3d";
 "coordinate_cylindrical";
 "coordinate_spherical";
 "coordinate_cartesian_2d";
 "coordinate_polar"]
);;
 

