(** {3 Parameter_tag_all_list_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_tag_all_list_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BPAR:Parameter_tag_all_list_by_basicname_databox_n_basicname_database_register_v";
   "Register : BPAR:Parameter_creation_module_name_by_sole_index_register_v";
   "Register : BPAR:Parameter_symbol_by_sole_index_register_v";
   "Needs : BPAR:Parameter_tag_tree_by_basicname_databox_n_basicname_database_provider_v";
   "Needed-by : BPAR:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Basicname_databox_n_basicname_database with Sector_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let tag_db1_t = 
    Parameter_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in
  
  Tree_v.node_list_off_tree tag_db1_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod (bna_dbo, bna_dba) =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_db1_l = build (bna_dbo, bna_dba) in
  List.iter 
    (fun (s, i) ->
      Parameter_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Parameter_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_db1_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store (bna_dbo, bna_dba) tag_db1_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_tag_all_list_by_basicname_databox_n_basicname_database_register_v.store nam_mod (bna_dbo, bna_dba) tag_db1_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_dbo, bna_dba) =
  let tag_db1_l = build (bna_dbo, bna_dba) in
  store (bna_dbo, bna_dba) tag_db1_l;
  store_creation_module_n_symbol nam_mod (bna_dbo, bna_dba);
  tag_db1_l
;;

(** {6 Retrieving} *)

let retrieve (bna_dbo, bna_dba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Parameter_tag_all_list_by_basicname_databox_n_basicname_database_register_v.retrieve 
      nam_mod 
      (bna_dbo, bna_dba) 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_dbo, bna_dba) =
  if Parameter_tag_all_list_by_basicname_databox_n_basicname_database_register_v.is_stored (bna_dbo, bna_dba)
  then retrieve (bna_dbo, bna_dba)
  else build_n_store (bna_dbo, bna_dba)
;;

(** {6 Providing} *)

let provide (bna_dbo, bna_dba) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_dbo, bna_dba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_tag_all_list_by_basicname_databox_n_basicname_database_v.ml *)
(* done with do_provider_tag_all_list_by_basicname_databox_n_database_name.sh force on lundi 10 octobre 2016, 09:13:04 (UTC+0200) *)