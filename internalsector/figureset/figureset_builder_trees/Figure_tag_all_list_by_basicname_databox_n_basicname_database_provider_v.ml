(** {3 Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BFIG:Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BFIG:Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v";
   "Register : BFIG:Figure_creation_module_name_by_sole_index_register_v";
   "Register : BFIG:Figure_symbol_by_sole_index_register_v";
   "Needed-by : BFIG:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Basicname_databox_n_basicname_database with Sector_tag as Root";
   "Author : François Colonna 13 octobre 2016 at 12:10:17+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let tag_fig_t = 
    Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in
  
  Tree_v.node_list_off_tree tag_fig_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod (bna_dbo, bna_dba) =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_fig_l = build (bna_dbo, bna_dba) in
  List.iter 
    (fun (s, i) ->
      Figure_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Figure_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_fig_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store (bna_dbo, bna_dba) tag_fig_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.store nam_mod (bna_dbo, bna_dba) tag_fig_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_dbo, bna_dba) =
  let tag_fig_l = build (bna_dbo, bna_dba) in
  store (bna_dbo, bna_dba) tag_fig_l;
  store_creation_module_n_symbol nam_mod (bna_dbo, bna_dba);
  tag_fig_l
;;

(** {6 Retrieving} *)

let retrieve (bna_dbo, bna_dba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.retrieve 
      nam_mod 
      (bna_dbo, bna_dba) 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_dbo, bna_dba) =
  if Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.is_stored (bna_dbo, bna_dba)
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

(* using template_internal_provider_tag_all_list_by_basicname_databox_n_basicname_database_v.ml *)
(* done with do_provider_tag_all_list_by_basicname_databox_n_database_name.sh force on mercredi 12 octobre 2016, 16:11:23 (UTC+0200) *)
