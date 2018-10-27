(** {3 Localinput_symbol_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_symbol_by_sole_index_provider_v";
   "Needs : BLOI:Localinput_symbol_by_sole_index_register_filler_v";
   "Needed-by : BLOI:";
   "What-is-it : the provider of Localinput_symbol by any sole_index";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_l =
  Localinput_symbol_by_sole_index_register_filler_v.fill soi_l;

  if Register_v.is_stored Localinput_symbol_by_sole_index_register_v.register soi_l 
  then Localinput_symbol_by_sole_index_register_v.retrieve nam_mod soi_l
  else 
    Error_messages_v.print_fatal_error __LOC__ "provide"
      (Format.sprintf "to find a Localinput Symbol associated with sole_index %s" (Sole_index_v.name soi_l))
      "Not Stored" 
      (Format.sprintf "Localinput_tag_all_list_by_localinput_context_databox_tag_provider_v should have create this entry@.\
      with :@.    Localinput_symbol_by_sole_index_provider_v.store soi_x sym_x.\
       @.    Here is a dump of Localinput_symbol_by_sole_index_register_v.register:@. %s@.    Register length =%i" 
	 (Localinput_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Localinput_symbol_by_sole_index_register_v.register) 
      )
;;

(** {6 Providing} *)

let provide soi_l =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build soi_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_dddd_symbol_by_sole_index_provider_v.ml *)
(* done with do_dddd_symbol_by_sole_index_provider.sh force on lundi 31 octobre 2016, 14:54:11 (UTC+0100) *)
