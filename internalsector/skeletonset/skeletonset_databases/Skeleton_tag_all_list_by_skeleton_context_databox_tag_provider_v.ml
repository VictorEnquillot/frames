(** {3 Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v";
   "Register : DSKE:Skeleton_tag_all_list_by_skeleton_context_databox_tag_register_v";
   "Needs : DSKE:Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v";
   "Needed-by : DSKE:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : for Database_name_n_databox_name with Skeleton_tag as Root";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_sbo =
  let (nam_dba, nam_dbo) = 
    Database_name_n_databox_name_by_skeleton_context_databox_tag_provider_v.provide
      tag_sbo
  in
  Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo)
;;

(** {6 Storing} *)

let store sbo tag_ske_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_tag_all_list_by_skeleton_context_databox_tag_register_v.store nam_mod sbo tag_ske_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store sbo =
  let tag_ske_l = build sbo in
  store sbo tag_ske_l;
  tag_ske_l
;;

(** {6 Retrieving} *)

let retrieve sbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Skeleton_tag_all_list_by_skeleton_context_databox_tag_register_v.retrieve nam_mod sbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace sbo =
  if Skeleton_tag_all_list_by_skeleton_context_databox_tag_register_v.is_stored sbo
  then retrieve sbo
  else build_n_store sbo
;;

(** {6 Providing} *)

let provide sbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace sbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_tag_all_list_by_dddd_context_databox_tag.sh on jeudi 19 mai 2016, 18:29:53 (UTC+0200) *)
