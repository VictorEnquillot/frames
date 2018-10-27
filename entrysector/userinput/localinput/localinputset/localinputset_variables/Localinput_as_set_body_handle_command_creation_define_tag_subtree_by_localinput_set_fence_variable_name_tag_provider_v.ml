(** {3 Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_localinput_set_fence_variable_name_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_localinput_set_fence_variable_name_tag_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Input Variable Name Tag it provides the B-SubTree of its Command_creation_define";
 ]
;;

 
 
 
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lvn =
  let soi_lvn = Tag_v.sole_index_off_tag tag_lvn in
  let tag_loi_lcd = 
    Localinput_any_category_by_sole_index_extractor_v.localinput_set_body_handle_command_creation_define_tag_off_sole_index
      soi_lvn
  in
  let soi_inp_lcd = Tag_v.sole_index_off_tag tag_loi_lcd in
  let nam_ibo =
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index
      soi_inp_lcd
  in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  let tag_loi_stl = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

  let pre_tag_lcd_sof sof (s, i) = Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor sof = s in
  let pre_tag_lcd_roo_sof sof t = pre_tag_lcd_sof sof (Tree_v.root_node_off_tree t) in
 
  let nam_var_lcd = Localinput_set_body_handle_command_creation_define_tag_v.string_off tag_loi_lcd in

  List_v.only_element_of_predicate_off_list (pre_tag_lcd_roo_sof nam_var_lcd) tag_loi_stl
;;


let build_n_store tag_lvn =
  build tag_lvn 
;;

(** {6 Providing} *)

let provide_without_trace tag_lvn =
  build_n_store tag_lvn
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
