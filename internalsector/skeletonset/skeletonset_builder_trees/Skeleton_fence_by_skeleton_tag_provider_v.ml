(** {3 Skeleton_fence_by_skeleton_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_fence_by_skeleton_tag_provider_v";
   "Needs : BSKE:Skeleton_tag_subtree_by_skeleton_tag_provider_v";
   "Register : BSKE:Skeleton_fence_by_skeleton_tag_register_v";
   "Needed-by :"; 
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "What-is-it : the Skeleton_set_fence_parameter_tag for any Skeleton_tag";
   "What-is-it : the Skeleton_set_fence_parameter_tag for any Skeleton_tag";
   "How-is-it-done : by extracting it from B-SubTree Rooted by Skeleton_tag";
   "How-is-it-done : by getting the Deepfence not the Fence";
   "Example : for a Parameter_tuple fence is a Parameter Tag list";
   "Example : for a Parameter fence is itself";
   "Author : François Colonna 10 octobre 2016 at 07:54:32+02:00";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ske =
  let tag_ske_st = 
    Skeleton_tag_subtree_by_skeleton_tag_provider_v.provide tag_ske 
  in
  Tree_v.leaf_node_list_off_tree tag_ske_st
;;

(** {6 Storing} *)

let store tag_ske val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_fence_by_skeleton_tag_register_v.store nam_mod tag_ske val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ske =
  let val_ = build tag_ske in
  store tag_ske val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve tag_ske =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Skeleton_fence_by_skeleton_tag_register_v.retrieve nam_mod tag_ske in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ske =
  if Skeleton_fence_by_skeleton_tag_register_v.is_stored tag_ske
  then retrieve tag_ske
  else build_n_store tag_ske
;;

(** {6 Providing} *)

let provide tag_ske =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ske in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Skeleton_fence_by_skeleton_tag_provider_v.ml force on mardi 11 octobre 2016, 15:02:07 (UTC+0200) *)
