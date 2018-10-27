open Make_test_v;;

testing "Entity_fictive_nullary_symbol_constructor_leaf_trail_provider_v with
   Entity_fictive_nullary_symbol_constructor_leaf_trail_provider_u_figure.ml";;

(* toplevel 
   #use "Entity_fictive_nullary_symbol_constructor_leaf_trail_provider_u_figure.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_cle = "point_constructor:ofstring";;

let tra_cel = Trail_v.make "entity" nam_cle tra_cat;;
let sym_efn = Entity_fictive_nullary_symbol_constructor_leaf_trail_provider_v.provide tra_cle;;

test_number 1 (
sym_efn
(* : (Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol,
   Entity_propert.entity_proper_symbol)
  Doublet_list_t.doublet_list *)
=
  [(Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_equilateral",
    Entity_symbol_t.Entity_proper "triangle");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_right",
    Entity_symbol_t.Entity_proper "triangle");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_acute",
    Entity_symbol_t.Entity_proper "triangle");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_isoceles_obtuse",
    Entity_symbol_t.Entity_proper "triangle");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_right",
    Entity_symbol_t.Entity_proper "triangle");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_acute",
    Entity_symbol_t.Entity_proper "triangle");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "triangle_scalene_obtuse",
    Entity_symbol_t.Entity_proper "triangle");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector",
    Entity_symbol_t.Entity_proper "vector");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector",
    Entity_symbol_t.Entity_proper "vector");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector_1d",
    Entity_symbol_t.Entity_proper "vector");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d",
    Entity_symbol_t.Entity_proper "point");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "point",
    Entity_symbol_t.Entity_proper "point");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_1d",
    Entity_symbol_t.Entity_proper "point");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "x_3d",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_3d",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_3d",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_rho",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_phi",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "cylindrical_zed",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_rho",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_phi",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "spherical_theta",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "x",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_rho",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "polar_theta",
    Entity_symbol_t.Entity_proper "coordinate");
   (Entity_fictive_nullary_symbol_t.Nonsonnullary "coordinate_1d",
    Entity_symbol_t.Entity_proper "coordinate")]
);;

