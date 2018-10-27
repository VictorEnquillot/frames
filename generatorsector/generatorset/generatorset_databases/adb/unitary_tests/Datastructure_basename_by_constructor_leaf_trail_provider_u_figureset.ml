open Make_test_v;;

testing "Datastructure_basename_by_constructor_leaf_trail_provider_v with
   Datastructure_basename_by_constructor_leaf_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Datastructure_basename_by_constructor_leaf_trail_provider_u_figureset.ml";; 

*)

let tra_dom = Trail_v.make "domain" "figure" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dom;;

let dou_clb_dab_l = Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_v.provide tra_dom;;

let ban_cle_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dom;;

let tra_cle_l = List.map (fun e -> Trail_v.make "entity" e tra_cat) ban_cle_l;;

let ban_dal_l = List.map Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_cle_l;;

let dou_l = List.map2 Doublet_v.make ban_cle_l ban_dal_l;;

test_number 1 (
dou_l 
(* : (String.t, string) Doublet_t.doublet list *)
=
  [("triangle_isoceles_equilateral:ofstring", "doublet");
   ("triangle_isoceles_right:ofstring", "doublet");
   ("triangle_isoceles_acute:ofstring", "doublet");
   ("triangle_isoceles_obtuse:ofstring", "doublet");
   ("triangle_scalene_right:ofstring", "doublet");
   ("triangle_scalene_acute:ofstring", "doublet");
   ("triangle_scalene_obtuse:ofstring", "doublet");
   ("fake_son_constructor", "list");
   ("vector_constructor:ofstring", "duo");
   ("point_constructor:ofstring", "trio");
   ("x:ofstring", "doublet");
   ("y:ofstring", "doublet");
   ("z:ofstring", "doublet");
   ("cylindrical_rho", "doublet");
   ("cylindrical_phi", "doublet");
   ("cylindrical_zed", "doublet");
   ("spherical_rho", "doublet");
   ("spherical_phi", "doublet");
   ("spherical_theta", "doublet");
   ("polar_rho", "doublet");
   ("polar_theta", "doublet")]
);;

let exc_l = List_v.exclusive_union_of_list_of_list dou_clb_dab_l dou_l;;

test_number 2 (
exc_l
=
[]
);;

(****
let tra_ent_flo = Trail_v.make "entity" "float" tra_cat;;
test_raises_this_exc (Failure "Constructor_leaf_basename_not_found:datastructure_basename_by_constructor_leaf_trail_provider_v.ml:build_n_store")
Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;;
****)

