(** {3 Property_son_tag_list_by_property_father_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_son_tag_list_by_property_father_tag_provider_v";
   "Needs : BPRO:Property_tag_tree_by_property_context_inputbox_tag_provider_v";
   "Register : BPRO:Property_son_tag_list_by_property_father_tag_register_v";
   "What-is-it : for each Property Tag the list of its Builders Tag";
   "Remark : Extraction from Tree -> tag already exists";
   "Author : François Colonna 15 novembre 2016 at 09:27:48+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_pro =

  let soi_pro = Tag_v.sole_index_off_tag tag_pro in

  let tag_ibo = 
    Property_any_category_by_sole_index_extractor_v.property_context_inputbox_tag_off_sole_index
      soi_pro
  in

  let tag_pro_t = 
    Property_tag_tree_by_property_context_inputbox_tag_provider_v.provide  
      tag_ibo
  in

  if Tree_v.is_leaf_of_node_off_tree tag_pro tag_pro_t
  then 
    []
  else
    begin
      let tag_pro_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_pro) 
	  tag_pro_t
      in 
      
      Tree_v.topson_node_list_off_tree tag_pro_st
    end
;;

(** {6 Storing} *)

let store tag_pro result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_son_tag_list_by_property_father_tag_register_v.store nam_mod tag_pro result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_pro =
  let result = build tag_pro in
  store tag_pro result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_pro =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_son_tag_list_by_property_father_tag_register_v.retrieve nam_mod tag_pro in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_pro =
  if Property_son_tag_list_by_property_father_tag_register_v.is_stored tag_pro
  then retrieve tag_pro
  else build_n_store tag_pro
;;

(** {6 Providing} *)

let provide tag_pro =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_pro in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_son_tag_list_by_property_father_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:07 (UTC+0100) *)
