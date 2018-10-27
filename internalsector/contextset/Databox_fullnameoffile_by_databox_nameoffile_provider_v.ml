(** {3 Databox_fullnameoffile_by_databox_nameoffile_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_fullnameoffile_by_databox_nameoffile_provider_v";
   "Needs : CONS:Databox_fullnameoffile_list_by_unit_provider_v";
   "Example : .../frames/externalsector/figuredata/db1figurefiles/point_a.db1";
   "Author : François Colonna 25 juin 2016 at 19:13:16+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nof_dbo =
  let fnd_dbo_l = Databox_fullnameoffile_list_by_unit_provider_v.provide () in
  try List_v.only_element_of_predicate_off_list (fun f -> Filename.basename f = nof_dbo) fnd_dbo_l
  with Failure _ ->  
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Nameoffile >%s< were a Databox Nameoffile" nof_dbo)
      (Format.sprintf "Databox Fullnameoffile list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_dbo_l)
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
(* done with do_provider_without_register.sh Databox_fullnameoffile_by_databox_nameoffile_provider_v.ml force on samedi 8 octobre 2016, 18:52:52 (UTC+0200) *)
