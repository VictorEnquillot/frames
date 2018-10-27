open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

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
  (k = "type")
    && (select_entity_off_doublet ent dep1 dep2 (e, s))
;;

test_number 1 (
 wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("builders", "triangle_isoceles_equilateral",
    "doublet point_3d vector_3d");
   ("builders", "triangle_isoceles_right", "doublet point_3d vector_3d");
   ("builders", "triangle_isoceles_acute", "doublet point_3d vector_3d");
   ("builders", "triangle_isoceles_obtuse", "doublet point_3d vector_3d");
   ("builders", "triangle_scalene_right", "doublet point_3d vector_3d");
   ("builders", "triangle_scalene_acute", "doublet point_3d vector_3d");
   ("builders", "triangle_scalene_obtuse", "doublet point_3d vector_3d");
   ("builders", "point_3d", "triplet x_3d y_3d z_3d");
   ("builders", "point_2d", "doublet x_2d y_2d");
   ("builders", "point_1d", "singlet x_1");
   ("builders", "vector_3d", "duo point_3d");
   ("builders", "vector_2d", "duo point_2d");
   ("builders", "vector_1d", "duo point_1d");
   ("builders", "x_3d", "singlet float");
   ("builders", "x_2d", "singlet float");
   ("builders", "x_1d", "singlet float");
   ("builders", "y_3d", "singlet float");
   ("builders", "y_2d", "singlet float");
   ("builders", "z_3d", "singlet float");
   ("builders", "cylindrical_rho", "singlet float");
   ("builders", "cylindrical_phi", "singlet float");
   ("builders", "cylindrical_zed", "singlet float");
   ("builders", "polar_rho", "singlet float");
   ("builders", "polar_theta", "singlet float");
   ("builders", "spherical_rho", "singlet float");
   ("builders", "spherical_phi", "singlet float");
   ("builders", "spherical_theta", "singlet float");
   ("builders", "coordinate_1d", "singlet float");
   ("description", "triangle_isoceles_equilateral", "some kind of isoceles")]
);;
