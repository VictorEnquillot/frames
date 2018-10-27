(** {3 Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_for_entity_target_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_for_entity_target_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the B-SubTree list of all Command_creation_define for an Target";
 ]
;;

 
 
 
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_loi_lcd_stl =
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_net (s, i) = Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_target_constructor s in
  let pre_tag_net_nod = Tree_v.has_node_of_node_predicate_off_tree pre_tag_net in

  List.filter pre_tag_net_nod tag_loi_lcd_stl
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_for_entity_target_by_basicname_inputbox_provider_v.ml on vendredi 20 mai 2016, 13:41:06 (UTC+0200) *)
