(** {3 Entity_grandson_bare_symbol_list_by_entity_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide ";
   "Current : IGNR:Entity_grandson_bare_symbol_list_by_entity_tritup_provider_v";
   "Needed-by : IGNR:";
   "What-is-it : it provides the Grandson list Leaf from Top Current_entity";
   "Remark : when Current or Son are lacking Entity_symbol_v.empty is used instead";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_grandson_symbol_list_by_entity_tritup_register";;

let entity_grandson_symbol_list_by_entity_tritup_register : 
    (
     (Entity_symbol_t.entity_symbol,
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_symbol_t.entity_symbol list
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_ent tri_ent_l =
  try Register_v.store
      entity_grandson_symbol_list_by_entity_tritup_register 
      tri_ent 
      tri_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_ent =
  Register_v.is_stored 
    entity_grandson_symbol_list_by_entity_tritup_register tri_ent
;;

let retrieve tri_ent =
  try Register_v.retrieve 
      entity_grandson_symbol_list_by_entity_tritup_register tri_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build tri_ent =
  let sym_ent_lea_l =
    Entity_grandson_leaf_symbol_list_by_entity_tritup_provider_v.provide 
      tri_ent
  in
  List.filter Entity_symbol_v.is_bare sym_ent_lea_l
;;

let build_n_store tri_ent =
  let tri_ent_l = build tri_ent in
  store tri_ent tri_ent_l; 
  tri_ent_l
;;

let provide tri_ent =
  if Register_v.is_stored 
      entity_grandson_symbol_list_by_entity_tritup_register
      tri_ent 
  then retrieve tri_ent
  else build_n_store tri_ent 
;;


