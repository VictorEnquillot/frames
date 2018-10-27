(** {3 Inputbox_nameoffile_by_inputbox_name_n_inputbase_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_nameoffile_by_inputbox_name_n_inputbase_name_provider_v";
   "Needs : CONS:Check_is_inputbox_name_by_name_provider_v";
   "Needs : CONS:Check_is_inputbase_name_by_name_provider_v";
   "Needs : CONS:Inputbox_nameoffile_list_by_unit_provider_v";
   "Example : \"point_a.db1\" \"cc_pvtz.nwc\" \"cc_pvtz.g9x\"";
   "Author : François Colonna 11 juillet 2016 at 08:59:14+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build (nam_ibo, nam_iba) =
  Check_is_inputbox_name_by_name_provider_v.provide nam_ibo;
  Check_is_inputbase_name_by_name_provider_v.provide nam_iba;

  let ext_iba = String_v.substring nam_iba 0 3 in 
  let nof_ibo = nam_ibo ^ "." ^ ext_iba in
  let nof_ibo_l = Inputbox_nameoffile_list_by_unit_provider_v.provide () in
  try List_v.only_element_of_predicate_off_list (fun n -> n = nof_ibo) nof_ibo_l
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Nameoffile >%s< were an Inputbox Nameoffile" nof_ibo)
      (Format.sprintf "Inputbox Nameoffile list is :@.       %s"
	 (List_v.name_in_column (fun s->s) nof_ibo_l)
      )
      "Check case"
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
(* done with do_provider_without_register.sh Inputbox_nameoffile_by_inputbox_name_n_inputbase_name_provider_v.ml force on samedi 8 octobre 2016, 18:53:06 (UTC+0200) *)
