open Make_test_v;;

testing "Translating_entity_fictive_symbol_of_builder_basename_v with
   Translating_entity_fictive_symbol_of_builder_basename_u_figure_symbol_triangle_isoceles.ml";;

(* toplevel 
   #use "Translating_entity_fictive_symbol_of_builder_basename_u_figure_symbol_triangle_isoceles.ml";;

*)

let nam_dos = "figure";;

let tra_dos = Trail_v.make "domain" nam_dos [];;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let nam_ent_lea_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;
let nam_ent_bas_l = Entity_basic_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_ent_lea_l
(* : string list *)
=
  ["triangle_isoceles_equilateral"; "triangle_isoceles_right";
   "triangle_isoceles_acute"; "triangle_isoceles_obtuse";
   "triangle_scalene_right"; "triangle_scalene_acute";
   "triangle_scalene_obtuse"; "vector"; "vector"; "vector_1d";
   "point_3d"; "point"; "point_1d"; "coordinate_1d"; "x_3d"; "y_3d";
   "z_3d"; "cylindrical_rho"; "cylindrical_phi"; "cylindrical_zed";
   "spherical_rho"; "spherical_phi"; "spherical_theta"; "x"; "y_2d";
   "polar_rho"; "polar_theta"]
);;

test_number 2 (
Translating_entity_fictive_symbol_of_builder_basename_v.translate sym_dos "vector"
(* : Entity_fictive_symbol_t.entity_fictive_symbol *)
=
Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
 (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector")
);;

test_number 3 (
Translating_entity_fictive_symbol_of_builder_basename_v.translate sym_dos "x_3d"
(* : Entity_fictive_symbol_t.entity_fictive_symbol *)
=
Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
 (Entity_fictive_nullary_symbol_t.Nonsonnullary "x_3d")
);;

test_number 4 (
nam_ent_bas_l
(* : string list *)
=
  ["float"; "float_positive"; "float_zero_twopi"; "float_zero_pi"]
);;

test_number 5 (
Translating_entity_fictive_symbol_of_builder_basename_v.translate sym_dos "float_zero_pi"
(* : Entity_fictive_symbol_t.entity_fictive_symbol *)
=
  Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
   (Entity_fictive_basicnullary_symbol_t.Float_zero_pi "")
);;

test_number 6 (
Translating_entity_fictive_symbol_of_builder_basename_v.translate sym_dos "float"
(* : Entity_fictive_symbol_t.entity_fictive_symbol *)
=
  Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
   (Entity_fictive_basicnullary_symbol_t.Float "")
);;

