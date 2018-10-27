open Make_test_v;;

testing "Entity_fictive_nullary_symbol_by_constructor_leaf_trail_provider_v with
   Entity_fictive_nullary_symbol_by_constructor_leaf_trail_provider_u_figure.ml";;

(* toplevel 
   #use "Entity_fictive_nullary_symbol_by_constructor_leaf_trail_provider_u_figure.ml";;
         
*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_cle = "point_constructor:ofstring";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;


let ban_cle_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;
let tra_cle_l = List.map (fun e -> Trail_v.make "entity" e tra_cat) ban_cle_l;;

let sym_efn_l = List.map Entity_fictive_nullary_symbol_by_constructor_leaf_trail_provider_v.provide tra_cle_l;;
let dou_l = Doublet_list_v.make ban_cle_l sym_efn_l;;

test_number 1 (
dou_l
(* : (String.t, Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol)
  Doublet_list_t.doublet_list *)
=
  [("triangle_isoceles_equilateral",
    Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral");

   ("triangle_isoceles_right",
    Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right");
   ("triangle_isoceles_acute",
    Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute");
   ("triangle_isoceles_obtuse",
    Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse");
   ("triangle_scalene_right",
    Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_right");
   ("triangle_scalene_acute",
    Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_acute");
   ("triangle_scalene_obtuse",
    Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_obtuse");
   ("fake_son_constructor",
    Entity_fictive_nullary_symbol_t.Bare "fake_son_constructor");
   ("vector_constructor",
    Entity_fictive_nullary_symbol_t.Bare "vector_constructor");
   ("point_constructor:ofstring",
    Entity_fictive_nullary_symbol_t.Ofstring "point_constructor");
   ("x:ofstring", Entity_fictive_nullary_symbol_t.Ofstring "x");
   ("y:ofstring", Entity_fictive_nullary_symbol_t.Ofstring "y");
   ("z:ofstring", Entity_fictive_nullary_symbol_t.Ofstring "z");
   ("cylindrical_rho",
    Entity_fictive_nullary_symbol_t.Bare "cylindrical_rho");
   ("cylindrical_phi",
    Entity_fictive_nullary_symbol_t.Bare "cylindrical_phi");
   ("cylindrical_zed",
    Entity_fictive_nullary_symbol_t.Bare "cylindrical_zed");
   ("spherical_rho", Entity_fictive_nullary_symbol_t.Bare "spherical_rho");
   ("spherical_phi", Entity_fictive_nullary_symbol_t.Bare "spherical_phi");
   ("spherical_theta",
    Entity_fictive_nullary_symbol_t.Bare "spherical_theta");
   ("polar_rho", Entity_fictive_nullary_symbol_t.Bare "polar_rho");
   ("polar_theta", Entity_fictive_nullary_symbol_t.Bare "polar_theta")]
);;

let tra_cle = Trail_v.make "entity" nam_cle tra_cat;;
let sym_efn = Entity_fictive_nullary_symbol_by_constructor_leaf_trail_provider_v.provide tra_cle;;

test_number 2 (
sym_efn
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol *)
=
Entity_fictive_nullary_symbol_t.Ofstring "point_constructor"
);;

