(** {3 Databasefiles_fullnameofdirectory_by_database_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databasefiles_fullnameofdirectory_by_database_fullnameofdirectory_provider_v";
   "Needs : CONS:Database_fullnameofdirectory_list_by_unit_provider_v";
   "Definition :";
   "Author : François Colonna 22 août 2016 at 10:27:06+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd_dba =
  Check_is_database_fullnameofdirectory_by_fullnameofdirectory_provider_v.provide fnd_dba;
  let nod_dba = Filename.basename fnd_dba in  
  fnd_dba ^ "/" ^ (nod_dba ^ "files")
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
(* done with do_provider_without_register.sh Databasefiles_fullnameofdirectory_by_database_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:47 (UTC+0200) *)
