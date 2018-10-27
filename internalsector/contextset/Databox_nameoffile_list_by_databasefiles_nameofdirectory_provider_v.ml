(** {3 Databox_nameoffile_list_by_databasefiles_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_nameoffile_list_by_databasefiles_nameofdirectory_provider_v";
   "Needs : CONS:Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_v";
   "Needs : CONS:Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v";
   "Register : CONS:Databox_nameoffile_list_by_databasefiles_nameofdirectory_register_v";
   "Example : [\"point_a.db1\"; \"segment_bc.db1\"; ... ]";
   "Author : François Colonna 27 juin 2016 at 10:50:00+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nod_dbf =
  let fnd_dbf = 
    Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_v.provide 
      nod_dbf 
  in
  Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v.provide fnd_dbf
;;

(** {6 Storing} *)

let store nod_dbf val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databox_nameoffile_list_by_databasefiles_nameofdirectory_register_v.store nam_mod nod_dbf val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nod_dbf =
  let val_ = build nod_dbf in
  store nod_dbf val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve nod_dbf =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databox_nameoffile_list_by_databasefiles_nameofdirectory_register_v.retrieve nam_mod nod_dbf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nod_dbf =
  if Databox_nameoffile_list_by_databasefiles_nameofdirectory_register_v.is_stored nod_dbf
  then retrieve nod_dbf
  else build_n_store nod_dbf
;;

(** {6 Providing} *)

let provide nod_dbf =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nod_dbf in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Databox_nameoffile_list_by_databasefiles_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:26 (UTC+0200) *)
