open Make_test_v;;

testing "Builder_basename_list_by_constructor_leaf_trail_provider_v with
   Builder_basename_list_by_constructor_leaf_trail_provider_u_figureset_list.ml";; 

(* toplevel 
   #use "Builder_basename_list_by_constructor_leaf_trail_provider_u_figureset_list.ml";; 

*)

let tra_dos = Trail_v.make "domain" "figure" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let ban_cnl_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;
let tra_cnl_l = List.map (fun c -> Trail_v.make "entity" c tra_cat) ban_cnl_l;;

let nam_bui_ll = List.map Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_cnl_l;;

let cnl_n_bul_l = Doublet_list_v.make ban_cnl_l   nam_bui_ll;;

test_number 1 (
cnl_n_bul_l
(* : (String.t, string list) Doublet_list_t.doublet_list *)
=
  [("triangle_isoceles_equilateral:ofstring", ["point"; "vector"]);
   ("triangle_isoceles_right:ofstring", ["point"; "vector"]);
   ("triangle_isoceles_acute:ofstring", ["point"; "vector"]);
   ("triangle_isoceles_obtuse:ofstring", ["point"; "vector"]);
   ("triangle_scalene_right:ofstring", ["point"; "vector"]);
   ("triangle_scalene_acute:ofstring", ["point"; "vector"]);
   ("triangle_scalene_obtuse:ofstring", ["point"; "vector"]);
   ("fake_son_constructor", ["string"]);
   ("vector_constructor:ofstring", ["point"]);
   ("point_constructor:ofstring", ["coordinate"]);
   ("x:ofstring", ["float"; "string"]); 
   ("y:ofstring", ["float"; "string"]);
   ("z:ofstring", ["float"; "string"]);
   ("cylindrical_rho", ["float"; "string"]);
   ("cylindrical_phi", ["float"; "string"]);
   ("cylindrical_zed", ["float"; "string"]);
   ("spherical_rho", ["float"; "string"]);
   ("spherical_phi", ["float"; "string"]);
   ("spherical_theta", ["float"; "string"]);
   ("polar_rho", ["float"; "string"]); 
   ("polar_theta", ["float"; "string"])]
);;

(*********
let tra_ent = Trail_v.make "entity" "xxxxx" tra_cat;;
test_raises_this_exc (Failure
"Constructor_leaf_basename_not_found:righthandside_string_by_constructor_leaf_trail_provider_v.ml:build_n_store")
Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;;
********)
