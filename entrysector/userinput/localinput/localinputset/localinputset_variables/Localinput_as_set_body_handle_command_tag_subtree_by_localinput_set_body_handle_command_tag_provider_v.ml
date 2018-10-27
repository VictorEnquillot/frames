(** {3 Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_tag_provider_v";
   "Register : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_tag_register_v";
   "Needs : VARLOI:Localinput_any_category_by_sole_index_extractor_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Localinput_set_body_handle_command_tag it provides its B-SubTree";
   "Remark : asking for any Localinput_set_body_handle_command_tag Subtree triggers buildind all of them";
   "Author : François Colonna 29 mars 2017 at 11:45:03+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ihc =
  let soi_ihc = Tag_v.sole_index_off_tag tag_ihc in
  let nam_ibo =
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index
      soi_ihc
  in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  let tag_loi_ihc_stl = 
    Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in
  
  let tag_loi_ihc = 
    Localinput_set_body_handle_command_tag_v.localinput_tag_of_localinput_set_body_handle_command_tag 
      tag_ihc 
  in
  
  List_v.only_element_of_predicate_off_list 
    (fun t -> Tree_v.root_off_tree t = tag_loi_ihc)
    tag_loi_ihc_stl;
;;

(** {6 Storing} *)

let store tag_ihc tag_loi_st =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_tag_register_v.store nam_mod tag_ihc tag_loi_st;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_ihc =
  let tag_loi_st = build tag_ihc in
  store tag_ihc tag_loi_st;
  tag_loi_st
;;

(** {6 Retrieving} *)

let retrieve tag_ihc =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_tag_register_v.retrieve nam_mod tag_ihc in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_ihc =
  if Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_tag_register_v.is_stored tag_ihc
  then retrieve tag_ihc
  else build_n_store tag_ihc
;;

(** {6 Providing} *)

let provide tag_ihc =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_ihc in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Localinput_as_set_body_handle_command_tag_subtree_by_localinput_set_body_handle_command_tag_provider_v.ml on vendredi 20 mai 2016, 13:40:58 (UTC+0200) *)
