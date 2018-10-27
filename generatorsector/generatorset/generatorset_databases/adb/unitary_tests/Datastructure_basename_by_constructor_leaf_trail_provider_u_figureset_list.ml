open Make_test_v;;

testing "Datastructure_basename_by_constructor_leaf_trail_provider_v with
   Datastructure_basename_by_constructor_leaf_trail_provider_u_figureset_list.ml";; 

(* toplevel 
   #use "Datastructure_basename_by_constructor_leaf_trail_provider_u_figureset_list.ml";; 

*)

let tra_dos = Trail_v.make "domain" "figure" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let dou_clb_dab_l = Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

let ban_cle_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;

let tra_cle_l = List.map (fun e -> Trail_v.make "entity" e tra_cat) ban_cle_l;;

let ban_dal_l = List.map Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_cle_l;;

let dou_l = List.map2 Doublet_v.make ban_cle_l ban_dal_l;;
let exc_l = List_v.exclusive_union_of_list_of_list dou_clb_dab_l dou_l;;

test_number 1 (
exc_l
=
[]
);;

(****
let tra_ent_flo = Trail_v.make "entity" "float" tra_cat;;
test_raises_this_exc (Failure "Constructor_leaf_basename_not_found:datastructure_basename_by_constructor_leaf_trail_provider_v.ml:build_n_store")
Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;;
****)

