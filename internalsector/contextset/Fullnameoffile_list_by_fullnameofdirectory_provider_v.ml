(** {3 Fullnameoffile_list_by_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Fullnameoffile_list_by_fullnameofdirectory_provider_v";
   "Needs : CONS:Nameoffile_list_by_fullnameofdirectory_provider_v";
   "Register : CONS:Fullnameoffile_list_by_fullnameofdirectory_register_v";
   "What-is-it : ";
   "Author : François Colonna 12 juin 2016 at 12:22:03+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build fnd =
  let nof_l = Nameoffile_list_by_fullnameofdirectory_provider_v.provide fnd in
  List.map (fun s -> fnd ^ "/" ^ s) nof_l
;;

(** {6 Storing} *)

let store fnd val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Fullnameoffile_list_by_fullnameofdirectory_register_v.store nam_mod fnd val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd =
  let val_ = build fnd in
  store fnd val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve fnd =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Fullnameoffile_list_by_fullnameofdirectory_register_v.retrieve nam_mod fnd in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd =
  if Fullnameoffile_list_by_fullnameofdirectory_register_v.is_stored fnd
  then retrieve fnd
  else build_n_store fnd
;;

(** {6 Providing} *)

let provide fnd =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Fullnameoffile_list_by_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:31 (UTC+0200) *)
