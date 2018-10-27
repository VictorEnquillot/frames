(** {3 Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v";
   "Needs : BNWC:Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v";
   "Register : BNWC:Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v";
   "Needed-by : BNWC:";
   "What-is-it : for each Nwchem Tag the list of its Builders Tag";
   "Remark : Extraction from Tree -> tag already exists";
   "Author : François Colonna 25 septembre 2016 at 20:18:51+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_db1 =
  let soi_db1 = Tag_v.sole_index_off_tag tag_db1 in
  let tag_nbo = 
    Nwchemdata_any_category_by_sole_index_extractor_v.nwchemdata_context_databox_tag_off_sole_index
      soi_db1
  in
  let tag_nwc_t = 
    Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v.provide  
      tag_nbo
  in

  if Tree_v.is_leaf_of_node_off_tree tag_db1 tag_nwc_t
  then 
    []
  else
    begin
      let tag_nwc_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_db1) 
	  tag_nwc_t
      in 
      
      Tree_v.topson_node_list_off_tree tag_nwc_st
    end
;;

(** {6 Storing} *)

let store tag_db1 tag_nwc_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.store nam_mod tag_db1 tag_nwc_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_db1 =
  let tag_nwc_l = build tag_db1 in
  store tag_db1 tag_nwc_l;
  tag_nwc_l
;;

(** {6 Retrieving} *)

let retrieve tag_db1 =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.retrieve nam_mod tag_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_db1 =
  if Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.is_stored tag_db1
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
(* done with do_provider_with_register.sh Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.ml force on lundi 10 octobre 2016, 15:52:03 (UTC+0200) *)
