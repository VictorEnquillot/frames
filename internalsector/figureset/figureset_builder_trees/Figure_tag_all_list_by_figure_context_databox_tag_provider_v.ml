(** {3 Figure_tag_all_list_by_figure_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_tag_all_list_by_figure_context_databox_tag_provider_v";
   "Needs : BFIG:Basicname_databox_n_basicname_database_by_figure_context_databox_tag_provider_v";
   "Needs : BFIG:Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BFIG:Figure_tag_all_list_by_figure_context_databox_tag_register_v";
   "Needed-by : BFIG:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Figure_context_databox_tag with Sector_tag as Root";
   "How-is-it-done : by getting (bna_dbo, bna_dba)";
   "Author : François Colonna 10 octobre 2016 at 08:36:13+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_fbo =
  let (bna_dbo, bna_dba) =
  Basicname_databox_n_basicname_database_by_figure_context_databox_tag_provider_v.provide 
      tag_fbo 
  in
  Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba)
;;

(** {6 Storing} *)

let store fbo tag_fig_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_tag_all_list_by_figure_context_databox_tag_register_v.store nam_mod fbo tag_fig_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fbo =
  let tag_fig_l = build fbo in
  store fbo tag_fig_l;
  tag_fig_l
;;

(** {6 Retrieving} *)

let retrieve fbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Figure_tag_all_list_by_figure_context_databox_tag_register_v.retrieve nam_mod fbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fbo =
  if Figure_tag_all_list_by_figure_context_databox_tag_register_v.is_stored fbo
  then retrieve fbo
  else build_n_store fbo
;;

(** {6 Providing} *)

let provide fbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_internal_provider_tag_all_list_by_dddd_context_databox_tag_v.ml *)
(* done with do_provider_tag_all_list_by_dddd_context_databox_tag.sh force on mercredi 12 octobre 2016, 16:11:23 (UTC+0200) *)
