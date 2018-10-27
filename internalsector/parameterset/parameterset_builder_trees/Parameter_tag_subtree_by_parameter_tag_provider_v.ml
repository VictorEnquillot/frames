(** {3 Parameter_tag_subtree_by_parameter_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_tag_subtree_by_parameter_tag_provider_v";
   "Needs : BPAR:Parameter_tag_tree_by_parameter_context_databox_tag_provider_v";
   "Register : BPAR:Parameter_tag_subtree_by_parameter_tag_register_v";
   "Needed-by :"; 
   "What-is-it : the Tag Builder-tree with any Parameter_tag as root";
   "How-is-it-done : by extraction from the Subtree";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(* {6 Building} *)

let build tag_ele =
  let soi_ele = Tag_v.sole_index_off_tag tag_ele in
  let tag_pbo = 
    Parameter_any_category_by_sole_index_extractor_v.parameter_context_databox_tag_off_sole_index 
      soi_ele 
  in
  let tag_par_t = 
    Parameter_tag_tree_by_parameter_context_databox_tag_provider_v.provide 
      tag_pbo 
  in
  Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_ele) tag_par_t
;;

(** {6 Storing} *)

let store tag_ele val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_tag_subtree_by_parameter_tag_register_v.store nam_mod tag_ele val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ele =
  let val_ = build tag_ele in
  store tag_ele val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_ele =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Parameter_tag_subtree_by_parameter_tag_register_v.retrieve nam_mod tag_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ele =
  if Parameter_tag_subtree_by_parameter_tag_register_v.is_stored tag_ele
  then retrieve tag_ele
  else build_n_store tag_ele
;;

(** {6 Providing} *)

let provide tag_ele =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Parameter_tag_subtree_by_parameter_tag_provider_v.ml force on lundi 10 octobre 2016, 09:12:58 (UTC+0200) *)
