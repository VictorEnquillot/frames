(** {3 Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v";
   "Needs: LEXLOI:Localinput_lexer_handle_command_define_list_by_basicname_inputbox_provider_v";
   "What-is-it : all (variable_name, variable_kind) Duo in a Handle_define";
   "How-is-it-done : by extracting the second and third (1 and 2) elements of an Handle_define list";
   "Author : François Colonna 29 mars 2017 at 09:46:13+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build bna_ibo =
  let sym_lex_lcd_l = 
    Localinput_lexer_handle_command_define_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in
  
  let sym_lex_def_2l = List.map 
      (List_v.sublist_of_int_of_int_of_list 1 2) 
      sym_lex_lcd_l
  in
  
  List.map Duo_v.duo_of_list sym_lex_def_2l 
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
(* done with do_provider_without_register.sh Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v.ml force on lundi 16 janvier 2017, 17:57:44 (UTC+0100) *)
