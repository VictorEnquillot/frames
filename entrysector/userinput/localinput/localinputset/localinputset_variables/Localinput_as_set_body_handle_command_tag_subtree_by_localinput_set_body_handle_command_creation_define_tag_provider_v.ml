(** {3 Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v";
   "Register : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_localinput_set_body_handle_command_creation_define_tag_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Input Command Define Tag it provides its Handle Tag Subtree";
   "Author : François Colonna 20 mai 2017 at 10:20:58+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lcd =
  let tag_loi_lcd = Tag_v.map_entity 
      Localinput_symbol_v.localinput_symbol_of_localinput_set_body_handle_command_creation_define_symbol
      tag_lcd
  in

  let soi_loi_lcd = Tag_v.sole_index_off_tag tag_loi_lcd in
  let nam_ibo =
    Localinput_any_category_by_sole_index_extractor_v.localinput_context_inputbox_string_off_off_sole_index
      soi_loi_lcd
  in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in

  let tag_loi_lcd_stl = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

  let sof_lcd = Localinput_set_body_handle_command_creation_define_tag_v.string_off tag_lcd in
  List_v.only_element_of_predicate_off_list 
    (fun t -> (Localinput_tag_v.string_off (Tree_v.root_off_tree t) = sof_lcd ))
    tag_loi_lcd_stl
;;

let build_n_store tag_lcd =
  build tag_lcd 
;;

(** {6 Providing} *)

let provide_without_trace tag_lcd =
  build_n_store tag_lcd
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
