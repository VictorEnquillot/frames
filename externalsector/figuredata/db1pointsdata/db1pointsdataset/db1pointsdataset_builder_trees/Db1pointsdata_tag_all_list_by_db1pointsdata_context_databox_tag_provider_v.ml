(** {3 Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_provider_v";
   "Register : BDB1:Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v";
   "Needs : BDB1:Db1pointsdata_tag_all_list_by_basicname_databox_provider_v";
   "Needed-by : BDB1:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Database_name_n_databox_name with Db1pointsdata_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_dbo =
 let nam_dbo = Db1pointsdata_context_databox_tag_v.string_off tag_dbo in
 let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo in
 Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide bna_dbo
;;

(** {6 Storing} *)

let store dbo tag_db1_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.store nam_mod dbo tag_db1_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store dbo =
  let tag_db1_l = build dbo in
  store dbo tag_db1_l;
  tag_db1_l
;;

(** {6 Retrieving} *)

let retrieve dbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.retrieve nam_mod dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace dbo =
  if Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.is_stored dbo
  then retrieve dbo
  else build_n_store dbo
;;

(** {6 Providing} *)

let provide dbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_tag_all_list_by_dddd_context_databox_tag_v.ml *)
(* done with do_provider_tag_all_list_by_dddd_context_databox_tag.sh force on lundi 26 septembre 2016, 07:27:07 (UTC+0200) *)
