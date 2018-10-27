(** {3 Sector_ordinal_by_sector_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Sector_ordinal_by_sector_name_provider_v";
   "Needs : CONS:Sector_name_list_by_unit_provider_v";
   "Register : CONS:Sector_ordinal_by_sector_name_register_v";
   "Definition : an ordinal starts from 1";
   "Definition : a Sector_ordinal refers to the list of Sector_name";
   "Author : François Colonna 08 octobre 2016 at 12:38:31+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_sec =
  let nam_sec_l = Sector_name_list_by_unit_provider_v.provide () in
  try List_v.int_ordinal_of_element_of_list nam_sec nam_sec_l 
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Name of Sector >%s< were in list" nam_sec)
      (Format.sprintf "Sector name list is:@.      %s" 
	 (List_v.name_in_column (fun s->s ) nam_sec_l)
      )
      "Check"
;;

(** {6 Storing} *)

let store nam_sec result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Sector_ordinal_by_sector_name_register_v.store nam_mod nam_sec result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_sec =
  let result = build nam_sec in
  store nam_sec result;
  result
;;

(** {6 Retrieving} *)

let retrieve nam_sec =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Sector_ordinal_by_sector_name_register_v.retrieve nam_mod nam_sec in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_sec =
  if Sector_ordinal_by_sector_name_register_v.is_stored nam_sec
  then retrieve nam_sec
  else build_n_store nam_sec
;;

(** {6 Providing} *)

let provide nam_sec =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_sec in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Sector_ordinal_by_sector_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:40 (UTC+0200) *)
