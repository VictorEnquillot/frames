(** {3 Localinput_lexer_handle_command_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_handle_command_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v";
   "Needs: LANLOI:Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v";
   "What-is-it : the Handle (Lexeme list) for a given Handle_command_symbol";
   "Author : François Colonna 04 mars 2017 at 14:18:40+01:00";
 ]
;;

(* Bnf : handle ::= keyword <block> *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build (bna_ibo, sym_lhc) =

  let sym_lex_lhc = (* Coerce Up *) 
    Localinput_lexer_symbol_v.localinput_lexer_symbol_of_localinput_lexer_command_symbol
      sym_lhc
  in

  let sym_lex_lhc_ll =
    Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in

  try
    List_v.only_element_of_predicate_off_list (fun sl -> sym_lex_lhc = List.hd sl) sym_lex_lhc_ll 
  with Failure "No_element:List_v.only_element_of_predicate_off_list" ->
    let sym_lex_hd_l = List.map List.hd sym_lex_lhc_ll in
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Localinput_lexer_symbol %s were hd of one Handle_command" 
	 (Localinput_lexer_symbol_v.fullname sym_lex_lhc) 
      )
      (Format.sprintf "List of Handle_command hd is :@.  %s" 
	 (List_v.name_in_column Localinput_lexer_symbol_v.fullname  sym_lex_hd_l)
      )
      (Format.sprintf "Check Inputfile %s.loc" (Basicname_v.name bna_ibo))
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
