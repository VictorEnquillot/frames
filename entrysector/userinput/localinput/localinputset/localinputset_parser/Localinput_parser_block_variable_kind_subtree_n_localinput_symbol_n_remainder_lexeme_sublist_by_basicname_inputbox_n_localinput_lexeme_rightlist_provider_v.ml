(** {3 Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_name_n_rightlist_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol_subtree for a Block_variable_kind";
   "Definition : a Block_variable_kind is a list of Cells";
   "Author : François Colonna 17 février 2017 at 12:10:52+01:00";
   "Improve : Block_variable_kind is not defined should be";
   "Improve : keyword_nextstringed (all except end) and keyword_defvarnamed (end)";
   "Improve : should not be any guard";
   "Author : François Colonna 22 mars 2017 at 10:56:40+01:00";
   "Author : François Colonna 20 mai 2017 at 15:37:34+02:00 corrected accumulator";
   "Author : François Colonna 29 mai 2017 at 11:42:38+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* define Hom_b_2 *)
(* ------------------------- handle_variable_kind --------------------------------------| *)
(*        operator                                                                      | *)
(* ------------------------- block_variable_kind --------------------------------------|| *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] || *)
(*          operation "homothety"                                                    || *)
(*          ondomain "figure"                                                          || *)
(* ------------------------- handle_cofactor -----------------------------------------||[ *)
(*          cofactor                                                                  ||| *)
(* ------------------------- block_operator_cofactor --------------------------------|||| *)
(*            cofactor_entity Cen_b -------------------------------------------------|||| *)
(*            cofactor_basic 2.0 ----------------------------------------------------|||| *)
(*            end -- cofactor    *)
(*          end -- operator ---------------------------------------------------------*)
(* ------------------------- handle_variable_kind ---------------------------| *)
(*        end -- define *)

(* Bnf : <block_variable_context> ::= <cell_domain> *)
(* Bnf :                              <cell_database> *)
(* Bnf :                              <cell_databox> *)
(* Bnf :                            [ <cell_sector> ] *)
(* Bnf :                              end *)

(* Bnf : <block_variable_external> ::= <box_type>                              *)
(* Bnf :                               <cell_entity_external_name>             *)
(* Bnf :                               <cell_external_context>                 *)
(* Bnf :                             [ <cell_category> ]                       *)
(* Bnf :                               end                                     *)

(* Bnf : <block_variable_operator>  ::= <box_type>                             *)
(* Bnf :                                <cell_operation>                       *)
(* Bnf :                                <cell_ondomain>                        *)
(* Bnf :                              [ <handle_cofactor> ]                    *)
(* Bnf :                                end                                    *)


(* Tree :                         body_block_variable_context                                            *)
(* Tree :                         body_block_variable_external                                           *)
(* Tree :           /              |                        |                          \                 *)
(* Tree :  body_box_type fence_cell_external_name fence_cell_external_context ... fence_keyword_word_end *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build (sym_loi_blo, bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in

  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      (fun s -> 
	(Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_symbol s)
      ||
	(Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_symbol s)
      ||
	(Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor s) 
      ||
	(Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor s) 
      )
      nam_mod
      sym_lex_sl 
  in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;  

  let rec apply acc_stl lex_sl =
    
    let lex_cur = List.hd lex_sl in 
    match lex_cur with
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_symbol_off_localinput_lexer_symbol w ->
	Localinput_parser_tools_v.debug_what_lexer "is_nextstringed lex_cur" nam_mod nam_fun lex_cur;

	let (sym_loi_cel_f, lex_rem_sl) = 
	  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	    lex_sl
	in
	
	apply (sym_loi_cel_f :: acc_stl) lex_rem_sl

    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_symbol_off_localinput_lexer_symbol w ->
	Localinput_parser_tools_v.debug_what_lexer "is_nextvarnamed lex_cur" nam_mod nam_fun lex_cur;
	

	let (sym_loi_cel_f, lex_rem_sl) = 
	  Localinput_parser_cell_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	    lex_sl
	in
	
	apply (sym_loi_cel_f :: acc_stl) lex_rem_sl
	     
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor w -> 
	Localinput_parser_tools_v.debug_what_lexer "is_defvarnamed_type lex_cur" nam_mod nam_fun lex_cur;

	let (sym_loi_box_st, lex_rem_sl) =
	  Localinput_parser_box_type_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	    (bna_ibo, lex_sl)
	in
	
	apply (sym_loi_box_st :: acc_stl) lex_rem_sl

    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor w -> 
	Localinput_parser_tools_v.debug_what_lexer "is_defvarnamed_cofactor lex_cur" nam_mod nam_fun lex_cur;

	let (sym_loi_han_st, lex_rem_sl) =
	  Localinput_parser_handle_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	    (bna_ibo, lex_sl)
	in
	
	apply (sym_loi_han_st :: acc_stl) lex_rem_sl

    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_blocknamed_end_constructor w ->
	Localinput_parser_tools_v.debug_what_lexer "is_blocknamed_type lex_cur" nam_mod nam_fun lex_cur;

	let (sym_loi_end_f, lex_rem_sl) = 
	  Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	    lex_sl
	in

	let acc_stl_rev = List.rev (sym_loi_end_f :: acc_stl) in

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

