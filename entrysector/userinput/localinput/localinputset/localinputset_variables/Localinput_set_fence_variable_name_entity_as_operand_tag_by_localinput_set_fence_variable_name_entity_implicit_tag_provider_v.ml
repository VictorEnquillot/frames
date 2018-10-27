(** {3 Localinput_set_fence_variable_name_entity_as_operand_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_variable_name_entity_as_operand_tag_by_localinput_set_fence_variable_name_entity_implicit_tag_provider_v";
   "Needs : VARLOI:Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Input Variable Name Tag it provides the B-SubTree of its Command_creation_define";
   "Author : François Colonna 29 mars 2017 at 11:15:55+02:00";
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
  let tag_lne_l = 
    Localinput_set_fence_variable_name_entity_tag_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

(* Implicit Variable_name were defined as external or target with same name *)

  let nam_lei = Localinput_set_fence_variable_name_entity_implicit_tag_v.string_off tag_lei in
  let pre_tag_opd_sof sof (s, i) = 
    ( (Localinput_set_fence_variable_name_entity_symbol_v.is_localinput_set_fence_variable_name_entity_external_symbol_off_localinput_set_fence_variable_name_entity_symbol s) 
    || (Localinput_set_fence_variable_name_entity_symbol_v.is_localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_variable_name_entity_symbol s)) 
      && (Localinput_set_fence_variable_name_entity_symbol_v.string_off s = sof) 
  in

  List_v.only_element_of_predicate_off_list (pre_tag_opd_sof nam_lei) tag_lne_l 
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
