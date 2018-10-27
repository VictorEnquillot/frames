(** {3 Figure_fence_by_figure_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_fence_by_figure_tag_provider_v";
   "Needs : BFIG:Figure_tag_subtree_by_figure_tag_provider_v";
   "Register : BELE:Figure_fence_by_figure_tag_register_v";
   "Needed-by :"; 
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "What-is-it : the Figure_set_fence_tag for any Figure_tag";
   "How-is-it-done : by extracting it from B-SubTree Rooted by Figure_tag";
   "How-is-it-done : by getting the Deepfence not the Fence";
   "Example : for a Coordinate_tuple fence is a Coordinate Tag list";
   "Example : for a Coordinate fence is itself";
   "Author : François Colonna 10 octobre 2016 at 07:54:32+02:00";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_fig =
  let tag_fig_st = 
    Figure_tag_subtree_by_figure_tag_provider_v.provide tag_fig 
  in
  Tree_v.leaf_node_list_off_tree tag_fig_st
;;

(** {6 Storing} *)

let store tag_fig val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_fence_by_figure_tag_register_v.store nam_mod tag_fig val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_fig =
  let val_ = build tag_fig in
  store tag_fig val_;
  val_
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

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Figure_fence_by_figure_tag_provider_v.ml force on mercredi 12 octobre 2016, 16:11:16 (UTC+0200) *)
