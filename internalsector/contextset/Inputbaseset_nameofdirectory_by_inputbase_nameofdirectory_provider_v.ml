(** {3 Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_provider_v";
   "Needs : CONS:Inputbase_fullnameofdirectory_by_inputbase_nameofdirectory_provider_v";
   "Needs : CONS:Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_provider_v";
   "Register : CONS:Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_register_v";
   "Example : \"db1figureinputset\" \"db2figureinputset\"";
   "Author : François Colonna 19 août 2016 at 13:07:55+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nod_iba =
  let fnd_iba = 
    Inputbase_fullnameofdirectory_by_inputbase_nameofdirectory_provider_v.provide 
      nod_iba 
  in
  Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_provider_v.provide fnd_iba
;;

(** {6 Storing} *)

let store nod_iba result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_register_v.store nam_mod nod_iba result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nod_iba =
  let result = build nod_iba in
  store nod_iba result;
  result
;;

(** {6 Retrieving} *)

let retrieve nod_iba =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_register_v.retrieve nam_mod nod_iba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nod_iba =
  if Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_register_v.is_stored nod_iba
  then retrieve nod_iba
  else build_n_store nod_iba
;;

(** {6 Providing} *)

let provide nod_iba =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nod_iba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:36 (UTC+0200) *)
