open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_figureset_list.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_figureset_list.ml";; 

*)

let tra_dos = [("domain", "figure")];;
let wws_trl = Word_word_string_triplet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("constructors", "figure", "coordinate point triangle vector fake");
   ("constructors", "triangle", "triangle_isoceles triangle_scalene");
   ("constructors", "triangle_isoceles",
    "triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse");
   ("constructors", "triangle_scalene",
    "triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse");
   ("constructors", "fake", "fake_son");
   ("constructors", "fake_son", "fake_son_constructor");
   ("constructors", "vector", "vector_constructor");
   ("constructors", "point", "point_constructor:ofstring");
   ("constructors", "coordinate",
    "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("constructors", "coordinate_cartesian",
    "x:ofstring y:ofstring z:ofstring");
   ("constructors", "coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("constructors", "coordinate_spherical",
    "spherical_rho spherical_phi spherical_theta");
   ("constructors", "coordinate_polar", "polar_rho polar_theta");
   ("description", "spherical_rho", "distance to origin");
   ("description", "spherical_phi", "angular coordinate in xy plane");
   ("description", "spherical_psi", "angular coordinate to z axis");
   ("description", "cylindrical_rho", "distance to z axis");
   ("description", "cylindrical_phi", "angular coordinate in xy plane");
   ("description", "cylindrical_zed", "projection on z axis")]
);;

let coo_l = List.filter (select_entity_off_triplet "coordinate" 0 7) wws_trl;;

test_number 2 (
coo_l
(* : (string, string, string) Triplet_t.triplet list *)
=  
 [("constructors", "coordinate",
    "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("constructors", "coordinate_cartesian", "x:ofstring y:ofstring z:ofstring");
   ("constructors", "coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("constructors", "coordinate_spherical",
    "spherical_rho spherical_phi spherical_theta");
   ("constructors", "coordinate_polar", "polar_rho polar_theta")]
);;

