open Make_test_v;;

testing "Kind_name_entity_basename_doublet_list_by_category_trail_provider_v with
   Kind_name_entity_basename_doublet_list_by_category_trail_provider_u_generatorset_symbol.ml";; 

(* toplevel 
   #use "Kind_name_entity_basename_doublet_list_by_category_trail_provider_u_generatorset_symbol.ml";; 

*)

let nam_dos = "generatorset";;
let nam_cat = "symbol";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_kin_nam_ent_dol = Kind_name_entity_basename_doublet_list_by_category_trail_provider_v.provide tra_cat;;

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

test_number 1 (
 nam_kin_nam_ent_dol
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("type", "generatorset"); ("type", "triangle");
   ("type", "triangle_isoceles"); ("type", "triangle_scalene");
   ("type", "vector"); ("type", "point"); ("type", "coordinate");
   ("type", "coordinate_3d"); ("type", "coordinate_2d");
   ("type", "coordinate_cartesian_3d"); ("type", "coordinate_cylindrical");
   ("type", "coordinate_spherical"); ("type", "coordinate_cartesian_2d");
   ("type", "coordinate_polar"); ("description", "spherical_rho");
   ("description", "spherical_phi"); ("description", "spherical_psi");
   ("description", "cylindrical_rho"); ("description", "cylindrical_phi");
   ("description", "cylindrical_zed")]
);;

