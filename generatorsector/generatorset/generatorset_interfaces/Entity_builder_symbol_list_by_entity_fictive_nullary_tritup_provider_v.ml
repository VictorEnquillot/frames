(** {3 Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v";
   "Needs : IGNR:Entity_builder_basic_symbol_list_by_entity_fictive_nullary_tritup_provider_v";
   "Current : IGNR:Entity_builder_symbol_list_by_entity_fictive_nullary_tritup_provider_v";
   "Needed-by : ";
   "Definition : an Entity_builder is an Entity_base or an Entity_basic"
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_builder_symbol_list_by_entity_fictive_nullary_tritup_register";;

let entity_builder_symbol_list_by_entity_fictive_nullary_tritup_register : 
    (
     (Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
 
     Entity_symbol_t.entity_symbol list     
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_efn sym_ent_sut =
  try Register_v.store 
      entity_builder_symbol_list_by_entity_fictive_nullary_tritup_register tri_efn sym_ent_sut
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_efn =
  Register_v.is_stored 
    entity_builder_symbol_list_by_entity_fictive_nullary_tritup_register tri_efn
;;

let retrieve tri_efn =
  try Register_v.retrieve 
      entity_builder_symbol_list_by_entity_fictive_nullary_tritup_register tri_efn
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Already_stored:"^nam_cod^":retrieve")
;;  

let build tri_efn =
  let sym_efb_l = Entity_builder_basic_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn in
  let sym_enp_l = Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn in
  
  (List.map Entity_symbol_v.entity_symbol_of_entity_fictive_basicnullary_symbol sym_efb_l
   @ 
     List.map Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp_l)
;;

let build_n_store tri_efn =
  let sym_bui_l = build tri_efn in
  store tri_efn sym_bui_l; 
  sym_bui_l
;;

let provide tri_efn =
  if Register_v.is_stored 
      entity_builder_symbol_list_by_entity_fictive_nullary_tritup_register 
      tri_efn 
  then retrieve tri_efn
  else build_n_store tri_efn 
;;
