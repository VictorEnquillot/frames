(** {3 Inputbase_ordinal_by_inputbase_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbase_ordinal_by_inputbase_name_provider_v";
   "Needs : CONS:Inputbase_name_list_by_unit_provider_v";
   "Definition : an ordinal starts from 1";
   "Definition : a Inputbase_ordinal refers to the list of Inputbase_name";
   "Author : François Colonna 24 août 2016 at 10:42:16+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam_iba =
  let nam_iba_l = Inputbase_name_list_by_unit_provider_v.provide () in
  try List_v.int_ordinal_of_element_of_list nam_iba nam_iba_l
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Name of Inputbase >%s< were in list" nam_iba)
      (Format.sprintf "Inputbase name list is:@.      %s" 
	 (List_v.name_in_column (fun s->s ) nam_iba_l)
      )
      "Check"
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Inputbase_ordinal_by_inputbase_name_provider_v.ml force on samedi 8 octobre 2016, 18:53:03 (UTC+0200) *)
