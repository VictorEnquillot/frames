(** {3 Localinput_parser_handle_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_handle_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v";
   "Needs : PARLOI:Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needed-by : PARLOI:Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "What-is-it : the Handle_cofactor subtree for an Inputbox_name and an Lexeme_list";
   "Remark : Lexeme_rightlist is headed by  >cofactor<";
   "Author : François Colonna 29 mai 2017 at 16:13:41+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(* ------------------------- handle_cofactor --------------------------------| *)
(* Inputbox :        cofactor                                                | *)
(* ------------------------- block_operator_cofactor -----------------------|| *)
(* Inputbox :          cofactor_entity Seg_bc                               || *)
(* Inputbox :          cofactor_basic Seg_bc                               || *)
(* Inputbox :          end -- cofactor -------------------------------------|| *)
(* ------------------------- handle_cofactor --------------------------------| *)

(* Bnf : <block_operator_cofactor>    ::= <cell_cofactor_entity>  *)
(* Bnf :                                [ <cell_cofactor_basic> ] *)
(* Bnf :                                   end *)

(* Tree :          Localinput_set_body_handle_operator_cofactor                *)
(* Tree :                      /                     \                         *)
(* Tree : Localinput_set_body_block_operator_cofactor \                        *)
(* Tree :                          Localinput_set_fence_keyword_word_cofactor  *)
(* Tree :                             /                        \               *)
(* Tree :           Localinput_set_fence_cell_cofactor_entity   \              *)
(* Tree :                    Localinput_set_fence_cell_cofactor_basic          *)

(** {6 Building} *)
 
let build (bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in

  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_symbol
      nam_mod
      sym_lex_sl 
  in
  let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;

  let sym_lex_rig_sl = List.tl sym_lex_sl in

  let (sym_loi_blo_st, sym_lex_rem_sl) = 
    Localinput_parser_block_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
      (bna_ibo, sym_lex_rig_sl)
  in
  
  let sym_loi_han = 
    Localinput_symbol_v.localinput_set_body_handle_cofactor_constructor 
      nam_var 
  in

  let sym_loi_lwc = 
    Localinput_symbol_v.localinput_set_fence_keyword_word_cofactor_constructor 
      nam_var 
  in

  let sym_loi_f = Tree_v.make_of_leaf sym_loi_lwc in
  
  let sym_loi_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st] in
  (sym_loi_st, sym_lex_rem_sl)
    
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
(* done with do_provider_without_register.sh Localinput_parser_handle_cofactor_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.ml  on jeudi 2 février 2017, 11:49:18 (UTC+0100) *)
