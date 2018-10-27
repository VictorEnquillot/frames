(** {3 Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "Current : IGNR:Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v";
   "Needed-by : IGNR:passim";
   "What-is-it : It provides an Entity Symbol list for any category tag";
   "Remark : it is built from IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "Remark : because the Tree structure is necessary to assign a Symbol to an Entity name";
   "Invariant : Node list is Once_list";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_symbol_list_by_domain_symbol_register";;

let entity_symbol_list_by_domain_symbol_register : 
    (Domain_symbol_t.domain_symbol, 
     Entity_symbol_t.entity_symbol list) 
    Register_t.register = Register_v.make 137
;;

let store sym_dos sym_ent_l =
  try Register_v.store 
      entity_symbol_list_by_domain_symbol_register 
      sym_dos 
      sym_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sym_dos =
  Register_v.is_stored 
    entity_symbol_list_by_domain_symbol_register
    sym_dos
;;

let retrieve sym_dos =
  try Register_v.retrieve 
      entity_symbol_list_by_domain_symbol_register sym_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

(* {6 Invariants} *)

let is_once_list_of_entity_symbol_list sym_ent_l =
  let nam_fun = "is_once_list_of_entity_symbol_list" in
  if not (List_v.is_once_list_of_list sym_ent_l)
  then
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "Entity_symbol list were a Once list" 
      "that it was NOT true"
      "Check symbols.set file" 
  else
    sym_ent_l
;;

let build sym_dos =
  let sym_ent_ft = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide
      sym_dos
  in
  let sym_ent_l = Tree_v.node_list_off_tree sym_ent_ft in

  let onc_l = is_once_list_of_entity_symbol_list sym_ent_l in
  List.sort Entity_symbol_v.compare onc_l
;;

let build_n_store sym_dos =
  let sym_ent_l = build sym_dos in
  store sym_dos sym_ent_l; 
  sym_ent_l
;;

let provide sym_dos =
  if Register_v.is_stored 
      entity_symbol_list_by_domain_symbol_register 
      sym_dos 
  then retrieve sym_dos
  else build_n_store sym_dos 
;;
