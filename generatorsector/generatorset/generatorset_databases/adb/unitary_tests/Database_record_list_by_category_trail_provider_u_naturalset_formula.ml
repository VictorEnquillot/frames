open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_naturalset_formula.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_naturalset_formula.ml";; 

*)

let nam_dos = "natural";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let select_entity_name nam dep1 dep2 rcd =
  let wor = List.hd (String_v.split_of_character_of_string '=' rcd) in
  let str = try List.nth (String_v.split_of_character_of_string ' ' wor) 1 
  with Failure "nth" ->
    Error_messages_v.print_fatal_error 
      "Database_record_list_by_category_trail_provider_u_naturalset_formula.ml"
      "select_entity_name"
      "wo words before = record"
      rcd "check"
  in
  let dep = List.length (String_v.split_of_character_of_string '_' str) in
  String.length str >= (String.length nam) 
    && (String.sub str 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let fin = Database_filename_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
fin
(* Filename_p.filename *) 
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/naturalset/generator/naturalset_formulas.set"
);;

let rcd_l = Database_record_list_by_category_trail_provider_v.provide tra_cat;;

test_number 2 (
rcd_l
(* : string list *)
=
  ["builders triangle_isoceles_equilateral = doublet point_constructor:ofstring vector";
   "builders triangle_isoceles_right = doublet point_constructor:ofstring vector";
   "builders triangle_isoceles_acute = doublet point_constructor:ofstring vector";
   "builders triangle_isoceles_obtuse = doublet point_constructor:ofstring vector";
   "builders triangle_scalene_right = doublet point_constructor:ofstring vector";
   "builders triangle_scalene_acute = doublet point_constructor:ofstring vector";
   "builders triangle_scalene_obtuse = doublet point_constructor:ofstring vector";
   "builders point_constructor:ofstring = triplet x y z";
   "builders vector = duo point_constructor:ofstring ";
   "builders x:ofstring = singlet float";
   "builders y:ofstring = singlet float";
   "builders z:ofstring = singlet float";
   "builders cylindrical_rho = singlet float";
   "builders cylindrical_phi = singlet float";
   "builders cylindrical_zed = singlet float";
   "builders polar_rho       = singlet float";
   "builders polar_theta     = singlet float";
   "builders spherical_rho  = singlet float";
   "builders spherical_phi  = singlet float";
   "builders spherical_theta = singlet float"]

);;
