(** {3 Property_tag_all_list_by_property_context_inputbox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_tag_all_list_by_property_context_inputbox_tag_provider_v";
   "Needs : BPRO:Basicname_inputbox_n_basicname_inputbase_by_property_context_inputbox_tag_provider_v";
   "Needs : BPRO:Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Register : BPRO:Property_tag_all_list_by_property_context_inputbox_tag_register_v";
   "Needed-by : BPRO:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : with Sector_tag as Root";
   "Remark : for entry_sector only";
   "Author : François Colonna 15 novembre 2016 at 16:23:23+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_pbo =
  let (bna_ibo, bna_iba) =
  Basicname_inputbox_n_basicname_inputbase_by_property_context_inputbox_tag_provider_v.provide 
      tag_pbo 
  in
  Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (bna_ibo, bna_iba)
;;

(** {6 Storing} *)

let store pbo tag_pro_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_tag_all_list_by_property_context_inputbox_tag_register_v.store nam_mod pbo tag_pro_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store pbo =
  let tag_pro_l = build pbo in
  store pbo tag_pro_l;
  tag_pro_l
;;

(** {6 Retrieving} *)

let retrieve pbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_tag_all_list_by_property_context_inputbox_tag_register_v.retrieve nam_mod pbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace pbo =
  if Property_tag_all_list_by_property_context_inputbox_tag_register_v.is_stored pbo
  then retrieve pbo
  else build_n_store pbo
;;

(** {6 Providing} *)

let provide pbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace pbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_product_provider_tag_all_list_by_dddd_context_inputbox_tag_v.ml *)
(* done with do_provider_tag_all_list_by_dddd_context_inputbox_tag.sh force on mardi 15 novembre 2016, 16:37:17 (UTC+0100) *)
