open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_figureset_symbol.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_figureset_symbol.ml";; 

*)

let select_left nam dep1 dep2 wol =
  let dep = List.length (String_v.split_of_character_of_string '_'  wol) in
  String.length wol >= (String.length nam) 
    && (String.sub wol 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_singlet nam dep1 dep2 rcd =
  let dep = List.length (String_v.split_of_character_of_string '_' rcd) in
  String.length rcd >= (String.length nam) 
    && (String.sub rcd 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_doublet ent dep1 dep2 dou =
  let (e, s) = dou in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_triplet ent dep1 dep2 tri =
  let (k, e, s) = tri in
  (k = "constructors")
    && (select_entity_off_doublet ent dep1 dep2 (e, s))
;;

let tra_cat = [("category", "symbol"); ("domain", "figure")];;
let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
   [("constructors", "figure",  "coordinate point triangle vector fake");
   ("constructors", "triangle", "triangle_isoceles triangle_scalene");
   ("constructors", "triangle_isoceles",
    "triangle_isoceles_equilateral:ofstring triangle_isoceles_right:ofstring triangle_isoceles_acute:ofstring triangle_isoceles_obtuse:ofstring");
   ("constructors", "triangle_scalene",
    "triangle_scalene_right:ofstring triangle_scalene_acute:ofstring triangle_scalene_obtuse:ofstring");
   ("constructors", "fake", "fake_son");
   ("constructors", "fake_son", "fake_son_constructor");
   ("constructors", "vector", "vector_constructor:ofstring");
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

let coo_l = List.filter (select_entity_off_triplet "c" 0 7) wws_trl;;

test_number 2 (
coo_l
(* : (string, string, string) Triplet_t.triplet list *)
=  
  [("constructors", "coordinate",
    "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("constructors", "coordinate_cartesian",
    "x:ofstring y:ofstring z:ofstring");
   ("constructors", "coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("constructors", "coordinate_spherical",
    "spherical_rho spherical_phi spherical_theta");
   ("constructors", "coordinate_polar", "polar_rho polar_theta")]
);;

