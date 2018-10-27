open Make_test_v;;

testing "Constructor_basename_description_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_description_string_doublet_list_by_category_trail_provider_u_generatorset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_description_string_doublet_list_by_category_trail_provider_u_generatorset_symbol.ml";;

*)

let nam_dos = "generatorset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol = Constructor_basename_description_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_t.doublet list *)
=
[("spherical_rho", "distance to origin");
 ("spherical_phi", "angular coordinate in xy plane");
 ("spherical_psi", "angular coordinate to z axis");
 ("cylindrical_rho", "distance to z axis");
 ("cylindrical_phi", "angular coordinate in xy plane");
 ("cylindrical_zed", "projection on z axis")]
);;
