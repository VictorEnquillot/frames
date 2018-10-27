(** {3 Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BSKE:Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v";
   "Register : BSKE:Skeleton_creation_module_name_by_sole_index_register_v";
   "Register : BSKE:Skeleton_symbol_by_sole_index_register_v";
   "Needs : BSKE:Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v";
   "Needed-by : BSKE:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Basicname_databox_n_basicname_database with Sector_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let tag_ske_t = 
    Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in
  
  Tree_v.node_list_off_tree tag_ske_t 
;;

(** {6 Storing in Creation_module and Symbol by Sole_index} *)

let store_creation_module_n_symbol nam_mod (bna_dbo, bna_dba) =
  let nam_fun = "store_creation_module_n_symbol" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_ske_l = build (bna_dbo, bna_dba) in
  List.iter 
    (fun (s, i) ->
      Skeleton_creation_module_name_by_sole_index_register_v.store nam_mod i nam_mod; 
      Skeleton_symbol_by_sole_index_register_v.store nam_mod i s;
    )
    tag_ske_l;

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Storing} *)

let store (bna_dbo, bna_dba) tag_ske_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.store nam_mod (bna_dbo, bna_dba) tag_ske_l; 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_dbo, bna_dba) =
  let tag_ske_l = build (bna_dbo, bna_dba) in
  store (bna_dbo, bna_dba) tag_ske_l;
  store_creation_module_n_symbol nam_mod (bna_dbo, bna_dba);
  tag_ske_l
;;

(** {6 Retrieving} *)

let retrieve (bna_dbo, bna_dba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = 
    Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.retrieve 
      nam_mod 
      (bna_dbo, bna_dba) 
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_dbo, bna_dba) =
  if Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.is_stored (bna_dbo, bna_dba)
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
(* done with do_provider_tag_all_list_by_basicname_databox_n_database_name.sh force on mardi 11 octobre 2016, 15:02:13 (UTC+0200) *)
