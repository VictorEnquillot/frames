(** {3 Entity_symbol_path_by_entity_tritup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs  : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "Current : IGNR:Entity_symbol_path_by_entity_tritup_provider_v";
   "Needed-by : IGNR:Entity_symbol_stem_main_set_trio_by_entity_tritup_provider_v";
   "What-is-it : the path to the Root (set entity) of a given Entity_symbol in the Constructor Tree";
   "How-is-it-done : by apply function Tree_v.path_of_node_off_tree to each node of the Entity_symbol_fulltree";
   "Invariant : Entity_symbol_fulltree has all node unique";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_symbol_path_by_entity_tritup_register";;

let entity_symbol_path_by_entity_tritup_register : 
    ((Entity_symbol_t.entity_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol) Triplet_t.triplet,
     Entity_symbol_t.entity_symbol list) 
    Register_t.register = Register_v.make 137
;;

let store tri_ent sym_ent_t =
  try Register_v.store 
      entity_symbol_path_by_entity_tritup_register tri_ent sym_ent_t
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_ent =
  Register_v.is_stored 
    entity_symbol_path_by_entity_tritup_register tri_ent
;;

let retrieve tri_ent =
  try Register_v.retrieve 
      entity_symbol_path_by_entity_tritup_register tri_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build tri_ent =
  let nam_fun = "build" in

  let (sym_ent, sym_cat, sym_dos) = tri_ent in
  let sym_ent_fut = 
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dos
  in

  match sym_ent with
  | Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol sym_efb) ->
	Utilities_v.failwith_of_message_of_code_name_of_function_name 
	  "Not_Entity_fictive_basicnullary_symbol" nam_cod nam_fun

  | _ ->
      let pre_nod e = Entity_symbol_v.string_off e = Entity_symbol_v.string_off sym_ent in
      Tree_v.path_of_node_predicate_off_tree pre_nod sym_ent_fut 
;;

let build_n_store tri_ent =
  let sym_ent_ft = build tri_ent in
  store tri_ent sym_ent_ft; 
  sym_ent_ft
;;

let provide tri_ent =
  if Register_v.is_stored 
      entity_symbol_path_by_entity_tritup_register 
      tri_ent 
  then retrieve tri_ent
  else build_n_store tri_ent 
;;
