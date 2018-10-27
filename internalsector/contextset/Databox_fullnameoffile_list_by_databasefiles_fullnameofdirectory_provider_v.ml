(** {3 Databox_fullnameoffile_list_by_databasefiles_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databox_fullnameoffile_list_by_databasefiles_fullnameofdirectory_provider_v";
   "Needs : CONS:Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v";
   "Example : .../frames/externalsector/figuredata/db1figurefiles/triangle_isoacute.db1";
   "Author : François Colonna 25 juin 2016 at 18:51:01+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd_dbf =
  let nof_dbo_l = 
    Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v.provide 
      fnd_dbf 
  in
  List.map (fun n -> fnd_dbf ^ "/" ^ n) nof_dbo_l
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
(* done with do_provider_without_register.sh Databox_fullnameoffile_list_by_databasefiles_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:52 (UTC+0200) *)
