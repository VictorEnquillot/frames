(** {3 Elementary_symbol_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_symbol_by_sole_index_provider_v";
   "Needs : BELE:Elementary_symbol_by_sole_index_register_filler_v";
   "Needed-by : BELE:";
   "What-is-it : the provider of Elementary_symbol by any sole_index";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_ele =
  Elementary_symbol_by_sole_index_register_filler_v.fill soi_ele;

  if Register_v.is_stored Elementary_symbol_by_sole_index_register_v.register soi_ele 
  then Elementary_symbol_by_sole_index_register_v.retrieve nam_mod soi_ele
  else 
    Error_messages_v.print_fatal_error __LOC__ "provide"
      (Format.sprintf "to find a Elementary Symbol associated with sole_index %s" (Sole_index_v.name soi_ele))
      "Not Stored" 
      (Format.sprintf "Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v should have create this entry@.\
      with :@.    Elementary_symbol_by_sole_index_provider_v.store soi_x sym_x.\
       @.    Here is a dump of Elementary_symbol_by_sole_index_register_v.register:@. %s@.    Register length =%i" 
	 (Elementary_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Elementary_symbol_by_sole_index_register_v.register) 
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
