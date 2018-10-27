(** {3 Inputbox_ordinal_by_inputbox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_ordinal_by_inputbox_name_provider_v";
   "Needs : CONS:Inputbox_name_list_by_unit_provider_v";
"Register : CONS:Inputbox_ordinal_by_inputbox_name_register_v";
   "Definition : an ordinal starts from 1";
   "Definition : a Inputbox_ordinal refers to the list of Inputbox_name";
   "Author : François Colonna 23 septembre 2016 at 12:14:07+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_ibo =
  let nam_ibo_l = Inputbox_name_list_by_unit_provider_v.provide () in
  try List_v.int_ordinal_of_element_of_list nam_ibo nam_ibo_l 
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Name of Inputbox >%s< were in list" nam_ibo)
      (Format.sprintf "Inputbox name list is:@.      %s" 
	 (List_v.name_in_column (fun s->s ) nam_ibo_l)
      )
      "Check"
;;

(** {6 Storing} *)

let store nam_ibo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Inputbox_ordinal_by_inputbox_name_register_v.store nam_mod nam_ibo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_ibo =
  let result = build nam_ibo in
  store nam_ibo result;
  result
;;

(** {6 Retrieving} *)

let retrieve nam_ibo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Inputbox_ordinal_by_inputbox_name_register_v.retrieve nam_mod nam_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_ibo =
  if Inputbox_ordinal_by_inputbox_name_register_v.is_stored nam_ibo
  then retrieve nam_ibo
  else build_n_store nam_ibo
;;

(** {6 Providing} *)

let provide nam_ibo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Inputbox_ordinal_by_inputbox_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:38 (UTC+0200) *)
