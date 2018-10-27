open Make_test_v;;

testing "Righthandside_string_by_constructor_leaf_trail_provider_v with
   Righthandside_string_by_constructor_leaf_trail_provider_u_naturalset_formula_list.ml";; 

(* toplevel 
   #use "Righthandside_string_by_constructor_leaf_trail_provider_u_naturalset_formula_list.ml";; 

*)

let tra_dos = Trail_v.make "domain" "natural" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let nam_ent_str_dol = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
 nam_ent_str_dol
(* : (string, string) Doublet_list_t.doublet_list *)
=
  [("triangle_isoceles_equilateral", "list point");
   ("triangle_isoceles_right", "list point");
   ("triangle_isoceles_acute", "list point");
   ("triangle_isoceles_obtuse", "list point");
   ("triangle_scalene_right", "list point");
   ("triangle_scalene_acute", "list point");
   ("triangle_scalene_obtuse", "list point");
   ("point_constructor:ofstring", "list coordinate_cartesian");
   ("fake_son_constructor", "list string");
   ("vector_constructor", "list point"); ("x:ofstring", "list float");
   ("y:ofstring", "list float"); ("z:ofstring", "list float");
   ("cylindrical_rho", "list float"); ("cylindrical_phi", "list float");
   ("cylindrical_zed", "list float"); ("polar_rho", "list float");
   ("polar_theta", "list float"); ("spherical_rho", "list float");
   ("spherical_phi", "list float"); ("spherical_theta", "list float")]
);;

let tra_ent_poi = Trail_v.make "entity" "point_constructor:ofstring" tra_cat;;

test_number 2 (
 tra_ent_poi
(* : Trail_t.trail *)
=
[("entity", "point_constructor:ofstring"); 
 ("category", "formula");
 ("domain", "natural")]
);;

let rhs_str_poi = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_poi;;

test_number 3 (
 rhs_str_poi
(* : string *)
= 
"list coordinate_cartesian"
);;

let tra_ent_vec = Trail_v.make "entity" "vector_constructor" tra_cat;;

test_number 4 (
 tra_ent_vec
(* : Trail_t.trail *)
=
  [("entity", "vector_constructor"); ("category", "formula");
   ("domain", "natural")]
);;

let tra_ent_iso = Trail_v.make "entity" "triangle_isoceles_acute" tra_cat;;

test_number 5 (
 tra_ent_iso
(* : Trail_t.trail *)
=
[("entity", "triangle_isoceles_acute"); ("category", "formula");
 ("domain", "natural")]
);;

let tra_ent_sca = Trail_v.make "entity" "triangle_scalene_right" tra_cat;;

test_number 6 (
 tra_ent_sca
(* : Trail_t.trail *)
=
  [("entity", "triangle_scalene_right"); ("category", "formula");
   ("domain", "natural")]
);;


let tra_ent_x = Trail_v.make "entity" "x:ofstring" tra_cat;;

test_number 7 (
 tra_ent_x
(* : Trail_t.trail *)
=
  [("entity", "x:ofstring"); ("category", "formula");
   ("domain", "natural")]
);;

let rhs_str_iso = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_iso;;

test_number 8 (
 rhs_str_iso
(* : string *)
= 
"list point"
);;

let rhs_str_sca = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_sca;;

test_number 9 (
 rhs_str_sca
(* : string *)
= 
"list point"
);;

let rhs_str_x = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_x;;

test_number 10 (
 rhs_str_x
(* : string *)
= 
"list float"
);;

let rhs_str_vec = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_vec;;

test_number 11 (
 rhs_str_vec
(* : string *)
= 
"list point"
);;

let tra_ent_flo = Trail_v.make "entity" "float" tra_cat;;

test_raises_this_exc (Failure "Constructor_leaf_basename_not_found:Righthandside_string_by_constructor_leaf_trail_provider_v.ml:build_n_store") Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;;


