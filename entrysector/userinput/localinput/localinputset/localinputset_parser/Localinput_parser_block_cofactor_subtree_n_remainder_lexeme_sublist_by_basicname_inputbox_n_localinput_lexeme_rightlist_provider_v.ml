(** {3 Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_name_n_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_is_cell_keyword_by_localinput_lexer_keyword_named_symbol_provider_v";
   "Needed-by : PARLOI:Localinput_parser_handle_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "What-is-it : the Localinput_symbol_subtree for a Block_cofactor";
   "Definition : a Block_cofactor is a list of Cells";
   "Author : François Colonna 17 février 2017 at 12:10:52+01:00";
   "Improve : Block_cofactor is not defined should be";
   "Improve : keyword_nextstringed (all except end) and keyword_defvarnamed (end)";
   "Improve : should not be any guard ?";
   "Author : François Colonna 16 mai 2017 at 11:07:42+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* ------------------------- handle_cofactor --------------------------------| *)
(* Inputbox :        cofactor                                                | *)
(* ------------------------- block_cofactor --------------------------------|| *)
(* Inputbox :          cofactor_entity Seg_bc                               || *)
(* Inputbox :          end -- cofactor -------------------------------------|| *)
(* ------------------------- handle_cofactor --------------------------------| *)

(* Bnf : <block_operator_cofactor>    ::= <cell_cofactor_entity>  *)
(* Bnf :                                [ <cell_cofactor_basic> ] *)
(* Bnf :                                   end *)

(* Tree :          Localinput_set_body_handle_cofactor                         *)
(* Tree :                      /                     \                         *)
(* Tree : Localinput_set_body_block_cofactor          \                        *)
(* Tree :                          Localinput_set_fence_keyword_word_cofactor  *)
(* Tree :                             /                        \               *)
(* Tree :           Localinput_set_fence_cell_cofactor_entity   \              *)
(* Tree :                    Localinput_set_fence_cell_cofactor_basic          *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build (bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in

  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list
      (fun s -> 
      (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_constructor s)
      ||
      (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor s)
      )
      nam_mod
      sym_lex_sl 
  in
  let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;

  let rec apply acc_stl lex_sl =
    
    let lex_cur = List.hd lex_sl in 
    Localinput_parser_tools_v.debug_what_lexer "lex_cur" nam_mod nam_fun lex_cur;

    match lex_cur with
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_constructor w ->
	Localinput_parser_tools_v.debug_what_lexer "is_cofactor_basic lex_cur" nam_mod nam_fun lex_cur;

	let (sym_loi_cel_f, lex_rem_sl) = 
	  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	    lex_sl
	in
	
	apply (sym_loi_cel_f :: acc_stl) lex_rem_sl
	  
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor w ->
	Localinput_parser_tools_v.debug_what_lexer "is_cofactor_entity lex_cur" nam_mod nam_fun lex_cur;
	
	let (sym_loi_cel_f, lex_rem_sl) = 
	  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	    lex_sl
	in
	
	apply (sym_loi_cel_f :: acc_stl) lex_rem_sl
	  
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_blocknamed_end_constructor w ->
	Localinput_parser_tools_v.debug_what_lexer "is_blocknamed_end lex_cur" nam_mod nam_fun lex_cur;
	
	let (sym_loi_end_f, lex_rem_sl) = 
	  Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	    lex_sl
	in
	
	let acc_stl_rev = List.rev (sym_loi_end_f :: acc_stl) in
	let sym_loi_blo = 
	  Localinput_symbol_v.localinput_set_body_block_cofactor_constructor 
	    nam_var 
	in

	let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev in

	(sym_loi_st, lex_rem_sl)

    | _ ->
	Error_messages_v.print_syntax_error nam_mod nam_fun
	  (Format.sprintf "Lexeme >%s< were in menu" (Localinput_lexer_symbol_v.fullname lex_cur))
	  "it is NOT"
	  "Add it if missing or may be \'end\' is missing"
  in

  apply [] sym_lex_sl

;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

