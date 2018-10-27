(** {3 Entity_builder_base_symbol_list_by_entity_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v";
   "Current : IGNR:Entity_builder_base_symbol_list_by_entity_tritup_provider_v";
   "Needed-by : ";
   "Definition : an Entity_builder_base is an Entity_proper builder defined in formulas.set database";
   "Definition : an Entity_builder_base_symbol is the Entity_symbol translated from Entity_builder_basename";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "builder_symbol_list_by_entity_tritup_register";;

let builder_symbol_list_by_entity_tritup_register : 
    (
     (Entity_symbol_t.entity_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_proper_symbol_t.entity_proper_symbol list
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_ent sym_ent_sut =
  try Register_v.store 
      builder_symbol_list_by_entity_tritup_register tri_ent sym_ent_sut
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_ent =
  Register_v.is_stored 
    builder_symbol_list_by_entity_tritup_register tri_ent
;;

let retrieve tri_ent =
  try Register_v.retrieve 
      builder_symbol_list_by_entity_tritup_register tri_ent
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Already_stored:"^nam_cod^":retrieve")
;;  

let build tri_ent =
  let (sym_ent, sym_cat, sym_dos) = tri_ent in
  let sym_efn = Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent in
  let tri_efn = Triplet_v.make sym_efn sym_cat sym_dos in

  Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn
;;

let build_n_store tri_ent =
  let sym_bui_l = build tri_ent in
  store tri_ent sym_bui_l; 
  sym_bui_l
;;

let provide tri_ent =
  if Register_v.is_stored 
      builder_symbol_list_by_entity_tritup_register 
      tri_ent 
  then retrieve tri_ent
  else build_n_store tri_ent 
;;
