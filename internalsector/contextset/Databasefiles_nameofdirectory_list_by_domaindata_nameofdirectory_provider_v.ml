(** {3 Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v";
   "Needs : CONS:Domaindata_fullnameofdirectory_by_domaindata_nameofdirectory_provider_v";
   "Needs : CONS:Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v";
   "Register : CONS:Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_register_v";
   "Example : [\"db1figurefiles\"; \"db2figurefiles\"]";
   "Author : François Colonna 21 juin 2016 at 09:34:32+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nam_dda =
  let fnd_dda = 
    Domaindata_fullnameofdirectory_by_domaindata_nameofdirectory_provider_v.provide 
      nam_dda 
  in
  Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v.provide fnd_dda
;;

(** {6 Storing} *)

let store nam_dda val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.store nam_mod nam_dda val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_dda =
  let val_ = build nam_dda in
  store nam_dda val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve nam_dda =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.retrieve nam_mod nam_dda in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_dda =
  if Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.is_stored nam_dda
  then retrieve nam_dda
  else build_n_store nam_dda
;;

(** {6 Providing} *)

let provide nam_dda =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_dda in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:21 (UTC+0200) *)
