(** {3 Databox_ordinal_by_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_ordinal_by_databox_name_provider_v";
   "Needs : CONS:Databox_name_list_by_unit_provider_v";
   "Register : CONS:Databox_ordinal_by_databox_name_register_v";
   "Definition : an ordinal starts from 1";
   "Definition : a Databox_ordinal refers to the list of Databox_name";
   "Author : François Colonna 23 septembre 2016 at 12:12:51+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_dbo =
  let nam_dbo_l = Databox_name_list_by_unit_provider_v.provide () in
  try List_v.int_ordinal_of_element_of_list nam_dbo nam_dbo_l 
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Name of Databox >%s< were in list" nam_dbo)
      (Format.sprintf "Databox name list is:@.      %s" 
	 (List_v.name_in_column (fun s->s ) nam_dbo_l)
      )
      "Check"
;;

(** {6 Storing} *)

let store nam_dbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Databox_ordinal_by_databox_name_register_v.store nam_mod nam_dbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_dbo =
  let result = build nam_dbo in
  store nam_dbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve nam_dbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Databox_ordinal_by_databox_name_register_v.retrieve nam_mod nam_dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_dbo =
  if Databox_ordinal_by_databox_name_register_v.is_stored nam_dbo
  then retrieve nam_dbo
  else build_n_store nam_dbo
;;

(** {6 Providing} *)

let provide nam_dbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Databox_ordinal_by_databox_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:26 (UTC+0200) *)
