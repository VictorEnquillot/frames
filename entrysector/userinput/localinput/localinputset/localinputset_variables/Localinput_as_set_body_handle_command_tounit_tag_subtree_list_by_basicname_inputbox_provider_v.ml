(** {3 Localinput_as_set_body_handle_command_tounit_tag_subtree_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_tounit_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given inputbox file it provides the B-Tree list of all Command_tounit";
 ]
;;

 
 
 
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let tag_loi_lhc_stl =
    Localinput_as_set_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in  

  let pre_tag_hcu (s, i) = Localinput_symbol_v.is_localinput_set_body_handle_command_tounit_symbol_off_localinput_symbol s in
  let pre_tag_hcu_roo t = pre_tag_hcu (Tree_v.root_node_off_tree t) in

  List.filter pre_tag_hcu_roo tag_loi_lhc_stl
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Localinput_as_set_body_handle_command_tounit_tag_subtree_list_by_basicname_inputbox_provider_v.ml on vendredi 20 mai 2016, 13:41:07 (UTC+0200) *)
