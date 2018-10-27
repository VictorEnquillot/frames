(** {3 Databasefiles_nameofdirectory_by_database_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databasefiles_nameofdirectory_by_database_nameofdirectory_provider_v";
   "Needs : CONS:Database_fullnameofdirectory_by_database_nameofdirectory_provider_v";
   "Needs : CONS:Databasefiles_nameofdirectory_by_database_fullnameofdirectory_provider_v";
   "Register : CONS:Databasefiles_nameofdirectory_by_database_nameofdirectory_register_v";
   "Example : [\"db1figuredatafiles\"; \"db2figuredatafiles\"]";
   "Author : François Colonna 19 août 2016 at 13:07:55+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nod_dba =
  let fnd_dba = 
    Database_fullnameofdirectory_by_database_nameofdirectory_provider_v.provide 
      nod_dba 
  in
  Databasefiles_nameofdirectory_by_database_fullnameofdirectory_provider_v.provide fnd_dba
;;

(** {6 Storing} *)

let store nod_dba result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databasefiles_nameofdirectory_by_database_nameofdirectory_register_v.store nam_mod nod_dba result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nod_dba =
  let result = build nod_dba in
  store nod_dba result;
  result
;;

(** {6 Retrieving} *)

let retrieve nod_dba =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databasefiles_nameofdirectory_by_database_nameofdirectory_register_v.retrieve nam_mod nod_dba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nod_dba =
  if Databasefiles_nameofdirectory_by_database_nameofdirectory_register_v.is_stored nod_dba
  then retrieve nod_dba
  else build_n_store nod_dba
;;

(** {6 Providing} *)

let provide nod_dba =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nod_dba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Databasefiles_nameofdirectory_by_database_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:20 (UTC+0200) *)
