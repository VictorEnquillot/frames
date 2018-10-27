open Make_test_v;;

testing "Righthandside_string_by_constructor_leaf_trail_provider_v with
   Righthandside_string_by_constructor_leaf_trail_provider_u_naturalset_list.ml";; 

(* toplevel 
   #use "Righthandside_string_by_constructor_leaf_trail_provider_u_naturalset_list.ml";; 

*)

let tra_dos = Trail_v.make "domain" "natural" [];;
let tra_col = Trail_v.make "entity" "point_constructor:ofstring" tra_dos;;

test_number 1 (
 tra_col
(* : Trail_t.trail *)
=
  [("entity", "point_constructor:ofstring"); 
   ("domain", "natural")]
);;

let str_rhs = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_col;;

test_number 2 (
 str_rhs
(* : string *)
= 
"list coordinate_cartesian"
);;

let tra_col = Trail_v.make "entity" "vector_constructor" tra_dos;;

test_number 3 (
 tra_col
(* : Trail_t.trail *)
=
  [("entity", "vector_constructor");
   ("domain", "natural")]
);;

let str_rhs = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_col;;

test_number 4 (
 str_rhs
(* : string *)
= 
"list point"
);;

let tra_col = Trail_v.make "entity" "triangle_isoceles_acute" tra_dos;;

test_number 5 (
 tra_col
(* : Trail_t.trail *)
=
[("entity", "triangle_isoceles_acute");
 ("domain", "natural")]
);;

let str_rhs = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_col;;

test_number 6 (
 str_rhs
(* : string *)
= 
"list point"
);;

let tra_col = Trail_v.make "entity" "triangle_scalene_right" tra_dos;;

test_number 7 (
 tra_col
(* : Trail_t.trail *)
=
  [("entity", "triangle_scalene_right");
   ("domain", "natural")]
);;

let str_rhs = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_col;;

test_number 8 (
 str_rhs
(* : string *)
= 
"list point"
);;

let tra_col = Trail_v.make "entity" "x:ofstring" tra_dos;;

test_number 9 (
 tra_col
(* : Trail_t.trail *)
=
  [("entity", "x:ofstring");
   ("domain", "natural")]
);;

let str_rhs = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_col;;

test_number 10 (
 str_rhs
(* : string *)
= 
"list float"
);;

let tra_col_flo = Trail_v.make "entity" "float" tra_dos;;
test_raises_this_exc (Failure "Constructor_leaf_basename_not_found:Righthandside_string_by_constructor_leaf_trail_provider_v.ml:build")
Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_col_flo;;


