(** {3 Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v";
   "Register : BPAR:Parameter_tag_all_list_by_parameter_context_databox_tag_register_v";
   "Needs : BPAR:Parameter_tag_all_list_by_basicname_databox_provider_v";
   "Needed-by : BPAR:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Parameter_context_databox_tag with Sector_tag as Root";
   "How-is-it-done : by getting (bna_dbo, bna_dba)";
   "Author : François Colonna 10 octobre 2016 at 08:36:13+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_pbo =
  let (bna_dbo, bna_dba) =
  Basicname_databox_n_basicname_database_by_parameter_context_databox_tag_provider_v.provide 
      tag_pbo 
  in
  Parameter_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba)
;;

(** {6 Storing} *)

let store ebo tag_par_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.store nam_mod ebo tag_par_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store ebo =
  let tag_par_l = build ebo in
  store ebo tag_par_l;
  tag_par_l
;;

(** {6 Retrieving} *)

let retrieve ebo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.retrieve nam_mod ebo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace ebo =
  if Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.is_stored ebo
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

(* using template_provider_tag_all_list_by_dddd_context_databox_tag_v.ml *)
(* done with do_provider_tag_all_list_by_dddd_context_databox_tag.sh force on lundi 10 octobre 2016, 09:13:04 (UTC+0200) *)
