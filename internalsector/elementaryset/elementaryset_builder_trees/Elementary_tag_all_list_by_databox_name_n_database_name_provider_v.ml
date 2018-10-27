(** {3 Elementary_tag_all_list_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_tag_all_list_by_databox_name_n_database_name_provider_v";
   "Register : BELE:Elementary_tag_all_list_by_databox_name_n_database_name_register_v";
   "Register : BELE:Elementary_creation_module_name_by_sole_index_register_v";
   "Register : BELE:Elementary_symbol_by_sole_index_register_v";
   "Needs : BELE:Elementary_tag_tree_by_databox_name_n_database_name_provider_v";
   "Needed-by : BELE:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Databox_name_n_database_name with Sector_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_ebo, nam_eba) =
  let tag_db1_t = 
    Elementary_tag_tree_by_databox_name_n_database_name_provider_v.provide
      (nam_ebo, nam_eba)
  in
  
  Tree_v.node_list_off_tree tag_db1_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod (nam_ebo, nam_eba) =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_db1_l = build (nam_ebo, nam_eba) in
  List.iter 
    (fun (s, i) ->
      Elementary_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Elementary_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_db1_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store (nam_ebo, nam_eba) tag_db1_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_tag_all_list_by_databox_name_n_database_name_register_v.store nam_mod (nam_ebo, nam_eba) tag_db1_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (nam_ebo, nam_eba) =
  let tag_db1_l = build (nam_ebo, nam_eba) in
  store (nam_ebo, nam_eba) tag_db1_l;
  store_creation_module_n_symbol nam_mod (nam_ebo, nam_eba);
  tag_db1_l
;;

(** {6 Retrieving} *)

let retrieve (nam_ebo, nam_eba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Elementary_tag_all_list_by_databox_name_n_database_name_register_v.retrieve 
      nam_mod 
      (nam_ebo, nam_eba) 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (nam_ebo, nam_eba) =
  if Elementary_tag_all_list_by_databox_name_n_database_name_register_v.is_stored (nam_ebo, nam_eba)
  then retrieve (nam_ebo, nam_eba)
  else build_n_store (nam_ebo, nam_eba)
;;

(** {6 Providing} *)

let provide (nam_ebo, nam_eba) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (nam_ebo, nam_eba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_tag_all_list_by_databox_name_n_database_name_v.ml *)
(* done with do_provider_tag_all_list_by_databox_name_n_database_name.sh force on lundi 10 octobre 2016, 09:13:04 (UTC+0200) *)
