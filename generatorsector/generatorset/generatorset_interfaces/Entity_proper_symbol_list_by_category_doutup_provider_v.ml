(** {3 Entity_proper_symbol_list_by_category_doutup_provider_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_proper_symbol_list_by_domain_symbol_provider_v";
   "Current : IGNR:Entity_proper_symbol_list_by_category_doutup_provider_v";
   "Needed-by : FGNR:Category_interface_v";
   "What-is-it : It provides the Entity Proper Symbol list for any category tag";
   "Remark : it is built from IGNR:Entity_symbol_constructor_tree_by_category_doutup_provider_v";
   "Remark : because the Tree structure is necessary to assign a Symbol to an Entity name";
   "Invariant : These Entity_proper are necessarily Top_entity not Current_entity";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_proper_symbol_list_by_category_doutup_register";;

let entity_proper_symbol_list_by_category_doutup_register : 
    ( (Category_symbol_t.category_symbol,
       Domain_symbol_t.domain_symbol) Doublet_t.doublet, 
      Entity_proper_symbol_t.entity_proper_symbol list) 
    Register_t.register = Register_v.make 137
;;

let store dou_cat sym_enp_l =
  try Register_v.store 
      entity_proper_symbol_list_by_category_doutup_register 
      dou_cat 
      sym_enp_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored dou_cat =
  Register_v.is_stored 
    entity_proper_symbol_list_by_category_doutup_register
    dou_cat
;;

let retrieve dou_cat =
  try Register_v.retrieve 
      entity_proper_symbol_list_by_category_doutup_register dou_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build dou_cat =
  let (sym_cat, sym_dos) = dou_cat in
  Entity_proper_symbol_list_by_domain_symbol_provider_v.provide
    sym_dos
;;

let build_n_store dou_cat =
  let enp_l = build dou_cat in
  store dou_cat enp_l; 
  enp_l
;;

let provide dou_cat =
  if Register_v.is_stored 
      entity_proper_symbol_list_by_category_doutup_register 
      dou_cat 
  then retrieve dou_cat
  else build_n_store dou_cat 
;;
