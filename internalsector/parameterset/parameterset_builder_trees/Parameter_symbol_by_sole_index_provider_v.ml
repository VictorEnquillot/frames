(** {3 Parameter_symbol_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_symbol_by_sole_index_provider_v";
   "Needs : BPAR:Parameter_symbol_by_sole_index_register_filler_v";
   "Needed-by : BPAR:";
   "What-is-it : the provider of Parameter_symbol by any sole_index";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_ele =
  Parameter_symbol_by_sole_index_register_filler_v.fill soi_ele;

  if Register_v.is_stored Parameter_symbol_by_sole_index_register_v.register soi_ele 
  then Parameter_symbol_by_sole_index_register_v.retrieve nam_mod soi_ele
  else 
    Error_messages_v.print_fatal_error __LOC__ "provide"
      (Format.sprintf "to find a Parameter Symbol associated with sole_index %s" (Sole_index_v.name soi_ele))
      "Not Stored" 
      (Format.sprintf "Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v should have create this entry@.\
      with :@.    Parameter_symbol_by_sole_index_provider_v.store soi_x sym_x.\
       @.    Here is a dump of Parameter_symbol_by_sole_index_register_v.register:@. %s@.    Register length =%i" 
	 (Parameter_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Parameter_symbol_by_sole_index_register_v.register) 
      )
;;

(** {6 Providing} *)

let provide soi_ele =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build soi_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_dddd_symbol_by_sole_index_provider_v.ml *)
(* done with do_dddd_symbol_by_sole_index_provider.sh force on lundi 10 octobre 2016, 09:13:04 (UTC+0200) *)
