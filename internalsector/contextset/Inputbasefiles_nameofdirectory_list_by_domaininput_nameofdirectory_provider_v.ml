(** {3 Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_provider_v";
   "Needs : CONS:Domaininput_fullnameofdirectory_by_domaininput_nameofdirectory_provider_v";
   "Needs : CONS:Inputbasefiles_nameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v";
   "Register : CONS:Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_register_v";
   "Example : [\"db1figurefiles\"; \"db2figurefiles\"]";
   "Author : François Colonna 21 juin 2016 at 09:34:32+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nam_din =
  let fnd_din = 
    Domaininput_fullnameofdirectory_by_domaininput_nameofdirectory_provider_v.provide 
      nam_din 
  in
  Inputbasefiles_nameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v.provide fnd_din
;;

(** {6 Storing} *)

let store nam_din val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.store nam_mod nam_din val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_din =
  let val_ = build nam_din in
  store nam_din val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve nam_din =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.retrieve nam_mod nam_din in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_din =
  if Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.is_stored nam_din
  then retrieve nam_din
  else build_n_store nam_din
;;

(** {6 Providing} *)

let provide nam_din =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_din in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:33 (UTC+0200) *)
