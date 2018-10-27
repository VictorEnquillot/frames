(** {3 Property_tag_tree_by_property_context_inputbox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_tag_tree_by_property_context_inputbox_tag_provider_v";
   "Needs : BPRO:Basicname_inputbox_n_basicname_inputbase_by_property_context_inputbox_tag_provider_v";
   "Needs : BPRO:Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Register : BPRO:Property_tag_tree_by_property_context_inputbox_tag_register_v";
   "What-is-it : the Full Property Builder-Tree from Inputbox_tag";
   "How-is-it-done : by using ...by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Abbreviation : ebo = property_context_inputbox";
   "Author : François Colonna 05 octobre 2016 at 09:53:08+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_ibo =
  let (bna_ibo, bna_iba) =
    Basicname_inputbox_n_basicname_inputbase_by_property_context_inputbox_tag_provider_v.provide 
      tag_ibo
  in
  Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
    (bna_ibo, bna_iba)
;;

(** {6 Storing} *)

let store tag_ibo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_tag_tree_by_property_context_inputbox_tag_register_v.store nam_mod tag_ibo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ibo =
  let result = build tag_ibo in
  store tag_ibo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_ibo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_tag_tree_by_property_context_inputbox_tag_register_v.retrieve nam_mod tag_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ibo =
  if Property_tag_tree_by_property_context_inputbox_tag_register_v.is_stored tag_ibo
  then retrieve tag_ibo
  else build_n_store tag_ibo
;;

(** {6 Providing} *)

let provide tag_ibo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_tag_tree_by_property_context_inputbox_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:08 (UTC+0100) *)
