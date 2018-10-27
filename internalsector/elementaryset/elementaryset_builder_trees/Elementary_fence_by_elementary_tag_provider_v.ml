(** {3 Elementary_fence_by_elementary_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needs : BELE:Elementary_tag_subtree_by_elementary_tag_provider_v";
   "Register : BELE:Elementary_fence_by_elementary_tag_register_v";
   "Needed-by :"; 
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "What-is-it : the Elementary_fence_coordinate_tag for any Elementary_tag";
   "What-is-it : the Elementary_fence_parameter_tag for any Elementary_tag";
   "How-is-it-done : by extracting it from B-SubTree Rooted by Elementary_tag";
   "How-is-it-done : by getting the Deepfence not the Fence";
   "Example : for a Coordinate_tuple fence is a Coordinate Tag list";
   "Example : for a Coordinate fence is itself";
   "Author : François Colonna 10 octobre 2016 at 07:54:32+02:00";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ele =
  let tag_ele_st = 
    Elementary_tag_subtree_by_elementary_tag_provider_v.provide tag_ele 
  in
  Tree_v.leaf_node_list_off_tree tag_ele_st
;;

(** {6 Storing} *)

let store tag_ele val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_fence_by_elementary_tag_register_v.store nam_mod tag_ele val_;
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
  let result = Elementary_fence_by_elementary_tag_register_v.retrieve nam_mod tag_ele in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ele =
  if Elementary_fence_by_elementary_tag_register_v.is_stored tag_ele
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
(* done with do_provider_with_register.sh Elementary_fence_by_elementary_tag_provider_v.ml force on lundi 10 octobre 2016, 09:12:57 (UTC+0200) *)
