(** {3 Make_argument_by_localinput_set_fence_variable_name_entity_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Make_argument_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Current : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needs : VARLOI:Make_argument_by_localinput_set_body_box_type_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the string argument of the make function for an Target";
   "How-is-it-done : by contatenating domain_name \"_\" type_name and name (string_off)";
   "Improve : subtype Localinput_variable_name Localinput_variable_name_target etc...";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building.} *)

let build tag_lne =
  let nam_var = Localinput_set_fence_variable_name_tag_v.string_off tag_lne in
  let pre_tag_bbt_sof sof (s, i) = Localinput_symbol_v.localinput_set_body_box_type_constructor sof = s in

  let tag_loi_lcd_st =
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide
      tag_lne
  in

  let tag_loi_bbt = Tree_v.only_node_of_node_predicate_off_tree 
      (pre_tag_bbt_sof nam_var) 
      tag_loi_lcd_st
  in

  let tag_bbt = (* Coerce Down *)
    Localinput_set_body_box_type_tag_v.localinput_set_body_box_type_tag_off_localinput_tag 
      tag_loi_bbt
  in

  Make_argument_by_localinput_set_body_box_type_tag_provider_v.provide tag_bbt
;; 

let build_n_store tag_lne =
  build tag_lne 
;;

(** {6 Providing.} *)

let provide_without_trace tag_lne =
  build_n_store tag_lne
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
