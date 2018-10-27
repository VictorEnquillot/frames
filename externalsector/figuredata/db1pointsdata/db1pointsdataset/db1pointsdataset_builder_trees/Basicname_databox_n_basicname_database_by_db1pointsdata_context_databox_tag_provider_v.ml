(** {3 Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_provider_v";
   "Register : BDB1:Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_register_v";
   "Needs : BDB1:Db1pointsdata_basicname_database_by_unit_provider_v";
   "Needs : SDB1:Db1pointsdata_context_databox_symbol_v";
   "Needed-by :"; 
   "What-is-it : the couple Databox_name_n_database_name for Db1pointsdata_context_databox_tag";
   "Author : François Colonna 31 mars 2017 at 13:01:48+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_dbo =
  let nam_dbo = Db1pointsdata_context_databox_tag_v.string_off tag_dbo in
  let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo in  
  let bna_dba = Db1pointsdata_basicname_database_by_unit_provider_v.provide () in
  (bna_dbo, bna_dba)
;;

(** {6 Storing} *)

let store tag_dbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_register_v.store nam_mod tag_dbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_dbo =
  let result = build tag_dbo in
  store tag_dbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_dbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_register_v.retrieve nam_mod tag_dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_dbo =
  if Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_register_v.is_stored tag_dbo
  then retrieve tag_dbo
  else build_n_store tag_dbo
;;

(** {6 Providing} *)

let provide tag_dbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_provider_v.ml force on lundi 26 septembre 2016, 07:26:58 (UTC+0200) *)
