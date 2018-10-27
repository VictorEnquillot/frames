(** {3 Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : BNWC:Nwchemdata_tag_all_list_by_basicname_databox_provider_v";
   "Register : BNWC:Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v";
   "Needed-by : BNWC:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : with Sector_tag as Root";
   "Remark : for external_sector only";
   "Author : François Colonna 10 octobre 2016 at 15:49:01+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_nbo =
  let nam_dbo = Nwchemdata_context_databox_tag_v.string_off tag_nbo in
  let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo in

  Nwchemdata_tag_all_list_by_basicname_databox_provider_v.provide bna_dbo
;;

(** {6 Storing} *)

let store nbo tag_nwc_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.store nam_mod nbo tag_nwc_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nbo =
  let tag_nwc_l = build nbo in
  store nbo tag_nwc_l;
  tag_nwc_l
;;

(** {6 Retrieving} *)

let retrieve nbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.retrieve nam_mod nbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nbo =
  if Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.is_stored nbo
  then retrieve nbo
  else build_n_store nbo
;;

(** {6 Providing} *)

let provide nbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_external_provider_tag_all_list_by_dddd_context_databox_tag_v.ml *)
(* done with do_provider_tag_all_list_by_dddd_context_databox_tag.sh force on lundi 10 octobre 2016, 15:52:10 (UTC+0200) *)
