open Make_test_v;;

testing "Constructor_node_basename_list_by_category_trail_provider_v with
   Constructor_node_basename_list_by_category_trail_provider_u_figureset_symbol.ml";; 

(* toplevel 
   #use "Constructor_node_basename_list_by_category_trail_provider_u_figureset_symbol.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_l = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_l
(* : string list *)
=
  ["figure"; "triangle"; "triangle_isoceles"; "triangle_scalene";
   "vector"; "point"; "coordinate"; "coordinate_3d"; "coordinate_2d";
   "coordinate_cartesian_3d"; "coordinate_cylindrical";
   "coordinate_spherical"; "coordinate_cartesian_2d"; "coordinate_polar"]
);;
