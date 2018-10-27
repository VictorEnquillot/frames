(** {3 Databox_nameoffile_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_nameoffile_by_databox_name_n_database_name_provider_v";
   "Needs : CONS:Databox_nameoffile_list_by_unit_provider_v";
   "Example : \"point_a.db1\" \"cc_pvtz.nwc\" \"cc_pvtz.g9x\"";
   "Author : François Colonna 11 juillet 2016 at 08:59:14+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build (nam_dbo, nam_dba) =
  let ext_dba = String_v.substring nam_dba 0 3 in 
  let nof_dbo = nam_dbo ^ "." ^ ext_dba in
  let nof_dbo_l = Databox_nameoffile_list_by_unit_provider_v.provide () in
  try List_v.only_element_of_predicate_off_list (fun n -> n = nof_dbo) nof_dbo_l 
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Nameoffile >%s< were a Databox Nameoffile" nof_dbo)
      (Format.sprintf "Databox Nameoffile list is :@.       %s"
	 (List_v.name_in_column (fun s->s) nof_dbo_l)
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
(* done with do_provider_without_register.sh Databox_nameoffile_by_databox_name_n_database_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:53 (UTC+0200) *)
