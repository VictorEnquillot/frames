(** {3 Domain_ordinal_by_domain_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domain_ordinal_by_domain_name_provider_v";
   "Needs : CONS:Domain_name_list_by_unit_provider_v";
   "Register : CONS:Domain_ordinal_by_domain_name_register_v";
   "Definition : an ordinal starts from 1";
   "Definition : a Domain_ordinal refers to the list of Domain_name";
   "Author : François Colonna 24 août 2016 at 10:42:16+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_dom =
  let nam_dom_l = Domain_name_list_by_unit_provider_v.provide () in
  try List_v.int_ordinal_of_element_of_list nam_dom nam_dom_l 
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Name of Domain >%s< were in list" nam_dom)
      (Format.sprintf "Domain name list is:@.      %s" 
	 (List_v.name_in_column (fun s->s ) nam_dom_l)
      )
      "Check"
;;

(** {6 Storing} *)

let store nam_dom result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Domain_ordinal_by_domain_name_register_v.store nam_mod nam_dom result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_dom =
  let result = build nam_dom in
  store nam_dom result;
  result
;;

(** {6 Retrieving} *)

let retrieve nam_dom =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Domain_ordinal_by_domain_name_register_v.retrieve nam_mod nam_dom in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_dom =
  if Domain_ordinal_by_domain_name_register_v.is_stored nam_dom
  then retrieve nam_dom
  else build_n_store nam_dom
;;

(** {6 Providing} *)

let provide nam_dom =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_dom in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Domain_ordinal_by_domain_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:30 (UTC+0200) *)
