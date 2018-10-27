open Make_test_v;;

testing "Datastructure_basename_by_constructor_leaf_trail_provider_v with
   Datastructure_basename_by_constructor_leaf_trail_provider_u_naturalset_formula.ml";; 

(* toplevel 
   #use "Datastructure_basename_by_constructor_leaf_trail_provider_u_naturalset_formula.ml";; 

*)

let tra_dos = Trail_v.make "domain" "natural" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let nam_lea_nam_das_dol = Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
 nam_lea_nam_das_dol
(* : (string, string) Doublet_list_t.doublet_list *)
=
 [("triangle_isoceles_equilateral", "doublet");
   ("triangle_isoceles_right", "doublet");
   ("triangle_isoceles_acute", "doublet");
   ("triangle_isoceles_obtuse", "doublet");
   ("triangle_scalene_right", "doublet");
   ("triangle_scalene_acute", "doublet");
   ("triangle_scalene_obtuse", "doublet"); ("point_constructor:ofstring", "list");
   ("vector_constructor", "duo"); ("x:ofstring", "singlet");
   ("y:ofstring", "singlet"); ("z:ofstring", "singlet");
   ("cylindrical_rho", "singlet"); ("cylindrical_phi", "singlet");
   ("cylindrical_zed", "singlet"); ("polar_rho", "singlet");
   ("polar_theta", "singlet"); ("spherical_rho", "singlet");
   ("spherical_phi", "singlet"); ("spherical_theta", "singlet")]
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

let tra_ent_sca = Trail_v.make "entity" "triangle_scalene_right" tra_cat;;

test_number 3 (
 tra_ent_sca
(* : Trail_t.trail *)
=
  [("entity", "triangle_scalene_right");
   ("category", "formula");
   ("domain", "natural")]
);;

let tra_ent_iso = Trail_v.make "entity" "triangle_isoceles_acute" tra_cat;;

test_number 4 (
 tra_ent_iso
(* : Trail_t.trail *)
=
[("entity", "triangle_isoceles_acute");
   ("category", "formula");
 ("domain", "natural")]
);;

let tra_ent_x3d = Trail_v.make "entity" "x:ofstring" tra_cat;;

test_number 5 (
 tra_ent_x3d
(* : Trail_t.trail *)
=
  [("entity", "x:ofstring");
   ("category", "formula");
   ("domain", "natural")]
);;

let tra_ent_vec = Trail_v.make "entity" "vector_constructor" tra_cat;;

test_number 6 (
 tra_ent_vec
(* : Trail_t.trail *)
=
  [("entity", "vector_constructor");
   ("category", "formula");
   ("domain", "natural")]
);;

let rhs_str_poi = Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent_poi;;

test_number 7 (
 rhs_str_poi
(* : string *)
= 
"list"
);;

let rhs_str_iso = Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent_iso;;

test_number 8 (
 rhs_str_iso
(* : string *)
= 
"doublet"
);;

let rhs_str_sca = Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent_sca;;

test_number 9 (
 rhs_str_sca
(* : string *)
= 
"doublet"
);;

let rhs_str_x3d = Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent_x3d;;

test_number 10 (
 rhs_str_x3d
(* : string *)
= 
"singlet"
);;

let rhs_str_vec = Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent_vec;;

test_number 11 (
 rhs_str_vec
(* : string *)
= 
"duo"
);;

(****
let tra_ent_flo = Trail_v.make "entity" "float" tra_cat;;
test_raises_this_exc (Failure "Constructor_leaf_basename_not_found:datastructure_basename_by_constructor_leaf_trail_provider_v.ml:build_n_store")
Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;;
****)

