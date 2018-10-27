(** {3 Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v";
   "Current : IGNR:Entity_builder_proper_topson_symbol_list_by_entity_proper_tritup_provider_v";
   "Needed-by : IGNR:";
   "Definition : an Entity Builder_main is the main proper_entity of a Builder when it is a Proper there is NO main for Basic";
   "How-is-it-done : for an Entity_proper it is its list of Topsons not Basic";
   "Example : Point -> [Coordinate] and Coordinate -> []"; 
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_builder_main_symbol_list_by_entity_proper_tritup_register";;

let entity_builder_main_symbol_list_by_entity_proper_tritup_register : 
    (
     (Entity_proper_symbol_t.entity_proper_symbol,
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Triplet_t.triplet,
     
     Entity_proper_symbol_t.entity_proper_symbol list
    
    ) Register_t.register = Register_v.make 137
;;

let store tri_enp sym_ebm_l =
  try Register_v.store
      entity_builder_main_symbol_list_by_entity_proper_tritup_register 
      tri_enp 
      sym_ebm_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_enp =
  Register_v.is_stored 
    entity_builder_main_symbol_list_by_entity_proper_tritup_register tri_enp
;;

let retrieve tri_enp =
  try Register_v.retrieve 
      entity_builder_main_symbol_list_by_entity_proper_tritup_register tri_enp
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let entity_builder_main_symbol_list_of_entity_proper_tritup_symbol tri_enp =
   
  let sym_enb_t = 
      Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v.provide
      tri_enp
  in

  let sym_ent_l = Tree_v.topson_notleaf_node_list_off_tree sym_enb_t in
  List.map
    Entity_symbol_v.entity_proper_symbol_off_entity_symbol
    sym_ent_l
;;

let build tri_enp =
  entity_builder_main_symbol_list_of_entity_proper_tritup_symbol tri_enp
;;

let build_n_store tri_enp =
  let sym_ebm_l = build tri_enp in
  store tri_enp sym_ebm_l; 
  sym_ebm_l
;;

let provide tri_enp =
  if Register_v.is_stored 
      entity_builder_main_symbol_list_by_entity_proper_tritup_register
      tri_enp 
  then retrieve tri_enp
  else build_n_store tri_enp 
;;


