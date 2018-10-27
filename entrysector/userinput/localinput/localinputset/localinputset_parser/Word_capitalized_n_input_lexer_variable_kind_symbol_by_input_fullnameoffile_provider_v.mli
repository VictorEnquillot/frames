(** {3 Word_capitalized_n_input_lexer_variable_kind_symbol_by_input_fullnameoffile_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARINP:Word_capitalized_n_input_lexer_variable_kind_symbol_by_input_fullnameoffile_provider_v";
   "What-is-it : it provides the Doublet (word_capitalized, variable_kind) ";
 ]
;;

(** {6 Preparing.} *)

let input_lexer_symbol_duo_of_input_fullnameoffile fno_inp =
  let sym_lex_l = 
    Input_lexer_lexical_analysis_v.input_lexer_symbol_list_of_input_fullnameoffile 
      fno_inp 
  in

  let pre_lex_def = Input_lexer_symbol_v.is_input_lexer_command_define in

  let sym_lex_def_ll = List_v.burst_left_included_of_predicate_of_list pre_lex_def sym_lex_l in

  let sym_lex_def_2l = List.map 
      (List_v.sublist_excluded_of_predicate_of_length_of_list pre_lex_def 2) 
      sym_lex_def_ll 
  in
  List.map Duo_v.duo_of_list sym_lex_def_2l 
;;

let word_capitalized_n_input_lexer_variable_kind_symbol_of_input_lexer_symbol_duo sym_lex_d =

  let wor_cap = Input_lexer_symbol_v.string (Duo_v.left_off_duo sym_lex_d) in
  let sym_lvk = 
    Input_lexer_symbol_v.input_lexer_variable_kind_symbol_off_input_lexer_symbol 
      (Duo_v.right_off_duo sym_lex_d)
  in
  Doublet_v.make wor_cap sym_lvk
;;
 

(** {6 Building.} *)

let build fno_inp =
  let sym_lex_def_dl = input_lexer_symbol_duo_of_input_fullnameoffile fno_inp in
  
  List.map 
    word_capitalized_n_input_lexer_variable_kind_symbol_of_input_lexer_symbol_duo
    sym_lex_def_dl 
;;


let build_n_store fno_inp =
  build fno_inp
;;

(** {6 Providing.} *)

let provide_without_trace fno_inp =
  build_n_store fno_inp
;;

let provide_with_trace fno_inp =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace fno_inp in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide fno_inp =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace fno_inp
  else provide_without_trace fno_inp
;;

