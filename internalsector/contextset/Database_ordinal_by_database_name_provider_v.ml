(** {3 Database_ordinal_by_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Database_ordinal_by_database_name_provider_v";
   "Needs : CONS:Database_name_list_by_unit_provider_v";
   "Register : CONS:Database_ordinal_by_database_name_register_v";
   "Definition : an ordinal starts from 1";
   "Definition : a Database_ordinal refers to the list of Database_name";
   "Author : François Colonna 24 août 2016 at 10:42:16+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_dba =
  let nam_dba_l = Database_name_list_by_unit_provider_v.provide () in
  try List_v.int_ordinal_of_element_of_list nam_dba nam_dba_l
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Name of Database >%s< were in list" nam_dba)
      (Format.sprintf "Database name list is:@.      %s" 
	 (List_v.name_in_column (fun s->s ) nam_dba_l)
      )
      "Check"
;;

(** {6 Storing} *)

let store nam_dba result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Database_ordinal_by_database_name_register_v.store nam_mod nam_dba result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_dba =
  let result = build nam_dba in
  store nam_dba result;
  result
;;

(** {6 Retrieving} *)

let retrieve nam_dba =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Database_ordinal_by_database_name_register_v.retrieve nam_mod nam_dba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_dba =
  if Database_ordinal_by_database_name_register_v.is_stored nam_dba
  then retrieve nam_dba
  else build_n_store nam_dba
;;

(** {6 Providing} *)

let provide nam_dba =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_dba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Database_ordinal_by_database_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:22 (UTC+0200) *)
