(** {3 Localinput_set_body_handle_command_tounit_tag_by_localinput_set_fence_variable_name_implicit_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_body_handle_command_tounit_tag_by_localinput_set_fence_variable_name_implicit_tag_provider_v";
   "Needs : VARLOI:Localinput_any_category_by_sole_index_extractor_v";
   "Needs : VARLOI:Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Input Variable Name Enity_implicit Tag it provides the associated Command_tounit Tag";
   "Author : François Colonna 01 juin 2017 at 19:27:42+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lei =

  let soi_lei = Tag_v.sole_index_off_tag tag_lei in
  let nam_ibo =
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index
      soi_lei
  in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  let tag_hcu_l =
    Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v.provide
    bna_ibo
  in

  let sof_lei = Localinput_set_fence_variable_name_entity_implicit_tag_v.string_off tag_lei in

  List_v.only_element_of_predicate_off_list 
      (fun t -> Localinput_set_body_handle_command_tounit_tag_v.string_off t = sof_lei)
      tag_hcu_l
;;

let build_n_store tag_lei =
  build tag_lei 
;;

(** {6 Providing} *)

let provide_without_trace tag_lei =
  build_n_store tag_lei
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
