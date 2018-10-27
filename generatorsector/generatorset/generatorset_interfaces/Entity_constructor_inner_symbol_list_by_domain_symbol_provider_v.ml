(** {3 Entity_constructor_inner_symbol_list_by_domain_symbol_provider_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_inconstructortree_by_domain_symbol_provider_v";
   "Current : IGNR:Entity_constructor_inner_symbol_list_by_domain_symbol_provider_v";
   "Needed-by : IGNR:passim";
   "What-is-it : It provides an Entity Symbol list for any category tag";
   "Remark : it is built from IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "Remark : because the Tree structure is necessary to assign a Symbol to an Entity name";
   "Invariant : Node list is Once_list";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_constructor_inner_symbol_list_by_domain_symbol_register";;

let entity_constructor_inner_symbol_list_by_domain_symbol_register : 
    (Domain_symbol_t.domain_symbol, 
     Entity_symbol_t.entity_symbol list) 
    Register_t.register = Register_v.make 137
;;

let store sym_dom sym_ent_l =
  try Register_v.store 
      entity_constructor_inner_symbol_list_by_domain_symbol_register 
      sym_dom 
      sym_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sym_dom =
  Register_v.is_stored 
    entity_constructor_inner_symbol_list_by_domain_symbol_register
    sym_dom
;;

let retrieve sym_dom =
  try Register_v.retrieve 
      entity_constructor_inner_symbol_list_by_domain_symbol_register sym_dom
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

let build sym_dom =
  let sym_eic_l = 
    Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide
      sym_dom
  in
  
  let nam_dom = Domain_symbol_v.name sym_dom in
  let sym_enr_l = List.filter 
      (fun e -> Entity_symbol_v.string_off e <> nam_dom) 
      sym_eic_l
  in
  
  List.filter 
    Entity_symbol_v.is_entity_proper_symbol_off_entity_symbol
    sym_enr_l
;;

let build_n_store sym_dom =
  let sym_ent_l = build sym_dom in
  store sym_dom sym_ent_l; 
  sym_ent_l
;;

let provide sym_dom =
  if Register_v.is_stored 
      entity_constructor_inner_symbol_list_by_domain_symbol_register 
      sym_dom 
  then retrieve sym_dom
  else build_n_store sym_dom 
;;
