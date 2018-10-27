(** {3 Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_variable_name_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Input Variable Name it provides the B-SubTree of its Command_creation_define";
   "Author : François Colonna 21 mai 2017 at 11:55:12+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var, bna_ibo) =
  Basicname_v.check_is_basicname_variable_of_basicname bna_var; 
  Basicname_v.check_is_basicname_inputbox_of_basicname bna_ibo; 
  
  let tag_loi_stl = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

  let nam_var = Basicname_v.string_off bna_var in
  try List_v.only_element_of_predicate_off_list
    (fun t ->
      (fun (s, i) -> 
	Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor nam_var = s ) 
	(Tree_v.root_off_tree t) 
    ) 
    tag_loi_stl
  with Failure _ -> 
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Some Subtree Root with String_off >%s< exists" nam_var)
      "it doesn NOT"
      (Format.sprintf "Check Inputbox_file %s.loc" (Basicname_v.string_off bna_ibo))
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
