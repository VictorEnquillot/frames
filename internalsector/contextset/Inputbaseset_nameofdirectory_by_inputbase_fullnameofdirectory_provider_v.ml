(** {3 Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_provider_v";
   "Needs : CONS:Inputbase_fullnameofdirectory_list_by_unit_provider_v";
"Register : CONS:Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_register_v";
   "Definition : Inputbaseset_nameofdirectory is Inputbase_nameofdirectory suffixed by \"set\"";
   "Example : \"db1figureinputset\" \"db2figureinputset\" \"nwcheminputset\"";
   "Author : François Colonna 22 août 2016 at 10:21:44+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let check_is_inputbase_fullnameofdirectory fnd_iba =
  let fnd_iba_l = Inputbase_fullnameofdirectory_list_by_unit_provider_v.provide () in
  if List.mem fnd_iba fnd_iba_l
  then ()
  else Error_messages_v.print_fatal_error nam_mod "check_is_inputbase_fullnameofdirectory"
      (Format.sprintf "Fullnameofdirectory >%s< is Inputbase Fullnameofdirectory" fnd_iba)
      (Format.sprintf "Inputbase Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_iba_l)
      )
      "Check"
;; 

(** {6 Building} *)

let build fnd_iba =
  check_is_inputbase_fullnameofdirectory fnd_iba;
  let nod_iba = Filename.basename fnd_iba in  
  nod_iba ^ "set"
;;

(** {6 Storing} *)

let store fnd_iba result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_register_v.store nam_mod fnd_iba result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd_iba =
  let result = build fnd_iba in
  store fnd_iba result;
  result
;;

(** {6 Retrieving} *)

let retrieve fnd_iba =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_register_v.retrieve nam_mod fnd_iba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd_iba =
  if Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_register_v.is_stored fnd_iba
  then retrieve fnd_iba
  else build_n_store fnd_iba
;;

(** {6 Providing} *)

let provide fnd_iba =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd_iba in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:36 (UTC+0200) *)
