open Make_test_v;;

testing "Righthandside_string_by_constructor_notleaf_trail_provider_v with
   Righthandside_string_by_constructor_notleaf_trail_provider_u_generatorset_symbol.ml";; 

(* toplevel 
   #use "Righthandside_string_by_constructor_notleaf_trail_provider_u_generatorset_symbol.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;

let nam_ent_str_dol = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_list_t.doublet_list *)
= 
  [("space", "1d 2d 3d");
   ("generatorset", "triangle vector point coordinate");
   ("triangle", "triangle_isoceles triangle_scalene");
   ("triangle_isoceles",
    "triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse");
   ("triangle_scalene",
    "triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse");
   ("coordinate",
    "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("coordinate_cartesian", "x y z");
   ("coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("coordinate_spherical", "spherical_rho spherical_phi spherical_theta");
   ("coordinate_polar", "polar_rho polar_theta")]
);;

let tra_ent_sca = Trail_v.make "entity" "triangle_scalene" tra_cat;;
let tra_ent_iso = Trail_v.make "entity" "triangle_isoceles" tra_cat;;
let tra_ent_tri = Trail_v.make "entity" "triangle" tra_cat;;

let rhs_str_tri = Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_tri;;

test_number 2 (
rhs_str_tri
(* : string *)
=
"triangle_isoceles triangle_scalene"
);;

let rhs_str_sca = Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_sca;;

test_number 3 (
rhs_str_sca
(* : string *)
=
"triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse"
);;

let rhs_str_iso = Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_iso;;

test_number 4 (
rhs_str_iso
(* : string *)
=
"triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse"
);;

let tra_ent_poi = Trail_v.make "entity" "point" tra_cat;;
test_raises_this_exc (Failure "Constructor_node_basename_not_found:Righthandside_string_by_constructor_notleaf_trail_provider_v.ml:build_n_store") Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_poi;;


