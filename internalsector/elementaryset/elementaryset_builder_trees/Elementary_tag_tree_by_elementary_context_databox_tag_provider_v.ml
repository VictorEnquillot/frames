(** {3 Elementary_tag_tree_by_elementary_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_tag_tree_by_elementary_context_databox_tag_provider_v";
   "Needs : BELE:Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v";
   "Needs : BELE:Elementary_tag_tree_by_databox_name_n_database_name_provider_v";
   "Register : BELE:Elementary_tag_tree_by_elementary_context_databox_tag_register_v";
   "What-is-it : the Full Elementary Builder-Tree from Databox_tag";
   "How-is-it-done : by using ...by_databox_name_n_database_name_provider_v";
   "Abbreviation : ebo = elementary_context_databox";
   "Author : François Colonna 05 octobre 2016 at 09:53:08+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_ebo =
  let (nam_ebo, nam_eba) =
    Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v.provide 
      tag_ebo
  in
  Elementary_tag_tree_by_databox_name_n_database_name_provider_v.provide
    (nam_ebo, nam_eba)
;;

(** {6 Storing} *)

let store tag_ebo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.store nam_mod tag_ebo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ebo =
  let result = build tag_ebo in
  store tag_ebo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_ebo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Elementary_tag_tree_by_elementary_context_databox_tag_register_v.retrieve nam_mod tag_ebo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ebo =
  if Elementary_tag_tree_by_elementary_context_databox_tag_register_v.is_stored tag_ebo
  then retrieve tag_ebo
  else build_n_store tag_ebo
;;

(** {6 Providing} *)

let provide tag_ebo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ebo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Elementary_tag_tree_by_elementary_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 09:12:59 (UTC+0200) *)
