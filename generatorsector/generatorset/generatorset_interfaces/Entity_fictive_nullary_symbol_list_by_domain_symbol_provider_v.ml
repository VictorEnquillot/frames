(** {3 Entity_fictive_nullary_symbol_list_by_domain_symbol_provider_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "Current : IGNR:Entity_fictive_nullary_symbol_list_by_domain_symbol_provider_v";
   "Needed-by : FGNR:Category_interface_v";
   "What-is-it : It provides an additional Entity Symbol list for Formula tag";
   "How-is-it-done : from Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "How-is-it-done : get the leaves once";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_fictive_nullary_symbol_list_by_domain_symbol_register";;

let entity_fictive_nullary_symbol_list_by_domain_symbol_register : 
    (Domain_symbol_t.domain_symbol, 
     Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol list) 
    Register_t.register = Register_v.make 137
;;

let store sym_dos sym_enp_l =
  try Register_v.store 
      entity_fictive_nullary_symbol_list_by_domain_symbol_register 
      sym_dos 
      sym_enp_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored sym_dos =
  Register_v.is_stored 
    entity_fictive_nullary_symbol_list_by_domain_symbol_register
    sym_dos
;;

let retrieve sym_dos =
  try Register_v.retrieve 
      entity_fictive_nullary_symbol_list_by_domain_symbol_register sym_dos
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build sym_dos =
  let sym_ent_fut = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dos
  in
  let sym_ent_lea_l =
    Tree_v.leaf_node_list_off_tree 
      sym_ent_fut
  in
  let sym_ent_onc_l =
    List_v.left_once_list_off_list 
      sym_ent_lea_l 
  in
  let sym_ent_uns_l =
    List.map 
      Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol 
      sym_ent_onc_l
  in
  List.sort Entity_fictive_nullary_symbol_v.compare sym_ent_uns_l
;;

let build_n_store sym_dos =
  let sym_enp_l = build sym_dos in
  store sym_dos sym_enp_l; 
  sym_enp_l
;;

let provide sym_dos =
  if Register_v.is_stored 
      entity_fictive_nullary_symbol_list_by_domain_symbol_register 
      sym_dos 
  then retrieve sym_dos
  else build_n_store sym_dos 
;;
