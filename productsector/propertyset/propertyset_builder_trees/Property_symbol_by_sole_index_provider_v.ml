(** {3 Property_symbol_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_symbol_by_sole_index_provider_v";
   "Needs : BPRO:Property_symbol_by_sole_index_register_filler_v";
   "Needed-by : BPRO:";
   "What-is-it : the provider of Property_symbol by any sole_index";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_pro =
  Property_symbol_by_sole_index_register_filler_v.fill soi_pro;

  if Register_v.is_stored Property_symbol_by_sole_index_register_v.register soi_pro 
  then Property_symbol_by_sole_index_register_v.retrieve nam_mod soi_pro
  else 
    Error_messages_v.print_fatal_error __LOC__ "provide"
      (Format.sprintf "to find a Property Symbol associated with sole_index %s" (Sole_index_v.name soi_pro))
      "Not Stored" 
      (Format.sprintf "Property_tag_all_list_by_property_context_inputbox_tag_provider_v should have create this entry@.\
      with :@.    Property_symbol_by_sole_index_provider_v.store soi_x sym_x.\
       @.    Here is a dump of Property_symbol_by_sole_index_register_v.register:@. %s@.    Register length =%i" 
	 (Property_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Property_symbol_by_sole_index_register_v.register) 
      )
;;

(** {6 Providing} *)

let provide soi_pro =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build soi_pro in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_dddd_symbol_by_sole_index_provider_v.ml *)
(* done with do_dddd_symbol_by_sole_index_provider.sh force on mardi 15 novembre 2016, 16:37:17 (UTC+0100) *)
