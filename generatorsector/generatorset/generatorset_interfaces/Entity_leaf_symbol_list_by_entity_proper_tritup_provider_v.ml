(** {3 Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide ";
   "Current : IGNR:Entity_leaf_symbol_list_by_entity_proper_tritup_provider_v";
   "Needed-by : IGNR:";
   "What-is-it : it provides the Topson list Leaf from Top Current_entity";
   "Invariant : None";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_leaf_symbol_list_by_entity_proper_tritup_register";;

let entity_leaf_symbol_list_by_entity_proper_tritup_register : 
    (
     (Entity_proper_symbol_t.entity_proper_symbol,
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_enp sym_efn_l =
  try Register_v.store
      entity_leaf_symbol_list_by_entity_proper_tritup_register 
      tri_enp 
      sym_efn_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_enp =
  Register_v.is_stored 
    entity_leaf_symbol_list_by_entity_proper_tritup_register tri_enp
;;

let retrieve tri_enp =
  try Register_v.retrieve 
      entity_leaf_symbol_list_by_entity_proper_tritup_register tri_enp
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build tri_enp =
  let nam_fun = "build" in

  let (sym_enp, sym_cat, sym_dom) = tri_enp in

  let sym_ent_ct = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dom
  in

  let sym_ent = Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp in

  let sym_ent_sut =
    try Tree_v.subtree_of_node_off_tree sym_ent sym_ent_ct
    with Failure("Not_found:Tree_v:subtree_of_node_predicate_off_tree") ->
      let nod_l = Tree_v.node_list_off_tree sym_ent_ct in  
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "Entity >%s< were a node of current Constructor Tree" 
	   (Entity_symbol_v.fullname sym_ent)
	)
	(Format.sprintf "Constructor Tree node list is:@.    %s"
	   (List_v.name_with_separator Entity_symbol_v.fullname "\n   " nod_l)
	)
	"Check how entity_symbol was done"
  in

  let sym_ent_l = Tree_v.leaf_node_list_off_tree sym_ent_sut in
  List.map Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent_l
;;

let build_n_store tri_enp =
  let sym_efn_l = build tri_enp in
  store tri_enp sym_efn_l; 
  sym_efn_l
;;

let provide tri_enp =
  if Register_v.is_stored 
      entity_leaf_symbol_list_by_entity_proper_tritup_register
      tri_enp 
  then retrieve tri_enp
  else build_n_store tri_enp 
;;


