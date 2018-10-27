(** {3 Database_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Database_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v";
   "Needs : CONS:Domaindata_fullnameofdirectory_by_domaindata_nameofdirectory_provider_v";
   "Needs : CONS:Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v";
   "Register : CONS:Database_nameofdirectory_list_by_domaindata_nameofdirectory_register_v";
   "Example : [\"db1figuredata\"; \"db2figuredata\"]";
   "Author : François Colonna 21 juillet 2016 at 17:39:03+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nod_dda =
  let fnd_dda = 
    Domaindata_fullnameofdirectory_by_domaindata_nameofdirectory_provider_v.provide 
      nod_dda 
  in
  Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v.provide fnd_dda
;;

(** {6 Storing} *)

let store nod_dda val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Database_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.store nam_mod nod_dda val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nod_dda =
  let val_ = build nod_dda in
  store nod_dda val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve nod_dda =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Database_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.retrieve nam_mod nod_dda in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nod_dda =
  if Database_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.is_stored nod_dda
  then retrieve nod_dda
  else build_n_store nod_dda
;;

(** {6 Providing} *)

let provide nod_dda =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nod_dda in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Database_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:22 (UTC+0200) *)
