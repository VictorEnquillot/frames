(** {3 Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v";
   "Needs: LEXLOI:Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v";
   "Needed-by: LEXLOI:Localinput_lexer_handle_command_define_list_by_basicname_inputbox_provider_v";
   "Bnf : <handle_command> ::= define <block>";
   "Bnf : <command_stop> ::= stop";
   "What-is-it : the list of all Command List";
   "Author : François Colonna 04 mars 2017 at 13:32:30+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build bna_ibo =
  let sym_lex_l = 
    Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide
      bna_ibo 
  in

  let pre_lex_com s = 
    Localinput_lexer_symbol_v.is_localinput_lexer_command_symbol_off_localinput_lexer_symbol s
  in

  List_v.burst_left_included_of_predicate_of_list pre_lex_com sym_lex_l
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
