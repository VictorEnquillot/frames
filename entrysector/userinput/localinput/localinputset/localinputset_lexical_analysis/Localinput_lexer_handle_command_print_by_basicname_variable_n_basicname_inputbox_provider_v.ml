(** {3 Localinput_lexer_handle_command_print_by_basicname_variable_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_handle_command_print_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs: LEXLOI:Localinput_lexer_handle_command_print_list_by_basicname_inputbox_provider_v";
   "Bnf : <handle_command_print> ::= print <block_print>";
   "Bnf : <block_print>          ::= | ( >variable_name< <box_units> )";
   "Bnf :                            | statistics";
   "Bnf :                              end";
   "Abbreviation : lcp = localinput_lexer_handle_command_print";
   "Author : François Colonna 18 janvier 2017 at 10:02:46+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build (bna_var, bna_ibo) =
  let sym_lex_lcp_l = 
    Localinput_lexer_handle_command_print_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in

  let nam_var = Basicname_v.string_off bna_var in
  let nam_ibo = Basicname_v.string_off bna_ibo in

  try
    List_v.only_element_of_predicate_off_list
      (fun s -> Localinput_lexer_symbol_v.string_off (List.hd s) = nam_var)
      sym_lex_lcp_l 
  with Failure "No_element:List_v.only_element_of_predicate_off_list" ->
    let nam_var_l = Variable_name_list_by_basicname_inputbox_provider_v.provide bna_ibo in
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Localinput_lexer_variable_name %s exists" nam_var)
      (Format.sprintf "List of variable_name in Inputfile %s is :@.  %s" 
	 nam_ibo (List_v.name_in_column (fun s->s) nam_var_l)
      )
      (Format.sprintf "Check Inputfile %s " nam_ibo)
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
