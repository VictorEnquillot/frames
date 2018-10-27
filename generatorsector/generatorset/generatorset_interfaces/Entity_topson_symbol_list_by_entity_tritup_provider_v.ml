(** {3 Entity_topson_symbol_list_by_entity_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide ";
   "Current : IGNR:Entity_topson_symbol_list_by_entity_tritup_provider_v";
   "Needed-by : IGNR:";
   "What-is-it : it provides the Topson list from Top Current_entity";
   "Remark : when Current or Son are lacking Entity_symbol_v.empty is used instead";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_topson_symbol_list_by_entity_tritup_register";;

let entity_topson_symbol_list_by_entity_tritup_register : 
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
      entity_topson_symbol_list_by_entity_tritup_register 
      tri_ent 
      tri_sym_enc
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_ent =
  Register_v.is_stored 
    entity_topson_symbol_list_by_entity_tritup_register tri_ent
;;

let retrieve tri_ent =
  try Register_v.retrieve 
      entity_topson_symbol_list_by_entity_tritup_register tri_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build tri_ent =
  let sym_dos = Triplet_v.right_off_triplet tri_ent in
  let sym_ent_fut = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dos
  in

  let sym_ent = Triplet_v.left_off_triplet tri_ent in
  let sym_ent_sut =
    Tree_v.subtree_of_node_off_tree sym_ent sym_ent_fut
  in
  Tree_v.topson_node_list_off_tree sym_ent_sut
;;

let build_n_store tri_ent =
  let tri_sym_enc = build tri_ent in
  store tri_ent tri_sym_enc; 
  tri_sym_enc
;;

let provide tri_ent =
  if Register_v.is_stored 
      entity_topson_symbol_list_by_entity_tritup_register
      tri_ent 
  then retrieve tri_ent
  else build_n_store tri_ent 
;;


