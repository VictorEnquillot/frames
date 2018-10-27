(** {3 Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v";
   "Needs : BSKE:Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_provider_v";
   "Needs : BSKE:Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BSKE:Skeleton_tag_tree_by_skeleton_context_databox_tag_register_v";
   "What-is-it : the Full Skeleton Builder-Tree from Databox_tag";
   "How-is-it-done : by using ...by_basicname_databox_n_basicname_database_provider_v";
   "Abbreviation : ebo = skeleton_context_databox";
   "Author : François Colonna 05 octobre 2016 at 09:53:08+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_sbo =
  let (bna_dbo, bna_dba) =
    Basicname_databox_n_basicname_database_by_skeleton_context_databox_tag_provider_v.provide 
      tag_sbo
  in
  Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba)
;;

(** {6 Storing} *)

let store tag_sbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_tag_tree_by_skeleton_context_databox_tag_register_v.store nam_mod tag_sbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_sbo =
  let result = build tag_sbo in
  store tag_sbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_sbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Skeleton_tag_tree_by_skeleton_context_databox_tag_register_v.retrieve nam_mod tag_sbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_sbo =
  if Skeleton_tag_tree_by_skeleton_context_databox_tag_register_v.is_stored tag_sbo
  then retrieve tag_sbo
  else build_n_store tag_sbo
;;

(** {6 Providing} *)

let provide tag_sbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_sbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v.ml force on mardi 11 octobre 2016, 15:02:09 (UTC+0200) *)
