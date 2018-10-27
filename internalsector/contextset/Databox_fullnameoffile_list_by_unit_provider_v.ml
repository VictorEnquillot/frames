(** {3 Databox_fullnameoffile_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_fullnameoffile_list_by_unit_provider_v";
   "Needs : CONS:Databasefiles_fullnameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Databox_fullnameoffile_list_by_databasefiles_fullnameofdirectory_provider_v";
   "Definition :";
   "Author : François Colonna 25 juin 2016 at 11:21:28+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build () =
  let fnd_dbf_l = Databasefiles_fullnameofdirectory_list_by_unit_provider_v.provide () in
  let fnf_dbo_ll = List.map 
      Databox_fullnameoffile_list_by_databasefiles_fullnameofdirectory_provider_v.provide 
      fnd_dbf_l 
  in
  List.flatten fnf_dbo_ll
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
(* done with do_provider_without_register.sh Databox_fullnameoffile_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:53 (UTC+0200) *)
