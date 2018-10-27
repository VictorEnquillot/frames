(** {3 Elementary_tag_all_list_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_all_list_by_databox_name_n_database_name_provider_v";
   "Register : DELE:Elementary_tag_all_list_by_databox_name_n_database_name_register_v";
   "Register : DELE:Elementary_creation_module_name_by_sole_index_register_v";
   "Register : DELE:Elementary_symbol_by_sole_index_register_v";
   "Needs : DELE:Elementary_tag_tree_by_databox_name_n_database_name_provider_v";
   "Needed-by : DELE:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Databox_name_n_database_name with Elementary_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dbo, nam_dba) =
  let tag_ele_t = 
    Elementary_tag_tree_by_databox_name_n_database_name_provider_v.provide
      (nam_dbo, nam_dba)
  in
  
  Tree_v.node_list_off_tree tag_ele_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod (nam_dbo, nam_dba) =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_ele_l = build (nam_dbo, nam_dba) in
  List.iter 
    (fun (s, i) ->
      Elementary_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Elementary_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_ele_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store (nam_dbo, nam_dba) tag_ele_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_tag_all_list_by_databox_name_n_database_name_register_v.store nam_mod (nam_dbo, nam_dba) tag_ele_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (nam_dbo, nam_dba) =
  let tag_ele_l = build (nam_dbo, nam_dba) in
  store (nam_dbo, nam_dba) tag_ele_l;
  store_creation_module_n_symbol nam_mod (nam_dbo, nam_dba);
  tag_ele_l
;;

(** {6 Retrieving} *)

let retrieve (nam_dbo, nam_dba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Elementary_tag_all_list_by_databox_name_n_database_name_register_v.retrieve 
      nam_mod 
      (nam_dbo, nam_dba) 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (nam_dbo, nam_dba) =
  if Elementary_tag_all_list_by_databox_name_n_database_name_register_v.is_stored (nam_dbo, nam_dba)
  then retrieve (nam_dbo, nam_dba)
  else build_n_store (nam_dbo, nam_dba)
;;

(** {6 Providing} *)

let provide (nam_dbo, nam_dba) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (nam_dbo, nam_dba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_tag_all_list_by_databox_name_n_database_name.sh on mercredi 25 mai 2016, 10:04:08 (UTC+0200) *)
