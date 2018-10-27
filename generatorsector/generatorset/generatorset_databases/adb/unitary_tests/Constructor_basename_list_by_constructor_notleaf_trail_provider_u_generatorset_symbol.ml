open Make_test_v;;

testing "Constructor_basename_list_by_constructor_notleaf_trail_provider_v with
   Constructor_basename_list_by_constructor_notleaf_trail_provider_u_generatorset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_constructor_notleaf_trail_provider_u_generatorset_symbol.ml";; 

*)

let nam_dos = "generatorset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent = "triangle";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_notleaf_trail_provider_v.provide tra_ent;;

test_number 1 (
nam_ent_l
(* : string list *)
=
["triangle_isoceles"; "triangle_scalene"]
);;

let nam_ent = "triangle_isoceles";;
let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;
let nam_ent_l = Constructor_basename_list_by_constructor_notleaf_trail_provider_v.provide tra_ent;;

test_number 2 (
nam_ent_l
(* : string list *)
=
["triangle_isoceles_equilateral"; "triangle_isoceles_right";
 "triangle_isoceles_acute"; "triangle_isoceles_obtuse"]
);;

