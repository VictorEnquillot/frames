(** {3 Check_is_inputbox_name_by_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Check_is_inputbox_name_by_name_provider_v";
   "Needs : CONS:Inputbox_name_list_by_unit_provider_v";
   "Author : François Colonna 07 octobre 2016 at 12:55:56+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nam =
  let nam_ibo_l = Inputbox_name_list_by_unit_provider_v.provide () in
  if List.mem nam nam_ibo_l
  then 
	()
  else 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Name >%s< were some Inputbox name" nam)
      (Format.sprintf "Inputbox_name list is:@.      %s" 
	 (List_v.name_in_column (fun s->s ) nam_ibo_l)
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
(* done with do_provider_without_register.sh Check_is_inputbox_name_by_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:44 (UTC+0200) *)
