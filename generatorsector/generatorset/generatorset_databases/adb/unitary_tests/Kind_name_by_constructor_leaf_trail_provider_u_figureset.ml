open Make_test_v;;

testing "Kind_name_by_constructor_leaf_trail_provider_v
   Kind_name_by_constructor_leaf_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Kind_name_by_constructor_leaf_trail_provider_u_figureset.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_lea = "triangle_isoceles_equilateral";;
let tra_ent_lea = Trail_v.make "entity" nam_ent_lea tra_cat;;

test_number 1 (
tra_ent_lea 
(* : Trail_t.trail *)
=
  [("entity", "triangle_isoceles_equilateral"); ("category", "formula");
   ("domain", "figure")]
);;

let nam_kin = Kind_name_by_constructor_leaf_trail_provider_v.provide tra_ent_lea;;

test_number 2 (
nam_kin
(* : string *)
= 
"type"
);;

