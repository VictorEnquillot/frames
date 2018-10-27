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

test_number 1 (
nam_bui_ll 
(* : string list list *)
=
  [["point"];
   ["point"];
   ["point"];
   ["point"];
   ["point"];
   ["point"];
   ["point"];
   ["string"];
   ["point"];
   ["coordinate_cartesian"];
   ["float"];
   ["float"];
   ["float"];
   ["float"];
   ["float"];
   ["float"];
   ["float"];
   ["float"];
   ["float"];
   ["float"];
   ["float"]]
);;

(*********
let tra_ent = Trail_v.make "entity" "xxxxx" tra_cat;;
test_raises_this_exc (Failure
"Constructor_leaf_basename_not_found:righthandside_string_by_constructor_leaf_trail_provider_v.ml:build_n_store")
Builder_basename_list_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;;
********)
