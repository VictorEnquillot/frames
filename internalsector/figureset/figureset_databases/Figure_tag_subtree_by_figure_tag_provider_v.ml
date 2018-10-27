(** {3 Figure_tag_subtree_by_figure_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_tag_subtree_by_figure_tag_provider_v";
   "Register : DFIG:Figure_tag_subtree_by_figure_tag_register_v";
   "Needed-by : DFIG:";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_tag_tree_by_figure_createdby_tag_provider_v";
   "What-is-it : the Builder-SubTree for any Figure Tag";
   "How-is-it-done : from Symbol Builder-Tree by Createdby_tag";
   "Remark : Sole_index of Createdby Tree Root is given by its Name";
   "Remark : Index of Database is given by its Name";
   "Remark : Database Father is always a Createdby Index taken from current tag_ddo";
   "Remark : Figure_tag_tree defines all the relations between any Figure entity";
   "Remark : Figure_tag_tree is not stored by Figure_domain_tag (Database yet ambiguous)";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_fig =
  let soi_fig = Tag_v.sole_index_off_tag tag_fig in
  let tag_fbo = Figure_any_category_by_sole_index_extractor_v.figure_context_databox_tag_off_sole_index soi_fig in
  let tag_fig_t = Figure_tag_tree_by_figure_context_databox_tag_provider_v.provide tag_fbo in
  Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_fig) tag_fig_t
;;

(** {6 Storing} *)

let store tag_fig result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_tag_subtree_by_figure_tag_register_v.store nam_mod tag_fig result;
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
  let result = Figure_tag_subtree_by_figure_tag_register_v.retrieve nam_mod tag_fig in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_fig =
  if Figure_tag_subtree_by_figure_tag_register_v.is_stored tag_fig
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

(* done with do_provider_with_register.sh Figure_tag_subtree_by_figure_tag_provider_v.ml on jeudi 19 mai 2016, 18:35:55 (UTC+0200) *)
