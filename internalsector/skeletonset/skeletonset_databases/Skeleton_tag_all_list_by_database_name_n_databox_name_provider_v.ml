(** {3 Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v";
   "Register : DSKE:Skeleton_tag_all_list_by_database_name_n_databox_name_register_v";
   "Register : DSKE:Skeleton_creation_module_name_by_sole_index_register_v";
   "Register : DSKE:Skeleton_symbol_by_sole_index_register_v";
   "Needs : DSKE:Skeleton_tag_tree_by_database_name_n_databox_name_provider_v";
   "Needed-by : DSKE:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Database_name_n_databox_name with Skeleton_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let tag_db1_t = 
    Skeleton_tag_tree_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in
  
  Tree_v.node_list_off_tree tag_db1_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod (nam_dba, nam_dbo) =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_db1_l = build (nam_dba, nam_dbo) in
  List.iter 
    (fun (s, i) ->
      Skeleton_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Skeleton_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_db1_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store (nam_dba, nam_dbo) tag_db1_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_tag_all_list_by_database_name_n_databox_name_register_v.store nam_mod (nam_dba, nam_dbo) tag_db1_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (nam_dba, nam_dbo) =
  let tag_db1_l = build (nam_dba, nam_dbo) in
  store (nam_dba, nam_dbo) tag_db1_l;
  store_creation_module_n_symbol nam_mod (nam_dba, nam_dbo);
  tag_db1_l
;;

(** {6 Retrieving} *)

let retrieve (nam_dba, nam_dbo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Skeleton_tag_all_list_by_database_name_n_databox_name_register_v.retrieve 
      nam_mod 
      (nam_dba, nam_dbo) 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (nam_dba, nam_dbo) =
  if Skeleton_tag_all_list_by_database_name_n_databox_name_register_v.is_stored (nam_dba, nam_dbo)
  then retrieve (nam_dba, nam_dbo)
  else build_n_store (nam_dba, nam_dbo)
;;

(** {6 Providing} *)

let provide (nam_dba, nam_dbo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (nam_dba, nam_dbo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_tag_all_list_by_database_name_n_databox_name.sh on jeudi 19 mai 2016, 18:29:53 (UTC+0200) *)
