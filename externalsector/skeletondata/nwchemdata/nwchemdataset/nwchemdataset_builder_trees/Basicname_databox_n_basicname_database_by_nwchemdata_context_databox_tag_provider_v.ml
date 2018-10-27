(** {3 Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : BNWC:Nwchemdata_basicname_database_by_unit_provider_v";
   "Register : BNWC:Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_register_v";
   "Needed-by :"; 
   "What-is-it : the couple Basicname_databox_n_basicname_database for Nwchemdata_context_databox_tag";
   "Author : François Colonna 25 septembre 2016 at 20:02:51+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_nbo =
  let nam_dbo = Nwchemdata_context_databox_tag_v.string_off tag_nbo in
  let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo in
  let bna_dba = Nwchemdata_basicname_database_by_unit_provider_v.provide () in
  (bna_dbo, bna_dba)
;;

(** {6 Storing} *)

let store tag_nbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_register_v.store nam_mod tag_nbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_nbo =
  let result = build tag_nbo in
  store tag_nbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_nbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_register_v.retrieve nam_mod tag_nbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_nbo =
  if Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_register_v.is_stored tag_nbo
  then retrieve tag_nbo
  else build_n_store tag_nbo
;;

(** {6 Providing} *)

let provide tag_nbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_nbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Basicname_databox_n_basicname_database_by_nwchemdata_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 15:51:59 (UTC+0200) *)
