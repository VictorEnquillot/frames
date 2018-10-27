open Make_test_v;;

testing "Constructor_basename_description_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_description_string_doublet_list_by_category_trail_provider_u_naturalset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_description_string_doublet_list_by_category_trail_provider_u_naturalset_formula.ml";;

*)

let nam_dos = "natural";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol_des = Constructor_basename_description_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol_des
(* : (string, string) Doublet_t.doublet list *)
=
[("triangle_isoceles_equilateral", "some kind of isoceles")]
);;
