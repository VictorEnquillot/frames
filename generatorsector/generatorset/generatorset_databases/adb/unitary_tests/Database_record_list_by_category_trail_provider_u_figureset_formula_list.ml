open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_figureset_formula_list.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_figureset_formula_list.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let select_entity_name nam dep1 dep2 rcd =
  let wor = List.hd (String_v.split_of_character_of_string '=' rcd) in
  let str = try List.nth (String_v.split_of_character_of_string ' ' wor) 1 
  with Failure "nth" ->
    Error_messages_v.print_fatal_error 
      "Database_record_list_by_category_trail_provider_u_figureset_formula.ml"
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
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/figureset/generator/figureset_formulas.set"
);;

let rcd_l = Database_record_list_by_category_trail_provider_v.provide tra_cat;;

test_number 2 (
rcd_l
(* : string list *)
=
  ["builders triangle_isoceles_equilateral = list point";
   "builders triangle_isoceles_right = list point";
   "builders triangle_isoceles_acute = list point";
   "builders triangle_isoceles_obtuse = list point";
   "builders triangle_scalene_right = list point";
   "builders triangle_scalene_acute = list point";
   "builders triangle_scalene_obtuse = list point";
   "builders point_constructor:ofstring = list coordinate_cartesian";
   "builders fake_son_constructor = list string";
   "builders vector_constructor = list point";
   "builders x:ofstring = list float"; "builders y:ofstring = list float";
   "builders z:ofstring = list float";
   "builders cylindrical_rho = list float";
   "builders cylindrical_phi = list float";
   "builders cylindrical_zed = list float";
   "builders polar_rho       = list float";
   "builders polar_theta     = list float";
   "builders spherical_rho  = list float";
   "builders spherical_phi  = list float";
   "builders spherical_theta = list float"]
);;
