(** {3 Skeleton_fence_by_skeleton_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_fence_by_skeleton_tag_provider_v";
   "Register : DSKE:Skeleton_fence_by_skeleton_tag_register_v";
   "Needs : DSKE:Skeleton_tag_subtree_by_skeleton_tag_provider_v";
   "Needed-by :"; 
   "Definition : a Fence is the Tag list of the Leaf Non-basic entities of the B-Tree";
   "What-is-it : the Fence for a Skeleton Tag";
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

let store tag_ske result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_fence_by_skeleton_tag_register_v.store nam_mod tag_ske result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ske =
  let result = build tag_ske in
  store tag_ske result;
  result
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

(* done with do_provider_with_register.sh Skeleton_fence_by_skeleton_tag_provider_v.ml on jeudi 19 mai 2016, 18:29:49 (UTC+0200) *)
