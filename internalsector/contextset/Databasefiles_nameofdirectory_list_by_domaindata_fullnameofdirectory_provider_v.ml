(** {3 Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v";
   "Needs : CONS:Database_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v";
   "Needs : CONS:Databasefiles_nameofdirectory_by_database_fullnameofdirectory_provider_v";
   "Register : CONS:Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v";
   "Definition : Databasefiles_name is the name without its path of a Datafiles directory son of Domaindata Directory";
   "Example : [\"db1figuredatafiles\"; \"db2figuredatafiles\"; \"nwchemdatafiles\"]";
   "Author : François Colonna 15 août 2016 at 12:31:19+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd_dda =
  let fnd_dba_l = 
    Database_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v.provide 
      fnd_dda 
  in 
  let nod_dba_nsl = List.map 
      Databasefiles_nameofdirectory_by_database_fullnameofdirectory_provider_v.provide
      fnd_dba_l
  in
  List.sort String.compare nod_dba_nsl
;;

(** {6 Storing} *)

let store fnd_dda nod_dda_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.store nam_mod fnd_dda nod_dda_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_dda =
  let nod_dda_l = build fnd_dda in
  store fnd_dda nod_dda_l;
  nod_dda_l
;;

(** {6 Retrieving} *)

let retrieve fnd_dda =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.retrieve nam_mod fnd_dda in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_dda =
  if Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.is_stored fnd_dda
  then retrieve fnd_dda
  else build_n_store fnd_dda
;;

(** {6 Providing} *)

let provide fnd_dda =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_dda in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:20 (UTC+0200) *)
