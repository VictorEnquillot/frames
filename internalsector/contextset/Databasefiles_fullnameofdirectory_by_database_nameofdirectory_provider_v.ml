(** {3 Databasefiles_fullnameofdirectory_by_database_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databasefiles_fullnameofdirectory_by_database_nameofdirectory_provider_v";
   "Needs : CONS:Database_fullnameofdirectory_by_database_nameofdirectory_provider_v";
   "Example : \"db1figuredatafiles\" \"db2figuredatafiles\" ... ";
   "Author : François Colonna 22 août 2016 at 15:32:28+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nod_dba =
  let fnd_dba = 
    Database_fullnameofdirectory_by_database_nameofdirectory_provider_v.provide 
      nod_dba 
  in
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
(* done with do_provider_without_register.sh Databasefiles_fullnameofdirectory_by_database_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:47 (UTC+0200) *)
