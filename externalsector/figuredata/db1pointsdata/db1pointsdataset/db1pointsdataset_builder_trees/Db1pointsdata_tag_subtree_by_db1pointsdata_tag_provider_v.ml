(** {3 Db1pointsdata_tag_subtree_by_db1pointsdata_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_tag_subtree_by_db1pointsdata_tag_provider_v";
   "Register : BDB1:Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v";
   "Needs : BDB1:Db1pointsdata_any_category_by_sole_index_extractor_v";
   "Needs : BDB1:Basicname_databox_n_basicname_database_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : BDB1:Db1pointsdata_tag_tree_by_basicname_databox_provider_v";
   "Needed-by :"; 
   "What-is-it : the Tag Builder-tree with any Db1pointsdata_tag as root";
   "How-is-it-done : by extraction from the Subtree";
   "Author : François Colonna 25 septembre 2016 at 20:11:52+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(* {6 Building} *)

let build tag_db1 =
  let soi_db1 = Tag_v.sole_index_off_tag tag_db1 in
  let tag_dbo = 
    Db1pointsdata_any_category_by_sole_index_extractor_v.db1pointsdata_context_databox_tag_off_sole_index 
      soi_db1 
  in
  let tag_db1_t = Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_v.provide tag_dbo in
  Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_db1) tag_db1_t
;;

(** {6 Storing} *)

let store tag_db1 tag_db1_st =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.store nam_mod tag_db1 tag_db1_st;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_db1 =
  let tag_db1_st = build tag_db1 in
  store tag_db1 tag_db1_st;
  tag_db1_st
;;

(** {6 Retrieving} *)

let retrieve tag_db1 =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.retrieve nam_mod tag_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_db1 =
  if Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.is_stored tag_db1
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
(* done with do_provider_with_register.sh Db1pointsdata_tag_subtree_by_db1pointsdata_tag_provider_v.ml force on lundi 26 septembre 2016, 07:27:02 (UTC+0200) *)
