(** {3 Entity_proper_symbol_list_by_domain_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_subtree_list_by_domain_symbol_provider_v";
   "Current : IGNR:Entity_proper_symbol_list_by_domain_symbol_provider_v";
   "Needed-by : FGNR:Category_interface_v";
   "What-is-it : It provides an Entity Symbol list for any category tag";
   "Remark : it is built from IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "Remark : because the Tree structure is necessary to assign a Symbol to an Entity name";
   "Invariant : These Entity_proper_symbol are necessarily Top_entity not Current_entity";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_proper_symbol_list_by_domain_symbol_register";;

let entity_proper_symbol_list_by_domain_symbol_register : 
    (Domain_symbol_t.domain_symbol, 
     Entity_proper_symbol_t.entity_proper_symbol list) 
    Register_t.register = Register_v.make 137
;;

let store sym_dos sym_enp_l =
  try Register_v.store 
      entity_proper_symbol_list_by_domain_symbol_register 
      sym_dos 
      sym_enp_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sym_dos =
  Register_v.is_stored 
    entity_proper_symbol_list_by_domain_symbol_register
    sym_dos
;;

let retrieve sym_dos =
  try Register_v.retrieve 
      entity_proper_symbol_list_by_domain_symbol_register sym_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build sym_dos =
  let sym_ent_fut = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide
      sym_dos
  in
  let sym_ent_l = Tree_v.node_list_off_tree sym_ent_fut in
 
  let lst = List.filter Entity_symbol_v.is_entity_proper_symbol_off_entity_symbol sym_ent_l in
  List.map Entity_symbol_v.entity_proper_symbol_off_entity_symbol lst
;;

let build_n_store sym_dos =
  let sym_enp_l = build sym_dos in
  store sym_dos sym_enp_l; 
  sym_enp_l
;;

let provide sym_dos =
  if Register_v.is_stored 
      entity_proper_symbol_list_by_domain_symbol_register 
      sym_dos 
  then retrieve sym_dos
  else build_n_store sym_dos 
;;
