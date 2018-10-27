(** {3 Localinput_as_set_fence_cell_external_context_tag_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_fence_cell_external_context_tag_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_set_body_handle_command_creation_define_tag_by_variable_name_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Variable_name in some Inputbox it provides its external_context Tag";
   "How-is-it-done : by getting the Command Define Tag Subtree";
   "How-is-it-done : and extracting Leaf Localinput_set_fence_cell_external_context_constructor from it";
   "Invariant : variable_name is a Context variable name";
   "Author : François Colonna 27 mars 2017 at 09:51:40+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var, bna_ibo) =

  let tag_loi_lcd_stl = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_for_entity_external_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in

  let nam_var = Basicname_v.string_off bna_var in
  let tag_loi_lcd_st = List_v.only_element_of_predicate_off_list 
      (fun t -> 
	(fun (s, i) ->
	  Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor nam_var = s)
	  (Tree_v.root_off_tree t)
      )
      tag_loi_lcd_stl
  in

  let tag_loi_lec = Tree_v.only_node_of_node_predicate_off_tree 
      (fun (s, i) ->
	Localinput_symbol_v.is_localinput_set_fence_cell_external_context_constructor s 
      )
      tag_loi_lcd_st 
  in

  let nam_var = Localinput_tag_v.string_off tag_loi_lec in
  let sym_lvk = 
    Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo)
  in
  if Localinput_set_fence_variable_kind_symbol_v.is_localinput_set_fence_variable_kind_context_constructor sym_lvk
  then
    tag_loi_lec
  else
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Variable name >%s< had a context kind" nam_var)
      (Format.sprintf "Kind is %s" (Localinput_set_fence_variable_kind_symbol_v.fullname sym_lvk))
      "Check"
;;

let build_n_store tag_net =
  build tag_net 
;;

(** {6 Providing} *)

let provide_without_trace tag_net =
  build_n_store tag_net
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
