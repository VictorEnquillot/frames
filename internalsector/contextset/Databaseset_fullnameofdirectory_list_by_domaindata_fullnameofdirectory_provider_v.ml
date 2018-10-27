(** {3 Databaseset_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databaseset_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v";
   "Needs : CONS:Database_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v";
   "Needs : CONS:Databaseset_fullnameofdirectory_by_database_fullnameofdirectory_provider_v";
   "Definition :";
   "Author : François Colonna 22 août 2016 at 10:51:43+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd_dda =
  let fnd_dba_l = 
    Database_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v.provide 
      fnd_dda 
  in 
  let fnd_dbs_nsl = List.map 
      Databaseset_fullnameofdirectory_by_database_fullnameofdirectory_provider_v.provide
      fnd_dba_l
  in
  List.sort String.compare fnd_dbs_nsl
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
(* done with do_provider_without_register.sh Databaseset_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:51 (UTC+0200) *)
