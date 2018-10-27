(** {3 Translating_entity_fictive_symbol_of_builder_basename_v.ml} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Entity_basic_basename_list_by_domain_trail_provider_v";
   "Needs : AGNR:Entity_leaf_basename_list_by_domain_trail_provider_v";
   "Needs : IGNR:Entity_symbol_constructor_tree_by_domain_symbol_provider_v";
   "Needs : IGNR:Translating_trail_of_tag_v";
   "Current : IGNR:Translating_entity_fictive_symbol_of_builder_basename_v";
   "Needed-by : ";
   "What-is-it : ";
   "How-is-it-done : ";
   "Remark : ";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

let entity_fictive_symbol_off_fulltree sym_dos nam_bui =
  let sym_ent_ft =
    Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide 
      sym_dos
  in
  let sym_ent = 
    try
      Tree_v.node_find_of_node_predicate_off_tree 
	(fun n -> Entity_symbol_v.string_off n = nam_bui) 
	sym_ent_ft 
    with Failure ("Not_found:Tree_v.ml:node_find_of_predicate_off_tree") ->
      Error_messages_v.print_fatal_error nam_cod "entity_fictive_nullary"
	(Format.sprintf "Builder_basename >%s< were a node of Entity_symbol_fulltree" nam_bui)
	"it is NOT" "Check"
  in
  Entity_symbol_v.entity_fictive_symbol_off_entity_symbol sym_ent
;;

let translate sym_dos nam_bui =
  let tra_dos = 
    Translating_trail_of_symbol_v.domain_trail_of_domain_symbol 
      sym_dos
  in
  let nam_ent_bas_l = 
    Entity_basic_basename_list_by_domain_trail_provider_v.provide 
      tra_dos 
  in
  let nam_ent_lea_l = 
    Entity_leaf_basename_list_by_domain_trail_provider_v.provide 
      tra_dos 
  in

  match nam_bui with
  | n when (List.mem nam_bui nam_ent_lea_l) ->
      entity_fictive_symbol_off_fulltree sym_dos nam_bui

  | n when (List.mem nam_bui nam_ent_bas_l) ->
      let sym_efb = 
	try
	  Entity_builder_basic_symbol_v.make nam_bui "" 
	with Failure ("Not_Entity_builder_basic_symbol:Entity_builder_basic_symbol_v.ml:make") ->
      Error_messages_v.print_fatal_error nam_cod "translate"
	    (Format.sprintf "Builder_basename >%s< were an Entity_builder_basic" nam_bui)
	    "it is NOT" 
	    "Check or add it to in Entity_builder_basic_symbol_v.make"
      in
      Entity_fictive_symbol_v.entity_fictive_symbol_of_entity_builder_basic_symbol sym_efb 

  | n -> 
      Error_messages_v.print_fatal_error nam_cod "translate"
	(Format.sprintf "Builder_basename >%s< were in Entity_leaf_basename_list|Entity_basic_basename_list" nam_bui)
	"it is NOT" "Check"
;;
