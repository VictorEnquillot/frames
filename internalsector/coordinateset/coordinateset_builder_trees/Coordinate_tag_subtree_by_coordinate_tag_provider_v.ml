(** {3 Coordinate_tag_subtree_by_coordinate_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_tag_subtree_by_coordinate_tag_provider_v";
   "Needs : BCOO:Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v";
   "Register : BCOO:Coordinate_tag_subtree_by_coordinate_tag_register_v";
   "Needed-by :"; 
   "What-is-it : the Tag Builder-tree with any Coordinate_tag as root";
   "How-is-it-done : by extraction from the Subtree";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(* {6 Building} *)

let build tag_coo =
  let soi_coo = Tag_v.sole_index_off_tag tag_coo in
  let tag_cbo = 
    Coordinate_any_category_by_sole_index_extractor_v.coordinate_context_databox_tag_off_sole_index 
      soi_coo 
  in
  let tag_coo_t = 
    Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v.provide 
      tag_cbo 
  in
  Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_coo) tag_coo_t
;;

(** {6 Storing} *)

let store tag_coo val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Coordinate_tag_subtree_by_coordinate_tag_register_v.store nam_mod tag_coo val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_coo =
  let val_ = build tag_coo in
  store tag_coo val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_coo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Coordinate_tag_subtree_by_coordinate_tag_register_v.retrieve nam_mod tag_coo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_coo =
  if Coordinate_tag_subtree_by_coordinate_tag_register_v.is_stored tag_coo
  then retrieve tag_coo
  else build_n_store tag_coo
;;

(** {6 Providing} *)

let provide tag_coo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_coo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Coordinate_tag_subtree_by_coordinate_tag_provider_v.ml force on lundi 10 octobre 2016, 09:12:58 (UTC+0200) *)
