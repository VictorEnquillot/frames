open Make_test_v;;

testing "Righthandside_string_by_constructor_notleaf_trail_provider_v with
   Righthandside_string_by_constructor_notleaf_trail_provider_u_generatorset_item.ml";; 

(* toplevel 
   #use "Righthandside_string_by_constructor_notleaf_trail_provider_u_generatorset_item.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset_item" [];;

let dou_cnb_rhs_l = Constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

let ent_l = List.map Doublet_v.left_off_doublet dou_cnb_rhs_l;; 

let tra_ent_l = List.map (fun e -> Trail_v.make "entity" e tra_dos) ent_l;;

let str_rhs_l = List.map Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent_l;;

let dou_l = List.map2 Doublet_v.make  ent_l str_rhs_l;; 

test_number 1 (
dou_cnb_rhs_l
=
dou_l
);;

let tra_ent = Trail_v.make "entity" "xxxxx" tra_dos;;
test_raises_this_exc (Failure "Constructor_notleaf_basename_not_found:Righthandside_string_by_constructor_notleaf_trail_provider_v.ml:build") Righthandside_string_by_constructor_notleaf_trail_provider_v.provide tra_ent;;


