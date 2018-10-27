(** {3 Variable_name_list_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Variable_name_list_by_basicname_inputbox_provider_v";
   "Needs : LEXLOI:Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v";
   "What-is-it : for an Input File it provides the list of all Variable_name defined";
   "Example : (\"Con_nwc\"";
   "Abbreviation : lex_lwc = localinput_lexer_basic_word_bare_capitalized";
   "Abbreviation : lex_lvk = localinput_lexer_variable_kind";
   "Author : François Colonna 28 mars 2017 at 11:17:59+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let sym_lex_lwc_n_lvk_l = 
    Localinput_lexer_as_basic_word_capitalized_symbol_n_localinput_lexer_as_variable_kind_symbol_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo
  in

  let sym_lex_lwc_l = Duo_list_v.left_list_off_duo_list sym_lex_lwc_n_lvk_l in
  List.map Localinput_lexer_symbol_v.string_off sym_lex_lwc_l 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh on lundi 25 avril 2016, 07:09:05 (UTC+0200) *)
