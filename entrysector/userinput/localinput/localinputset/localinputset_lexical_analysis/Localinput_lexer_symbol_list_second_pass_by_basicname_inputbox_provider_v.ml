(** {3 Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v";
   "Needs : LANLOILOI:Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "Author : François Colonna 26 février 2017 at 11:32:45+01:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build bna_ibo =
  
  let sym_lex_1_l = 
    Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in
  
  let sym_lex_nsv_l = 
    Localinput_lexer_lexical_analysis_tools_second_pass_v.localinput_lexer_symbol_list_complete_nextstring_nextvarnamed_of_lexeme_list 
      sym_lex_1_l 
  in
  
  let sym_lex_dvn_l = 
    Localinput_lexer_lexical_analysis_tools_second_pass_v.localinput_lexer_symbol_list_complete_defvarnamed_of_lexeme_list
      sym_lex_nsv_l 
  in

  let sym_lex_bna_l = 
    Localinput_lexer_lexical_analysis_tools_second_pass_v.localinput_lexer_symbol_list_complete_blocknamed_of_lexeme_list 
      sym_lex_dvn_l 
  in

  Localinput_lexer_lexical_analysis_tools_second_pass_v.check_for_empty_string_off sym_lex_bna_l;
  sym_lex_bna_l;
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
(* done with do_provider_without_register.sh Localinput_lexer_symbol_list_second_pass_by_basicname_inputbox_provider_v.ml  on jeudi 23 février 2017, 11:14:05 (UTC+0100) *)
