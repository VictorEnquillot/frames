(** {3 Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [                  
   "Current : VARLOI:Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_inputbox_n_localinput_set_fence_variable_name_symbol_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Localinput Handle Command Define of an Inputbox";
   "What-is-it : it provides the LOI:Tag for the ONLY fence_variable_name_entity External ot Target";
   "What-is-it : defined by the Handle";
   "Author : François Colonna 07 mars 2017 at 09:29:14+01:00";
   "Author : François Colonna 17 mai 2017 at 11:37:53+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_ibo, sym_lcd) =
  let nam_fun = "build" in

  let sof_lcd = Localinput_set_body_handle_command_creation_define_symbol_v.string_off sym_lcd in
  let bna_var = Basicname_v.basicname_variable_of_string sof_lcd in

  let tag_loi_lcd_st = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo)
  in

  try Tree_v.only_node_of_node_predicate_off_tree (fun (s, i) -> 
    (Localinput_symbol_v.localinput_set_fence_variable_name_entity_target_constructor sof_lcd = s)
  ||
    (Localinput_symbol_v.localinput_set_fence_variable_name_entity_external_constructor sof_lcd = s)
)	
      tag_loi_lcd_st
      
  with Failure "Not_found:Tree_v.only_node_of_predicate_off_tree" ->
    let tag_loi_lcd_sl = Tree_v.node_list_of_node_predicate_off_tree
	(fun (s, i) -> Localinput_symbol_v.is_localinput_set_fence_variable_name_symbol_off_localinput_symbol s)
	tag_loi_lcd_st
    in
    Error_messages_v.print_fatal_error __LOC__ nam_fun 
      (Format.sprintf "Some Localinput_set_fence_variable_name_entity_target or entity_external were defined in Command_creation Handle Tree (%s)" sof_lcd) 
      (Format.sprintf "fence_variable_name_tag node list :@.      %s"
	 (List_v.name_in_column Localinput_tag_v.fullname tag_loi_lcd_sl))
      "Check"
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Localinput_as_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v.ml  on mardi 7 mars 2017, 13:09:45 (UTC+0100) *)
