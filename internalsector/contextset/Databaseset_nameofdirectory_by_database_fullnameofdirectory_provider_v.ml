(** {3 Databaseset_nameofdirectory_by_database_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databaseset_nameofdirectory_by_database_fullnameofdirectory_provider_v";
   "Needs : CONS:Database_fullnameofdirectory_list_by_unit_provider_v";
   "Register : CONS:Databaseset_nameofdirectory_by_database_fullnameofdirectory_register_v";
   "Definition : Databaseset_nameofdirectory is Database_nameofdirectory suffixed by \"set\"";
   "Example : \"db1figuredataset\" \"db2figuredataset\" \"nwchemdataset\"";
   "Author : François Colonna 22 août 2016 at 10:21:44+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let check_is_database_fullnameofdirectory fnd_dba =
  let fnd_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide () in
  if List.mem fnd_dba fnd_dba_l
  then ()
  else Error_messages_v.print_fatal_error nam_mod "check_is_database_fullnameofdirectory"
      (Format.sprintf "Fullnameofdirectory >%s< is Database Fullnameofdirectory" fnd_dba)
      (Format.sprintf "Database Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_dba_l)
      )
      "Check"
;; 

(** {6 Building} *)

let build fnd_dba =
  check_is_database_fullnameofdirectory fnd_dba;
  let nod_dba = Filename.basename fnd_dba in  
  nod_dba ^ "set"
;;

(** {6 Storing} *)

let store fnd_dba result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databaseset_nameofdirectory_by_database_fullnameofdirectory_register_v.store nam_mod fnd_dba result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_dba =
  let result = build fnd_dba in
  store fnd_dba result;
  result
;;

(** {6 Retrieving} *)

let retrieve fnd_dba =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databaseset_nameofdirectory_by_database_fullnameofdirectory_register_v.retrieve nam_mod fnd_dba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_dba =
  if Databaseset_nameofdirectory_by_database_fullnameofdirectory_register_v.is_stored fnd_dba
  then retrieve fnd_dba
  else build_n_store fnd_dba
;;

(** {6 Providing} *)

let provide fnd_dba =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_dba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Databaseset_nameofdirectory_by_database_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:23 (UTC+0200) *)
