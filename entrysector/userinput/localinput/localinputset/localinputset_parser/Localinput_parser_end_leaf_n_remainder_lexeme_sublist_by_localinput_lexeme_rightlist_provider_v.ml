(** {3 Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol Leaf Tree for an \"end\" keyword";
   "Author : François Colonna 17 février 2017 at 17:30:06+01:00";
 ]
;;

(* Inputbox :          end -- external -------------------------------------|| *)

(* Inputbox :        end -- define                                             *)

(* Bnf : keyword end *)

(* Tree : fence_cell of name     *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build sym_lex_sl =

  let pre_lex_top = 
    Localinput_lexer_symbol_v.is_localinput_lexer_keyword_blocknamed_end_symbol_off_localinput_lexer_symbol
  in
  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex_top 
      nam_mod 
      sym_lex_sl 
  in
  let sof_lex_top = Localinput_lexer_symbol_v.string_off sym_lex_top in

  let sym_loi_end = 
    Localinput_symbol_v.localinput_set_fence_keyword_word_end_constructor 
      sof_lex_top
  in

  let sym_loi_end_f = Tree_v.make_of_leaf sym_loi_end in
  
  let sym_lex_rem_sl = List.tl sym_lex_sl in
  
  (sym_loi_end_f, sym_lex_rem_sl)
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

