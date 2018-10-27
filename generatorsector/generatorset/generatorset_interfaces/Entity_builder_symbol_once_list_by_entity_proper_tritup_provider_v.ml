(** {3 Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v";
   "Needs : IGNR:Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v";
   "Current : IGNR:Entity_builder_symbol_once_list_by_entity_proper_tritup_provider_v";
   "Needed-by : ";
   "Definition : an Entity_builder is either an Entity_proper or an Entity_basic";
   "What-is-it : the builder list of all CT-leaves of an entity proper";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "builder_symbol_once_list_by_entity_proper_tritup_register";;

let builder_symbol_once_list_by_entity_proper_tritup_register : 
    (
     (Entity_proper_symbol_t.entity_proper_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_symbol_t.entity_symbol list
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_enp sym_ebo_l =
  try Register_v.store 
      builder_symbol_once_list_by_entity_proper_tritup_register tri_enp sym_ebo_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_enp =
  Register_v.is_stored 
    builder_symbol_once_list_by_entity_proper_tritup_register tri_enp
;;

let retrieve tri_enp =
  try Register_v.retrieve 
      builder_symbol_once_list_by_entity_proper_tritup_register tri_enp
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Already_stored:"^nam_cod^":retrieve")
;;  

let build tri_enp =

  let sym_enl_l = 
    Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide 
      tri_enp
  in
  let tri_enl_l = List.map 
      (fun s -> Triplet_v.reset_of_left_off_triplet s tri_enp) 
      sym_enl_l 
  in

(* *** Improve : leaf and nullary are identical *)

  let sym_ebu_ll = List.map 
      Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide
      tri_enl_l
  in

  let sym_ebu_l = List.flatten sym_ebu_ll in

  List_v.left_once_list_off_list sym_ebu_l
;;

let build_n_store tri_enp =
  let sym_ebo_l = build tri_enp in
  store tri_enp sym_ebo_l; 
  sym_ebo_l
;;

let provide tri_enp =
  if Register_v.is_stored 
      builder_symbol_once_list_by_entity_proper_tritup_register 
      tri_enp 
  then retrieve tri_enp
  else build_n_store tri_enp 
;;
