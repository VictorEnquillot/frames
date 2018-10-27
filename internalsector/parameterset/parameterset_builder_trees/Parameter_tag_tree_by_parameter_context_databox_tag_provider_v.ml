(** {3 Parameter_tag_tree_by_parameter_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_tag_tree_by_parameter_context_databox_tag_provider_v";
   "Needs : BPAR:Basicname_databox_n_basicname_database_by_parameter_context_databox_tag_provider_v";
   "Needs : BPAR:Parameter_tag_tree_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BPAR:Parameter_tag_tree_by_parameter_context_databox_tag_register_v";
   "What-is-it : the Full Parameter Builder-Tree from Databox_tag";
   "How-is-it-done : by using ...by_basicname_databox_n_basicname_database_provider_v";
   "Abbreviation : ebo = parameter_context_databox";
   "Author : François Colonna 05 octobre 2016 at 09:53:08+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_pbo =
  let (bna_dbo, bna_dba) =
    Basicname_databox_n_basicname_database_by_parameter_context_databox_tag_provider_v.provide 
      tag_pbo
  in
  Parameter_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba)
;;

(** {6 Storing} *)

let store tag_pbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_tag_tree_by_parameter_context_databox_tag_register_v.store nam_mod tag_pbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_pbo =
  let result = build tag_pbo in
  store tag_pbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_pbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Parameter_tag_tree_by_parameter_context_databox_tag_register_v.retrieve nam_mod tag_pbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_pbo =
  if Parameter_tag_tree_by_parameter_context_databox_tag_register_v.is_stored tag_pbo
  then retrieve tag_pbo
  else build_n_store tag_pbo
;;

(** {6 Providing} *)

let provide tag_pbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_pbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Parameter_tag_tree_by_parameter_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 09:12:59 (UTC+0200) *)
