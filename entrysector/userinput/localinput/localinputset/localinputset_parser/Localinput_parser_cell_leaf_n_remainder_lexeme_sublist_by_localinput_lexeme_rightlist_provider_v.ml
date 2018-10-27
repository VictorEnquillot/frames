(** {3 Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol Leaf for a Cell";
   "Definition : a Cell has two elements a Keyword and a Word";
   "Author : François Colonna 15 février 2017 at 15:23:11+01:00";
 ]
;;

(* Inputbox : external_name "T_A"        *)
(* Inputbox : external_context Con_db1   *)

(* Bnf : cell ::= keyword "name" *)
(* Bnf : cell ::= keyword "Name" *)
(* Bnf : cell ::= keyword Name   *)

(* Tree : fence_cell of name     *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build sym_lex_sl =
  let nam_fun = "build" in

  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      Localinput_lexer_symbol_v.is_localinput_lexer_keyword_symbol_off_localinput_lexer_symbol
      nam_mod 
      sym_lex_sl 
  in

  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;

  let sym_lex_rig_sl = List.tl sym_lex_sl in

  let sym_lex_wor = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      Localinput_lexer_symbol_v.is_localinput_lexer_basic_symbol_off_localinput_lexer_symbol
      nam_mod 
      sym_lex_rig_sl 
  in

  Localinput_parser_tools_v.debug_what_lexer "sym_lex_wor" nam_mod nam_fun sym_lex_wor;

  let sym_loi_cel_f = 
    Localinput_parser_cell_leaf_by_localinput_lexeme_cell_doublet_provider_v.provide
      (sym_lex_top, sym_lex_wor)
  in 

  let sym_lex_rem_sl = List.tl sym_lex_rig_sl in

  (sym_loi_cel_f, sym_lex_rem_sl)
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

