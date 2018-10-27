open Make_test_v;;

testing "Constructor_node_basename_righthandside_string_doublet_list_by_domain_trail_provider_v
   Constructor_node_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Constructor_node_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_generatorset.ml";;

*)

let nam_dos = "generatorset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_ent_str_rhs_dol = Constructor_node_basename_righthandside_string_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_ent_str_rhs_dol
(* : (string, string) Doublet_t.doublet list *)
=
  [("generatorset", "triangle vector point coordinate");
   ("triangle", "triangle_isoceles triangle_scalene");
   ("triangle_isoceles",
    "triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse");
   ("triangle_scalene",
    "triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse");
   ("vector", "vector_3d vector_2d vector_1d");
   ("point", "point_3d point_2d point_1d");
   ("coordinate", "coordinate_3d coordinate_2d coordinate_1d");
   ("coordinate_3d",
    "coordinate_cartesian_3d coordinate_cylindrical coordinate_spherical");
   ("coordinate_2d", "coordinate_cartesian_2d coordinate_polar");
   ("coordinate_cartesian_3d", "x_3d y_3d z_3d");
   ("coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("coordinate_spherical", "spherical_rho spherical_phi spherical_theta");
   ("coordinate_cartesian_2d", "x_2d y_2d");
   ("coordinate_polar", "polar_rho polar_theta")]
);;

