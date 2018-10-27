(** {3 Entity_topson_symbol_list_by_entity_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide ";
   "Current : IGNR:Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v";
   "Needed-by : IGNR:";
   "What-is-it : it provides the Topson list Notleaf from Top Current_entity";
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
  let nam_fun = "build" in
  
  let sym_dom = Triplet_v.right_off_triplet tri_ent in
  let sym_ent_fut = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dom
  in

  let sym_ent = Triplet_v.left_off_triplet tri_ent in
  let sym_ent_sut =
    try 
      Tree_v.subtree_of_node_off_tree sym_ent sym_ent_fut
    with Failure "Not_found:Tree_v:subtree_of_node_predicate_off_tree" ->
      Error_messages_v.print_fatal_error nam_cod nam_fun 
      (Format.sprintf "Node >%s< had a subtree of the Constructor Tree" 
	 (Entity_symbol_v.fullname sym_ent)
      )
	(Format.sprintf "Constructor Tree is :@.  %s@."
	   (Tree_v.name Entity_symbol_v.fullname sym_ent_fut)
	)
	"Check" 
  in
  Tree_v.topson_notleaf_node_list_off_tree sym_ent_sut
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


