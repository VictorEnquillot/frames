(** {3 Localinput_lexer_handle_command_define_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_handle_command_define_list_by_basicname_inputbox_provider_v";
   "Needs: LEXLOI:Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v";
   "Bnf : <handle_command_define> ::= define <block_define>";
   "Author : François Colonna 29 mars 2017 at 09:48:51+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build bna_ibo =
  let sym_lex_com_l = 
    Localinput_lexer_handle_command_list_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in

  List.filter 
      (fun l -> Localinput_lexer_symbol_v.is_localinput_lexer_command_define_constructor (List.hd l))
      sym_lex_com_l 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
