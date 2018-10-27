(** {3 Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given input file it provides the B-Tree list of all Command_creation_define";
   "Author : François Colonna 10 novembre 2016 at 11:56:03+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_loi_lhc_stl =
    Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_lcd (s, i) = Localinput_symbol_v.is_localinput_set_body_handle_command_creation_define_constructor s in

  let pre_tag_lcd_roo t = pre_tag_lcd (Tree_v.root_node_off_tree t) in

  List.filter pre_tag_lcd_roo tag_loi_lhc_stl
;;

let build_n_store bna_ibo =
  build bna_ibo 
;;

(** {6 Providing} *)

let provide_without_trace bna_ibo =
  build_n_store bna_ibo
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
