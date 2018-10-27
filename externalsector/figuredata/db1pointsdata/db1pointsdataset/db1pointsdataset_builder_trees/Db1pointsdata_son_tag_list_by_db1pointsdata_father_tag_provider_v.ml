(** {3 Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v";
   "Register : BDB1:Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v";
   "Needs : BDB1:Db1pointsdata_tag_subtree_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : BDB1:Db1pointsdata_any_category_by_sole_index_extractor_v";
   "Needed-by : BDB1:";
   "What-is-it : for each Db1points Tag the list of its Builders Tag";
   "Remark : Extraction from Tree -> tag already exists";
   "Author : François Colonna 25 septembre 2016 at 20:18:51+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_db1 =
  let soi_db1 = Tag_v.sole_index_off_tag tag_db1 in
  let tag_dbo = 
    Db1pointsdata_any_category_by_sole_index_extractor_v.db1pointsdata_context_databox_tag_off_sole_index
      soi_db1
  in
  let tag_db1_t = 
    Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_v.provide  
      tag_dbo
  in

  if Tree_v.is_leaf_of_node_off_tree tag_db1 tag_db1_t
  then 
    []
  else
    begin
      let tag_db1_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_db1) 
	  tag_db1_t
      in 
      
      Tree_v.topson_node_list_off_tree tag_db1_st
    end
;;

(** {6 Storing} *)

let store tag_db1 tag_db1_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.store nam_mod tag_db1 tag_db1_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_db1 =
  let tag_db1_l = build tag_db1 in
  store tag_db1 tag_db1_l;
  tag_db1_l
;;

(** {6 Retrieving} *)

let retrieve tag_db1 =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.retrieve nam_mod tag_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_db1 =
  if Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.is_stored tag_db1
  then retrieve tag_db1
  else build_n_store tag_db1
;;

(** {6 Providing} *)

let provide tag_db1 =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v.ml force on lundi 26 septembre 2016, 07:27:01 (UTC+0200) *)
