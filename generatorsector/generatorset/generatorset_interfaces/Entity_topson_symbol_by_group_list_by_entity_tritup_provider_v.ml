(** {3 Entity_topson_symbol_by_group_list_by_entity_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide ";
   "Current : IGNR:Entity_topson_symbol_by_group_list_by_entity_tritup_provider_v";
   "Needed-by : IGNR:";
   "What-is-it : it provides the Topson list from Top Current_entity";
   "Remark : when Current or Son are lacking Entity_symbol_v.empty is used instead";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_topson_symbol_by_group_list_by_entity_tritup_register";;

let entity_topson_symbol_by_group_list_by_entity_tritup_register : 
    (
     (Entity_symbol_t.entity_symbol,
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_symbol_t.entity_symbol list
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_ent tri_sym_enc =
  try Register_v.store
      entity_topson_symbol_by_group_list_by_entity_tritup_register 
      tri_ent 
      tri_sym_enc
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_ent =
  Register_v.is_stored 
    entity_topson_symbol_by_group_list_by_entity_tritup_register tri_ent
;;

let retrieve tri_ent =
  try Register_v.retrieve 
      entity_topson_symbol_by_group_list_by_entity_tritup_register tri_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build tri_ent =
  let sym_etb_l = Entity_topson_bare_symbol_list_by_entity_tritup_provider_v.provide tri_ent in
  let sym_eto_l = Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v.provide tri_ent in
  let sym_etn_l = Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v.provide tri_ent in
  sym_etb_l @ sym_eto_l @ sym_etn_l 
;;

let build_n_store tri_ent =
  let tri_sym_enc = build tri_ent in
  store tri_ent tri_sym_enc; 
  tri_sym_enc
;;

let provide tri_ent =
  if Register_v.is_stored 
      entity_topson_symbol_by_group_list_by_entity_tritup_register
      tri_ent 
  then retrieve tri_ent
  else build_n_store tri_ent 
;;


