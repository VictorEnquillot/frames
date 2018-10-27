open Make_test_v;;

testing "Kind_name_by_constructor_node_trail_provider_v
   Kind_name_by_constructor_node_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Kind_name_by_constructor_node_trail_provider_u_generatorset.ml";;

*)

let nam_dos = "generatorset";;
let nam_cat = "symbol";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent = "triangle"
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_kin = Kind_name_by_constructor_node_trail_provider_v.provide tra_ent;;

test_number 1 (
tra_ent 
(* : Trail_t.trail *)
=
  [("entity", "triangle"); ("category", "symbol");
   ("domain", "generatorset")]
);;

test_number 2 (
nam_kin
(* : string *)
= 
"type"
);;

