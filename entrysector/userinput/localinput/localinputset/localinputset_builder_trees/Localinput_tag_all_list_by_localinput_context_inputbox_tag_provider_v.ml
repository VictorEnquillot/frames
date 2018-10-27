(** {3 Localinput_tag_all_list_by_localinput_context_inputbox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_tag_all_list_by_localinput_context_inputbox_tag_provider_v";
   "Register : BLOI:Localinput_tag_all_list_by_localinput_context_inputbox_tag_register_v";
   "Needs : BLOI:Localinput_tag_all_list_by_basicname_inputbox_provider_v";
   "Needed-by : BLOI:";
   "What-is-it : the list of all Nodes of the Builder-tree (including Root))";
   "What-is-it : with Sector_tag as Root";
   "Remark : for entry_sector only";
   "Author : François Colonna 31 octobre 2016 at 14:40:24+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lbo =
  let nam_ibo = Localinput_context_inputbox_tag_v.string_off tag_lbo in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide bna_ibo
;;

(** {6 Storing} *)

let store lbo tag_l_l =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_tag_all_list_by_localinput_context_inputbox_tag_register_v.store nam_mod lbo tag_l_l;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store lbo =
  let tag_l_l = build lbo in
  store lbo tag_l_l;
  tag_l_l
;;

(** {6 Retrieving} *)

let retrieve lbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_tag_all_list_by_localinput_context_inputbox_tag_register_v.retrieve nam_mod lbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace lbo =
  if Localinput_tag_all_list_by_localinput_context_inputbox_tag_register_v.is_stored lbo
  then retrieve lbo
  else build_n_store lbo
;;

(** {6 Providing} *)

let provide lbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace lbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_entry_provider_tag_all_list_by_dddd_context_inputbox_tag_v.ml *)
(* done with do_provider_tag_all_list_by_dddd_context_inputbox_tag.sh force on lundi 31 octobre 2016, 14:54:11 (UTC+0100) *)
