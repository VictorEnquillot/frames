(** {3 Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v";
   "Needs : PARLOI:Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needed-by : ";
   "What-is-it : the Handle_variable_kind subtree for an Inputbox_name and an Lexeme_list";
   "Remark : Lexeme_rightlist is headed by  >variable_kind<";
   "Improve : merge Block and Handle into Block := Keyword ... end";
   "Author : François Colonna 30 mai 2017 at 15:17:10+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(* Inputbox : define Poi_a                                                     *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        external                                                | *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(* Inputbox :          type [ "figure" "set" "fence" "point" "constructor" ]|| *)
(* Inputbox :          external_name "T_A"                                  || *)
(* Inputbox :          external_context Con_db1                             || *)
(* Inputbox :          end -- external -------------------------------------|| *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(* Inputbox :        end -- define                                             *)

(* define Tra_bc *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(*        operator  *)
(* ------------------------- block_variable_kind ---------------------------|| *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(* 	    cofactor  *)
(* 	      cofactor_entity Seg_bc *)
(* 	      end -- cofactor	 *)
(*          end -- operator *)
(* ------------------------- handle_variable_kind ---------------------------| *)
(*        end -- define *)

(* Bnf : <handle_variable_kind>  ::= >variable_kind< <block_variable_kind> *)

(* Bnf : <handle_variable_kind>  ::= | context <block_variable_context>    *)
(* Bnf :                             | external <block_variable_external>  *)
(* Bnf :                             | operator <block_variable_operator>  *)
(* Bnf :                             | target <bloack_variable_target>     *)

(* Bnf : <block_variable_kind>   ::= | <block_variable_context> *)
(* Bnf :                             | <block_variable_external> *)
(* Bnf :                             | <block_variable_operator> *)
(* Bnf :                             | <block_variable_target> *)
 
(* Bnf : <block_variable_context>  ::= <cell_domain> *)
(* Bnf :                               <cell_database> *)
(* Bnf :                             [ <cell_databox> ] *)
(* Bnf :                             [ <cell_createdby> ] *)
(* Bnf :                               end *)

(* Bnf : <block_variable_external> ::= <box_type> *)
(* Bnf :                               <cell_entity_external_name> *)
(* Bnf :                               <cell_external_context> *)
(* Bnf :                             [ <cell_category> ] *)
(* Bnf :                               end *)

(* Tree :               body_handle_variable_kind                          *)
(* Tree :                 /                   \                            *)
(* Tree :  fence_variable_kind       body_block_variable                   *)

(** {6 Building} *)
 
let build (bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in
  
  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
    Localinput_lexer_symbol_v.is_localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol 
      nam_mod
      sym_lex_sl 
  in
  let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;  

  let sym_lvk = (* coerce down *) 
    Localinput_lexer_symbol_v.localinput_lexer_variable_kind_symbol_off_localinput_lexer_symbol
      sym_lex_top
  in
  
  let sym_lex_rig_sl = List.tl sym_lex_sl in

  match sym_lvk with
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context_symbol (* Context *)
      (Localinput_lexer_variable_kind_context_symbol_t.Localinput_lexer_variable_kind_context_constructor _ ) ->

      let sym_loi_lvk = 
	Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide 
	  sym_lvk 
      in
      let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvk in

      let sym_loi_han = 
	Localinput_symbol_v.localinput_set_body_handle_variable_context_constructor 
	  nam_var 
      in

      let sym_loi_blo = 
	Localinput_symbol_v.localinput_set_body_block_variable_context_constructor 
	  nam_var 
      in

      let (sym_loi_blo_st, sym_lex_rem_sl) = 
	Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	  (sym_loi_blo, bna_ibo, sym_lex_rig_sl)
      in

      let sym_loi_han_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st] in

      (sym_loi_han_st, sym_lex_rem_sl)
	
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external_symbol (* external *)
      (Localinput_lexer_variable_kind_external_symbol_t.Localinput_lexer_variable_kind_external_constructor _ ) ->
      
      let sym_loi_lvk = 
	Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide 
	  sym_lvk 
      in
      let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvk in

      let sym_loi_han = 
	Localinput_symbol_v.localinput_set_body_handle_variable_external_constructor 
	  nam_var 
      in

      let sym_loi_blo = 
	Localinput_symbol_v.localinput_set_body_block_variable_external_constructor 
	  nam_var 
      in

      let (sym_loi_blo_st, sym_lex_rem_sl) = 
	Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	  (sym_loi_blo, bna_ibo, sym_lex_rig_sl)
      in

      let sym_loi_han_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st] in

      (sym_loi_han_st, sym_lex_rem_sl)
 	
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_operator_symbol (* Operator *)
      (Localinput_lexer_variable_kind_operator_symbol_t.Localinput_lexer_variable_kind_operator_constructor _ ) ->
      
     let sym_loi_lvk = 
	Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide 
	 sym_lvk 
      in
      let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvk in

      let sym_loi_han = 
	Localinput_symbol_v.localinput_set_body_handle_variable_operator_constructor 
	  nam_var 
      in

      let sym_loi_blo = 
	Localinput_symbol_v.localinput_set_body_block_variable_operator_constructor 
	  nam_var 
      in

      let (sym_loi_blo_st, sym_lex_rem_sl) = 
	Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	  (sym_loi_blo, bna_ibo, sym_lex_rig_sl)
      in

      let sym_loi_han_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st] in

      (sym_loi_han_st, sym_lex_rem_sl)
 	
  | Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_target_symbol  (* Target *)
      (Localinput_lexer_variable_kind_target_symbol_t.Localinput_lexer_variable_kind_target_constructor _ ) ->
	
     let sym_loi_lvk = 
	Localinput_as_set_fence_variable_kind_symbol_by_localinput_lexer_variable_kind_symbol_provider_v.provide 
	 sym_lvk 
      in
      let sym_loi_f = Tree_v.make_of_leaf sym_loi_lvk in

      let sym_loi_han = 
	Localinput_symbol_v.localinput_set_body_handle_variable_target_constructor 
	  nam_var 
      in

      let sym_loi_blo = 
	Localinput_symbol_v.localinput_set_body_block_variable_target_constructor 
	  nam_var 
      in

      let (sym_loi_blo_st, sym_lex_rem_sl) = 
	Localinput_parser_block_variable_kind_subtree_n_localinput_symbol_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	  (sym_loi_blo, bna_ibo, sym_lex_rig_sl)
      in

      let sym_loi_han_st = Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st] in

      (sym_loi_han_st, sym_lex_rem_sl)
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
(* done with do_provider_without_register.sh Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.ml  on jeudi 2 février 2017, 11:49:18 (UTC+0100) *)
