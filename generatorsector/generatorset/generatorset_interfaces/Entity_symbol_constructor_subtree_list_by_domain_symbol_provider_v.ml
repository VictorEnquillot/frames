(** {3 Entity_symbol_constructor_subtree_list_by_domain_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
    "Current : IGNR:Entity_symbol_constructor_subtree_list_by_domain_symbol_provider_v";
   "Needed-by : IGNR:Entity_proper_list_by_domain_symbol_provider_v";
   "What-is-it : the list of all Subtrees of the above Fulltree";
   "Remark : Entity are Currententity";
   "Remark : because the Tree structure is necessary to assign a Symbol to an Entity name";
   "Improve : may not be necessary";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_symbol_constructor_subtree_list_by_domain_symbol_register";;

let entity_symbol_constructor_subtree_list_by_domain_symbol_register : 
    (Domain_symbol_t.domain_symbol, 
     (Entity_symbol_t.entity_symbol Tree_t.tree) list) 
    Register_t.register = Register_v.make 137
;;

let store sym_dos sym_ent_tl =
  try Register_v.store 
      entity_symbol_constructor_subtree_list_by_domain_symbol_register 
      sym_dos 
      sym_ent_tl
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sym_dos =
  Register_v.is_stored 
    entity_symbol_constructor_subtree_list_by_domain_symbol_register
    sym_dos
;;

let retrieve sym_dos =
  try Register_v.retrieve 
      entity_symbol_constructor_subtree_list_by_domain_symbol_register sym_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build sym_dos =
  let sym_ent_ft = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide
      sym_dos
  in
  Tree_v.subtree_list_off_tree sym_ent_ft
;;

let build_n_store sym_dos =
  let sym_ent_tl = build sym_dos in
  store sym_dos sym_ent_tl; 
  sym_ent_tl
;;

let provide sym_dos =
  if Register_v.is_stored 
      entity_symbol_constructor_subtree_list_by_domain_symbol_register 
      sym_dos 
  then retrieve sym_dos
  else build_n_store sym_dos 
;;
