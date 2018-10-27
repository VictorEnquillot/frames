(** {3 Db1pointsdata_symbol_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_symbol_by_sole_index_provider_v";
   "Needs : BDB1:Db1pointsdata_symbol_by_sole_index_register_filler_v";
   "Needed-by : BDB1:";
   "What-is-it : the provider of Db1pointsdata_symbol by any sole_index";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_db1 =
  Db1pointsdata_symbol_by_sole_index_register_filler_v.fill soi_db1;

  if Register_v.is_stored Db1pointsdata_symbol_by_sole_index_register_v.register soi_db1 
  then Db1pointsdata_symbol_by_sole_index_register_v.retrieve nam_mod soi_db1
  else 
    Error_messages_v.print_fatal_error __LOC__ "provide"
      (Format.sprintf "to find a Db1pointsdata Symbol associated with sole_index %s" (Sole_index_v.name soi_db1))
      "Not Stored" 
      (Format.sprintf "Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_provider_v should have create this entry@.\
      with :@.    Db1pointsdata_symbol_by_sole_index_provider_v.store soi_x sym_x.\
       @.    Here is a dump of Db1pointsdata_symbol_by_sole_index_register_v.register:@. %s@.    Register length =%i" 
	 (Db1pointsdata_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Db1pointsdata_symbol_by_sole_index_register_v.register) 
      )
;;

(** {6 Providing} *)

let provide soi_db1 =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build soi_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_dddd_symbol_by_sole_index_provider_v.ml *)
(* done with do_dddd_symbol_by_sole_index_provider.sh force on lundi 26 septembre 2016, 07:27:07 (UTC+0200) *)
