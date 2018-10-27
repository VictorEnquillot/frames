(** {3 Some tools of Level 2 for Adb directory*)

let nam_cod = "Tools_agnr_2_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Tools_agnr_1_v";
   "Needs : AGNR:Constructor_leaf_basename_list_by_category_trail_provider_v";
   "Needs : AGNR:Constructor_node_basename_list_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : ";
   "How-is-it-done :";
 ]
;;

let is_constructor_leaf_basename_of_entity_trail tra_ent =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let nam_ent_nod_l =  
    Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem nam_ent nam_ent_nod_l
;;

let is_constructor_node_basename_of_entity_trail tra_ent =
  let tra_dos = Trail_v.trail_of_key_off_trail "domain" tra_ent in
  let nam_ent_nod_l =  
    Constructor_node_basename_list_by_domain_trail_provider_v.provide tra_dos
  in
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_ent in
  List.mem nam_ent nam_ent_nod_l
;;

