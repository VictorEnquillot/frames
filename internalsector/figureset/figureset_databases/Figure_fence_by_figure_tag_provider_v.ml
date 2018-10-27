(** {3 Figure_fence_by_figure_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Register : DFIG:Figure_fence_by_figure_tag_register_v";
   "Needs : DFIG:Figure_tag_subtree_by_figure_tag_provider_v";
   "Needs : SFIG:Figure_symbol_v";
   "Needed-by :"; 
   "Definition : the Fence is the Tag list of the Leaf Entities of the B-Tree of any Entity";
   "What-is-it : the Fence for any Figure_tag";
   "How-is-it-done : by extracting it from B-SubTree Rooted by Figure_tag";
   "How-is-it-done : by getting the fence not the Deepfence";
   "Example : for a Point fence Tag is itself";
   "Example : for a Point_tuple fence is Builder Point Tag list";
   "Example : for a Point_tuple deepfence is Figure Units Tag list";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_fig =
  let tag_fig_st = Figure_tag_subtree_by_figure_tag_provider_v.provide tag_fig in
  try 
    Tree_v.node_list_of_node_predicate_off_tree
      (fun (s, i) -> Figure_symbol_v.is_figure_field_fence_symbol_off_figure_symbol s)
      tag_fig_st 
  with Failure _ -> []
;;

(** {6 Storing} *)

let store tag_fig tag_uni_clo =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_fence_by_figure_tag_register_v.store nam_mod tag_fig tag_uni_clo;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_fig =
  let tag_uni_clo = build tag_fig in
  store tag_fig tag_uni_clo;
  tag_uni_clo
;;

(** {6 Retrieving} *)

let retrieve tag_fig =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Figure_fence_by_figure_tag_register_v.retrieve nam_mod tag_fig in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_fig =
  if Figure_fence_by_figure_tag_register_v.is_stored tag_fig
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

(* done with do_provider_with_register.sh Figure_fence_by_figure_tag_provider_v.ml on jeudi 19 mai 2016, 18:35:55 (UTC+0200) *)
