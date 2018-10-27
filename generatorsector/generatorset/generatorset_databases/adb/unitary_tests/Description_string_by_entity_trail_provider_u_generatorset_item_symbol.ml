open Make_test_v;;

testing "Description_string_by_entity_trail_provider_v with
   Description_string_by_entity_trail_provider_u_generatorset_item_symbol.ml";; 

(* toplevel 
   #use "Description_string_by_entity_trail_provider_u_generatorset_item_symbol.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset_item" [];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;

let nam_ent_str_dol_des = Constructor_basename_description_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

let tra_ent_poi_des = Trail_v.make "entity" "point" tra_cat;;

let tra_ent_sca_des = Trail_v.make "entity" "triangle_scalene" tra_cat;;

let tra_ent_iso_des = Trail_v.make "entity" "triangle_isoceles" tra_cat;;

let tra_ent_vec_des = Trail_v.make "entity" "vector" tra_cat;;

let tra_ent_tri_des = Trail_v.make "entity" "triangle" tra_cat;;

let rhs_str_iso_des = Description_string_by_entity_trail_provider_v.provide tra_ent_iso_des;;

let rhs_str_sca_des = Description_string_by_entity_trail_provider_v.provide tra_ent_sca_des;;

let rhs_str_vec_des = Description_string_by_entity_trail_provider_v.provide tra_ent_vec_des;;

let rhs_str_tri_des = Description_string_by_entity_trail_provider_v.provide tra_ent_tri_des;;

(**
let rhs_str_poi_con = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_poi_con;;
let rhs_str_poi_des = Description_string_by_entity_trail_provider_v.provide tra_ent_poi_des;;
***)

test_number 1 (
nam_ent_str_dol_des
(* : (string, string) Doublet_list_t.doublet_list *)
=
[("spherical_rho", "distance to origin");
 ("spherical_phi", "angular coordinate in xy plane");
 ("spherical_psi", "angular coordinate to z axis");
 ("cylindrical_rho", "distance to z axis");
 ("cylindrical_phi", "angular coordinate in xy plane");
 ("cylindrical_zed", "projection on z axis")]
);;

test_number 2 (
rhs_str_tri_des
(* : string *)
=
"triangle_isoceles triangle_scalene"
);;

test_number 3 (
rhs_str_vec_des
(* : string *)
=
""
);;

test_number 4 (
rhs_str_iso_des
(* : string *)
=
"triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_oblique"
);;

test_number 5 (
rhs_str_sca_des
(* : string *)
=
"triangle_scalene_oblique triangle_scalene_right"
);;

(***
test_number 6 (
rhs_str_poi_con
(* : string *)
=
""
);;

test_number 7 (
rhs_str_poi_des
(* : string *)
=
""
);;
***)
