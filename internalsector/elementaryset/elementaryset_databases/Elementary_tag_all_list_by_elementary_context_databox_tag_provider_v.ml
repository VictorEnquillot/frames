(** {3 Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v";
   "Register : DELE:Elementary_tag_all_list_by_elementary_context_databox_tag_register_v";
   "Needs : DELE:Elementary_tag_all_list_by_database_name_n_databox_name_provider_v";
   "Needed-by : DELE:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Database_name_n_databox_name with Elementary_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ebo =
  let (nam_dba, nam_dbo) = 
    Database_name_n_databox_name_by_elementary_context_databox_tag_provider_v.provide
      tag_ebo
  in
  Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo)
;;

(** {6 Storing} *)

let store ebo tag_ele_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.store nam_mod ebo tag_ele_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store ebo =
  let tag_ele_l = build ebo in
  store ebo tag_ele_l;
  tag_ele_l
;;

(** {6 Retrieving} *)

let retrieve ebo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.retrieve nam_mod ebo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace ebo =
  if Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.is_stored ebo
  then retrieve ebo
  else build_n_store ebo
;;

(** {6 Providing} *)

let provide ebo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace ebo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_tag_all_list_by_dddd_context_databox_tag.sh on mercredi 25 mai 2016, 10:04:08 (UTC+0200) *)
