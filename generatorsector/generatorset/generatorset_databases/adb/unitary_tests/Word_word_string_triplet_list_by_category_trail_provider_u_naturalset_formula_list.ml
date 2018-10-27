open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_naturalset_formula_list.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_naturalset_formula_list.ml";; 

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
  (k = "type")
    && (select_entity_off_doublet ent dep1 dep2 (e, s))
;;

let select_kind_off_triplet kin tri =
  Triplet_list_v.filter_if_left (fun k ->k=kin) tri 
;;

let nam_dos = "natural";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
  =
  [("builders", "cylindrical_phi", "list float");
   ("builders", "cylindrical_rho", "list float");
   ("builders", "cylindrical_zed", "list float");
   ("builders", "fake_son_constructor", "list string");
   ("builders", "point_constructor:ofstring", "list coordinate_cartesian");
   ("builders", "polar_rho", "list float");
   ("builders", "polar_theta", "list float");
   ("builders", "spherical_phi", "list float");
   ("builders", "spherical_rho", "list float");
   ("builders", "spherical_theta", "list float");
   ("builders", "triangle_isoceles_acute", "list point");
   ("builders", "triangle_isoceles_equilateral", "list point");
   ("builders", "triangle_isoceles_obtuse", "list point");
   ("builders", "triangle_isoceles_right", "list point");
   ("builders", "triangle_scalene_acute", "list point");
   ("builders", "triangle_scalene_obtuse", "list point");
   ("builders", "triangle_scalene_right", "list point");
   ("builders", "vector_constructor", "list point");
   ("builders", "x:ofstring", "list float");
   ("builders", "y:ofstring", "list float");
   ("builders", "z:ofstring", "list float")]
);;

let sel =  select_kind_off_triplet "builders" wws_trl;;

test_number 2 (
sel
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("builders", "cylindrical_phi", "list float");
   ("builders", "cylindrical_rho", "list float");
   ("builders", "cylindrical_zed", "list float");
   ("builders", "fake_son_constructor", "list string");
   ("builders", "point_constructor:ofstring", "list coordinate_cartesian");
   ("builders", "polar_rho", "list float");
   ("builders", "polar_theta", "list float");
   ("builders", "spherical_phi", "list float");
   ("builders", "spherical_rho", "list float");
   ("builders", "spherical_theta", "list float");
   ("builders", "triangle_isoceles_acute", "list point");
   ("builders", "triangle_isoceles_equilateral", "list point");
   ("builders", "triangle_isoceles_obtuse", "list point");
   ("builders", "triangle_isoceles_right", "list point");
   ("builders", "triangle_scalene_acute", "list point");
   ("builders", "triangle_scalene_obtuse", "list point");
   ("builders", "triangle_scalene_right", "list point");
   ("builders", "vector_constructor", "list point");
   ("builders", "x:ofstring", "list float");
   ("builders", "y:ofstring", "list float");
   ("builders", "z:ofstring", "list float")]
);;
