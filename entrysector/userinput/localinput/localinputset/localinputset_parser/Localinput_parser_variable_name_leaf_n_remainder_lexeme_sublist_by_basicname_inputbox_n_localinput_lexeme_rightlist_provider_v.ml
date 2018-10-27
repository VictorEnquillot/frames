(** {3 Localinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : DLOI:Localinput_lexer_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needs : DLOI:Localinput_set_fence_variable_name_symbol_by_localinput_lexer_variable_kind_symbol_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol_leaf for a variable_name";
   "Author : François Colonna 01 février 2017 at 15:03:36+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in

  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list
      Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor 
      nam_mod
      sym_lex_sl 
  in
  let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top in
  let bna_var = Basicname_v.basicname_variable_of_string nam_var in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;

  let sym_lex_lvk = 
    Localinput_lexer_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
      (bna_var, bna_ibo) 
  in

  let sym_lvn = 
    Localinput_set_fence_variable_name_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide
      sym_lex_lvk 
  in
  
  let sym_loi_lvn =  (* Coerce Down *)
    Localinput_symbol_v.localinput_symbol_of_localinput_set_fence_variable_name_symbol
      sym_lvn
  in

  let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvn in

  let sym_lex_rem_sl = List.tl sym_lex_sl in
  
  (sym_loi_f, sym_lex_rem_sl)
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
(* done with do_provider_without_register.sh Localinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.ml  on mercredi 1 février 2017, 15:03:15 (UTC+0100) *)
