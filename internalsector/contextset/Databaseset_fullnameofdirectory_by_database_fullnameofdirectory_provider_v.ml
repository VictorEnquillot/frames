(** {3 Databaseset_fullnameofdirectory_by_database_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databaseset_fullnameofdirectory_by_database_fullnameofdirectory_provider_v";
   "Needs : CONS:Database_fullnameofdirectory_list_by_unit_provider_v";
   "Definition :";
   "Author : François Colonna 22 août 2016 at 10:27:06+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let check_is_database_fullnameofdirectory fnd_dba =
  let fnd_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide () in
  if List.mem fnd_dba fnd_dba_l
  then ()
  else Error_messages_v.print_fatal_error nam_mod "check_is_database_fullnameofdirectory"
      (Format.sprintf "Fullnameofdirectory >%s< is Database Fullnameofdirectory" fnd_dba)
      (Format.sprintf "Database Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_dba_l)
      )
      "Check"
;; 

(** {6 Building} *)

let build fnd_dba =
  check_is_database_fullnameofdirectory fnd_dba;
  let nod_dba = Filename.basename fnd_dba in  
  fnd_dba ^ "/" ^ (nod_dba ^ "set")
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
(* done with do_provider_without_register.sh Databaseset_fullnameofdirectory_by_database_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:50 (UTC+0200) *)
