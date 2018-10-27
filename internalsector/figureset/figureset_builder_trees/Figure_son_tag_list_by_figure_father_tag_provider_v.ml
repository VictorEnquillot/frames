(** {3 Figure_son_tag_list_by_figure_father_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_son_tag_list_by_figure_father_tag_provider_v";
   "Needs : BFIG:Figure_tag_tree_by_figure_context_databox_tag_provider_v";
   "Register : BELE:Figure_son_tag_list_by_figure_father_tag_register_v";
   "What-is-it : for each Figure Tag the list of its Builders Tag";
   "Remark : Extraction from Tree -> tag already exists";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_fig =

  let soi_ele = Tag_v.sole_index_off_tag tag_fig in

  let tag_fbo = 
    Figure_any_category_by_sole_index_extractor_v.figure_context_databox_tag_off_sole_index
      soi_ele
  in

  let tag_fig_t = 
    Figure_tag_tree_by_figure_context_databox_tag_provider_v.provide  
      tag_fbo
  in

  if Tree_v.is_leaf_of_node_off_tree tag_fig tag_fig_t
  then 
    []
  else
    begin
      let tag_fig_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_fig) 
	  tag_fig_t
      in 
      
      Tree_v.topson_node_list_off_tree tag_fig_st
    end
;;

(** {6 Storing} *)

let store tag_fig result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_son_tag_list_by_figure_father_tag_register_v.store nam_mod tag_fig result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_fig =
  let result = build tag_fig in
  store tag_fig result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_fig =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Figure_son_tag_list_by_figure_father_tag_register_v.retrieve nam_mod tag_fig in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_fig =
  if Figure_son_tag_list_by_figure_father_tag_register_v.is_stored tag_fig
  then retrieve tag_fig
  else build_n_store tag_fig
;;

(** {6 Providing} *)

let provide tag_fig =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_fig in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Figure_son_tag_list_by_figure_father_tag_provider_v.ml force on mercredi 12 octobre 2016, 16:11:16 (UTC+0200) *)
