(** {3 Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v";
   "Needs : CONS:Inputbase_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v";
   "Needs : CONS:Inputbaseset_fullnameofdirectory_by_inputbase_fullnameofdirectory_provider_v";
"Register : CONS:Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_register_v";
   "Definition :";
   "Author : François Colonna 22 août 2016 at 10:51:43+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd_din =
  let fnd_iba_l = 
    Inputbase_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v.provide 
      fnd_din 
  in 
  let fnd_ibs_nsl = List.map 
      Inputbaseset_fullnameofdirectory_by_inputbase_fullnameofdirectory_provider_v.provide
      fnd_iba_l
  in
  List.sort String.compare fnd_ibs_nsl
;;

(** {6 Storing} *)

let store fnd_din result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.store nam_mod fnd_din result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_din =
  let result = build fnd_din in
  store fnd_din result;
  result
;;

(** {6 Retrieving} *)

let retrieve fnd_din =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.retrieve nam_mod fnd_din in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_din =
  if Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.is_stored fnd_din
  then retrieve fnd_din
  else build_n_store fnd_din
;;

(** {6 Providing} *)

let provide fnd_din =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_din in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:35 (UTC+0200) *)
