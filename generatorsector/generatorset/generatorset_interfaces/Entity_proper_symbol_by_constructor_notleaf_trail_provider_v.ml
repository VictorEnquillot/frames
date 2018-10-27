(** {3 Entity_proper_symbol_by_constructor_notleaf_trail_provider_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_notleaf_basename_list_by_domain_trail_provider_v";
   "Needs : AGNR:Constructor_basename_tree_by_domain_trail_provider_v";
   "Current : IGNR:Entity_proper_symbol_by_constructor_notleaf_trail_provider_v";
   "Needed-by : ";
   "What-is-it : It translate each Constructor_notleaf_basename into an Entity_proper_symbol";
   "How-is-it-done : ";
   "Invariant : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_proper_symbol_by_constructor_notleaf_trail_register";;

let entity_proper_symbol_by_constructor_notleaf_trail_register : 
    (Trail_t.trail, 
     Entity_proper_symbol_t.entity_proper_symbol) 
    Register_t.register = Register_v.make 137
;;

let store tra_cnl sym_enp =
  let nam_fun = "store" in
  
  try Register_v.store 
      entity_proper_symbol_by_constructor_notleaf_trail_register 
      tra_cnl 
      sym_enp
  with 
    Failure ("Already_stored:Register_v.ml:store") ->
      Utilities_v.failwith_of_message_of_code_name_of_function_name
	"Already_stored" nam_cod nam_fun
;;

let is_stored tra_cnl =
  Register_v.is_stored 
    entity_proper_symbol_by_constructor_notleaf_trail_register
    tra_cnl
;;

let retrieve tra_cnl =
  try Register_v.retrieve 
      entity_proper_symbol_by_constructor_notleaf_trail_register tra_cnl
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build tra_cnl =
  let tra_dom = Trail_v.trail_of_key_off_trail "domain" tra_cnl in
  let nam_con_t = 
    Constructor_basename_tree_by_domain_trail_provider_v.provide 
      tra_dom
  in

  let nam_cnl = Trail_v.value_of_key_off_trail "entity" tra_cnl in

  let sut = Tree_v.subtree_find_of_node_predicate_off_tree (fun n -> n = nam_cnl) nam_con_t in
  let son_l = Tree_v.topson_node_list_off_tree sut in
  let cou_son = List.length son_l in

   Translating_entity_symbol_of_constructor_basename_v.entity_proper_symbol_of_constructor_notleaf_basename_of_son_count 
    nam_cnl 
    cou_son
;;

let build_n_store tra_cnl =
  let sym_enp = build tra_cnl in
  store tra_cnl sym_enp; 
  sym_enp
;;

let provide tra_cnl =
  let nam_fun = "provide" in
  if not (Trail_v.has_of_head_key_off_trail "entity" tra_cnl) 
  then 
    Error_messages_v.print_fatal_error nam_cod nam_fun
      "entity trail"
      (Format.sprintf "%s instead" (Trail_v.name tra_cnl))
      "Check"
  else
    begin
      if Register_v.is_stored 
	  entity_proper_symbol_by_constructor_notleaf_trail_register 
          tra_cnl
      then retrieve tra_cnl
      else build_n_store tra_cnl 
    end
