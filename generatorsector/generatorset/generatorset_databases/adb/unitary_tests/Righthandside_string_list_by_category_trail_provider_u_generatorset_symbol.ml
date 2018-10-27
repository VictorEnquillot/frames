open Make_test_v;;

testing "Righthandside_string_list_by_category_trail_provider_v
   Righthandside_string_list_by_category_trail_provider_u_generatorset_symbol.ml";; 

(* toplevel 
   #use "Righthandside_string_list_by_category_trail_provider_u_generatorset_symbol.ml";;

*)

let nam_dos = "generatorset";;
let nam_cat = "symbol";;


let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let str_rhs_l = Righthandside_string_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
str_rhs_l
(* : string list *)
=
  ["1d 2d 3d"; "triangle vector point coordinate";
   "triangle_isoceles triangle_scalene";
   "triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse";
   "triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse";
   "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical";
   "x y z"; "cylindrical_rho cylindrical_phi cylindrical_zed";
   "spherical_rho spherical_phi spherical_theta"; "polar_rho polar_theta"]
);;

