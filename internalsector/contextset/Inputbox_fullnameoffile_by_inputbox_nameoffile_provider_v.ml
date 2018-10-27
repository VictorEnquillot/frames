(** {3 Inputbox_fullnameoffile_by_inputbox_nameoffile_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_fullnameoffile_by_inputbox_nameoffile_provider_v";
   "Needs : CONS:Inputbox_fullnameoffile_list_by_unit_provider_v";
   "Example : .../frames/entrysector/inputbasefiles/Print_point_a.db1";
   "Author : François Colonna 02 juillet 2016 at 17:46:09+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nof_ibo =
  let nam_fun = "build" in
  if (String_v.is_capitalized_strict_of_string nof_ibo)
  then 
    begin
      let fnd_ibo_l = Inputbox_fullnameoffile_list_by_unit_provider_v.provide () in
      try List_v.only_element_of_predicate_off_list (fun f -> Filename.basename f = nof_ibo) fnd_ibo_l
      with Failure _ ->
	Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "Nameoffile >%s< were Inputbox Nameoffile" nof_ibo)
      (Format.sprintf "Inputbox Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_ibo_l)
      )
      "Check"
    end
  else 
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      "Inputbox nameoffile were strictly capitalized"
      nof_ibo
      "Rename file"
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
(* done with do_provider_without_register.sh Inputbox_fullnameoffile_by_inputbox_nameoffile_provider_v.ml force on samedi 8 octobre 2016, 18:53:05 (UTC+0200) *)
