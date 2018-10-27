(** {3 Coordinate_symbol_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_symbol_by_sole_index_provider_v";
   "Needs : BCOO:Coordinate_symbol_by_sole_index_register_filler_v";
   "Needed-by : BCOO:";
   "What-is-it : the provider of Coordinate_symbol by any sole_index";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_coo =
  Coordinate_symbol_by_sole_index_register_filler_v.fill soi_coo;

  if Register_v.is_stored Coordinate_symbol_by_sole_index_register_v.register soi_coo 
  then Coordinate_symbol_by_sole_index_register_v.retrieve nam_mod soi_coo
  else 
    Error_messages_v.print_fatal_error __LOC__ "provide"
      (Format.sprintf "to find a Elementary Symbol associated with sole_index %s" (Sole_index_v.name soi_coo))
      "Not Stored" 
      (Format.sprintf "Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v should have create this entry@.\
      with :@.    Coordinate_symbol_by_sole_index_provider_v.store soi_x sym_x.\
       @.    Here is a dump of Coordinate_symbol_by_sole_index_register_v.register:@. %s@.    Register length =%i" 
	 (Coordinate_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Coordinate_symbol_by_sole_index_register_v.register) 
      )
;;

(** {6 Providing} *)

let provide soi_coo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build soi_coo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_dddd_symbol_by_sole_index_provider_v.ml *)
(* done with do_dddd_symbol_by_sole_index_provider.sh force on lundi 10 octobre 2016, 09:13:04 (UTC+0200) *)
