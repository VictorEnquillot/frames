(** {3 Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_inputbox_n_localinput_set_fence_variable_name_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_inputbox_n_localinput_set_fence_variable_name_symbol_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_localinput_set_fence_variable_name_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Input Variable Name it provides the B-SubTree of its Command_creation_define";
   "Author : François Colonna 07 mars 2017 at 08:51:32+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_ibo, sym_lvn) =

  let tag_loi_stl = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      nam_ibo
  in

  let nam_var = Localinput_set_fence_variable_name_symbol_v.string_off sym_lvn in
  
  let pre_tag_lcd_sof sof (s, i) = 
    Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor sof = s 
  in
  let pre_tag_lcd_roo_sof sof t = pre_tag_lcd_sof sof (Tree_v.root_node_off_tree t) in
 
  List_v.only_element_of_predicate_off_list (pre_tag_lcd_roo_sof nam_var) tag_loi_stl
;;

let build_n_store nam_var =
  build nam_var 
;;

(** {6 Providing} *)

let provide_without_trace nam_var =
  build_n_store nam_var
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
