open Make_test_v;;

testing "Righthandside_string_by_constructor_leaf_trail_provider_v with
   Righthandside_string_by_constructor_leaf_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Righthandside_string_by_constructor_leaf_trail_provider_u_generatorset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;
let tra_col = Trail_v.make "entity" "point_constructor:ofstring" tra_dos;;

test_number 1 (
 tra_col
(* : Trail_t.trail *)
=
  [("entity", "point_constructor:ofstring"); 
   ("domain", "generatorset")]
);;

let rhs_str = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_col;;

test_number 2 (
 rhs_str_poi
(* : string *)
= 
"list coordinate_cartesian"
);;

let tra_ent_vec = Trail_v.make "entity" "vector_constructor" tra_cat;;

test_number 3 (
 tra_ent_vec
(* : Trail_t.trail *)
=
  [("entity", "vector_constructor"); ("category", "formula");
   ("domain", "generatorset")]
);;

let tra_ent_iso = Trail_v.make "entity" "triangle_isoceles_acute" tra_cat;;

test_number 4 (
 tra_ent_iso
(* : Trail_t.trail *)
=
[("entity", "triangle_isoceles_acute"); ("category", "formula");
 ("domain", "generatorset")]
);;

let tra_ent_sca = Trail_v.make "entity" "triangle_scalene_right" tra_cat;;

test_number 5 (
 tra_ent_sca
(* : Trail_t.trail *)
=
  [("entity", "triangle_scalene_right"); ("category", "formula");
   ("domain", "generatorset")]
);;


let tra_ent_x = Trail_v.make "entity" "x:ofstring" tra_cat;;

test_number 6 (
 tra_ent_x
(* : Trail_t.trail *)
=
  [("entity", "x:ofstring"); ("category", "formula");
   ("domain", "generatorset")]
);;

let rhs_str_iso = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_iso;;

test_number 7 (
 rhs_str_iso
(* : string *)
= 
"doublet point vector"
);;

let rhs_str_sca = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_sca;;

test_number 8 (
 rhs_str_sca
(* : string *)
= 
"doublet point vector"
);;

let rhs_str_x = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_x;;

test_number 9 (
 rhs_str_x
(* : string *)
= 
"singlet float"
);;

let rhs_str_vec = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_vec;;

test_number 10 (
 rhs_str_vec
(* : string *)
= 
"duo point"
);;

let tra_ent_flo = Trail_v.make "entity" "float" tra_cat;;
test_raises_this_exc (Failure "Constructor_leaf_basename_not_found:Righthandside_string_by_constructor_leaf_trail_provider_v.ml:build_n_store")
Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;;


