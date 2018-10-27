open Make_test_v;;

testing "Builder_basename_list_by_constructor_leaf_trail_provider_v with
   Builder_basename_list_by_constructor_leaf_trail_provider_u_generatorset_formula.ml";; 

(* toplevel 
   #use "Builder_basename_list_by_constructor_leaf_trail_provider_u_generatorset_formula.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let tra_ent_poi = Trail_v.make "entity" "point_constructor:ofstring" tra_cat;;

test_number 1 (
 tra_ent_poi
(* : Trail_t.trail *)
=
  [("entity", "point_constructor:ofstring"); ("category", "formula"); ("domain", "generatorset")]
);;

let nam_bui_l_poi = Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent_poi;;

test_number 2 (
 nam_bui_l_poi
(* : string *)
= 
["coordinate_cartesian"]
);;

let tra_ent_sca = Trail_v.make "entity" "triangle_scalene_right" tra_cat;;

test_number 3 (
 tra_ent_sca
(* : Trail_t.trail *)
=
  [("entity", "triangle_scalene_right"); ("category", "formula");
   ("domain", "generatorset")]
);;

let nam_bui_l_sca = Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent_sca;;

test_number 4 (
 nam_bui_l_sca
(* : string *)
= 
["point"; "vector"]
);;

let tra_ent_iso = Trail_v.make "entity" "triangle_isoceles_acute" tra_cat;;

test_number 5 (
 tra_ent_iso
(* : Trail_t.trail *)
=
[("entity", "triangle_isoceles_acute"); ("category", "formula");
 ("domain", "generatorset")]
);;

let nam_bui_l_iso = Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent_iso;;

test_number 6 (
 nam_bui_l_iso
(* : string *)
= 
["point"; "vector"]
);;

let tra_ent_vec = Trail_v.make "entity" "vector_constructor" tra_cat;;

test_number 7 (
 tra_ent_vec
(* : Trail_t.trail *)
=
  [("entity", "vector_constructor"); ("category", "formula");
   ("domain", "generatorset")]
);;

let nam_bui_l_vec = Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent_vec;;

test_number 8 (
 nam_bui_l_vec
(* : string *)
= 
["point"]
);;

let tra_ent_x = Trail_v.make "entity" "x:ofstring" tra_cat;;

test_number 9 (
 tra_ent_x
(* : Trail_t.trail *)
=
  [("entity", "x:ofstring"); ("category", "formula");
   ("domain", "generatorset")]
);;

let nam_bui_l_x = Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent_x;;

test_number 10 (
 nam_bui_l_x
(* : string *)
= 
["float"]
);;

(*********
let tra_ent_flo = Trail_v.make "entity" "float" tra_cat;;
test_raises_this_exc (Failure
"Constructor_leaf_basename_not_found:righthandside_string_by_constructor_leaf_trail_provider_v.ml:build_n_store")
Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;;
********)
