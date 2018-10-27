(** {3 Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_provider_v";
   "Needs : CONS:Domaindata_nameofdirectory_list_by_externalsector_fullnameofdirectory_provider_v";
   "Register : CONS:Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_register_v";
   "Definition :";
   "Author : François Colonna 25 juin 2016 at 11:21:28+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd_exs =
  let nod_dda_l = 
    Domaindata_nameofdirectory_list_by_externalsector_fullnameofdirectory_provider_v.provide 
      fnd_exs 
  in 
  List.map (fun n -> fnd_exs ^ "/" ^ n) nod_dda_l
;;

(** {6 Storing} *)

let store fnd_exs val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.store nam_mod fnd_exs val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_exs =
  let val_ = build fnd_exs in
  store fnd_exs val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve fnd_exs =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.retrieve nam_mod fnd_exs in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_exs =
  if Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.is_stored fnd_exs
  then retrieve fnd_exs
  else build_n_store fnd_exs
;;

(** {6 Providing} *)

let provide fnd_exs =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_exs in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:27 (UTC+0200) *)
