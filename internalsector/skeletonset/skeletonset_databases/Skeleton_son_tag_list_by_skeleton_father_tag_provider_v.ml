(** {3 Skeleton_son_tag_list_by_skeleton_father_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_son_tag_list_by_skeleton_father_tag_provider_v";
   "Register : DSKE:Skeleton_son_tag_list_by_skeleton_father_tag_register_v";
   "Needs : DSKE:Skeleton_tag_subtree_by_skeleton_context_databox_tag_provider_v";
   "Needs : DSKE:Skeleton_any_category_by_sole_index_extractor_v";
   "Needed-by : DSKE:";
   "What-is-it : for each Skeleton Tag the list of its Builders Tag";
   "Remark : Extraction from Tree -> tag already exists";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ske =

  let soi_ske = Tag_v.sole_index_off_tag tag_ske in

  let tag_dcb = 
    Skeleton_any_category_by_sole_index_extractor_v.skeleton_context_databox_tag_off_sole_index
      soi_ske
  in

  let tag_ske_t = 
    Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v.provide  
      tag_dcb
  in

  if Tree_v.is_leaf_of_node_off_tree tag_ske tag_ske_t
  then 
    []
  else
    begin
      let tag_ske_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_ske) 
	  tag_ske_t
      in 
      
      Tree_v.topson_node_list_off_tree tag_ske_st
    end
;;

(** {6 Storing} *)

let store tag_ske result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_son_tag_list_by_skeleton_father_tag_register_v.store nam_mod tag_ske result;
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
  let result = Skeleton_son_tag_list_by_skeleton_father_tag_register_v.retrieve nam_mod tag_ske in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ske =
  if Skeleton_son_tag_list_by_skeleton_father_tag_register_v.is_stored tag_ske
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

(* done with do_provider_with_register.sh Skeleton_son_tag_list_by_skeleton_father_tag_provider_v.ml on jeudi 19 mai 2016, 18:29:50 (UTC+0200) *)
