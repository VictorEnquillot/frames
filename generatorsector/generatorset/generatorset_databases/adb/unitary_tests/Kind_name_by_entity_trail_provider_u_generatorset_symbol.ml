open Make_test_v;;

testing "Kind_name_by_entity_trail_provider_v with
   Kind_name_by_entity_trail_provider_u_generatorset_symbol.ml";; 

(* toplevel 
   #use "Kind_name_by_entity_trail_provider_u_generatorset_symbol.ml";; 

*)

let nam_dos = "generatorset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let tra_ent_iso = Trail_v.make "entity" "triangle_isoceles" tra_cat;;
let tra_ent_equ = Trail_v.make "entity" "triangle_isoceles_equilateral" tra_cat;;

let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("type", "generatorset", "triangle vector point coordinate");
   ("type", "triangle", "triangle_isoceles triangle_scalene");
   ("type", "triangle_isoceles",
    "triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse");
   ("type", "triangle_scalene",
    "triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse");
   ("type", "vector", "vector_3d vector_2d vector_1d");
   ("type", "point", "point_3d point_2d point_1d");
   ("type", "coordinate", "coordinate_3d coordinate_2d coordinate_1d");
   ("type", "coordinate_3d",
    "coordinate_cartesian_3d coordinate_cylindrical coordinate_spherical");
   ("type", "coordinate_2d", "coordinate_cartesian_2d coordinate_polar");
   ("type", "coordinate_cartesian_3d", "x_3d y_3d z_3d");
   ("type", "coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("type", "coordinate_spherical",
    "spherical_rho spherical_phi spherical_theta");
   ("type", "coordinate_cartesian_2d", "x_2d y_2d");
   ("type", "coordinate_polar", "polar_rho polar_theta");
   ("description", "spherical_rho", "distance to origin");
   ("description", "spherical_phi", "angular coordinate in xy plane");
   ("description", "spherical_psi", "angular coordinate to z axis");
   ("description", "cylindrical_rho", "distance to z axis");
   ("description", "cylindrical_phi", "angular coordinate in xy plane");
   ("description", "cylindrical_zed", "projection on z axis")]
);;

test_number 2 (
Kind_name_by_entity_trail_provider_v.provide tra_ent_iso
(* : (string, string list) Doublet_list_t.doublet_list *)
  =
"type"
);;

test_raises_this_exc (Failure
"Not_stored:kind_name_by_entity_trail_provider_v.ml.retrieve for [(entity, triangle_isoceles_equilateral); (category, symbol); (domain, generatorset)]") Kind_name_by_entity_trail_provider_v.provide tra_ent_equ;;
