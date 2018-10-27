(** {3 Basicname_databox_n_basicname_database_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Basicname_databox_n_basicname_database_by_any_sole_index_provider_v";
   "Needs : CONS:Basicname_databox_name_by_any_sole_index_provider_v";
   "Needs : CONS:Basicname_database_name_by_any_sole_index_provider_v";
   "Author : François Colonna 02 avril 2017 at 12:48:26+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let bna_dbo = Basicname_databox_by_any_sole_index_provider_v.provide soi_any in
  let bna_dba = Basicname_database_by_any_sole_index_provider_v.provide soi_any in
  (bna_dbo, bna_dba)
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
(* done with do_provider_without_register.sh Basicname_databox_by_any_sole_index_provider_v.ml force on mardi 15 novembre 2016, 16:37:12 (UTC+0100) *)
