(** {3 Localinput_parser_block_print_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_block_print_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol_Subtree for a Block_print ";
   "Remark : Lexeme_rightlist is headed by basic_word_bare_capitalized";
   "Remark : Lexeme_rightlist is headed by keyword_unnamed_statistics";
   "Author : François Colonna 19 février 2017 at 13:33:06+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Inputbox : print Poi_a                                      *)
(* Inputbox :      units [ Uni_len Uni_ang ]                   *)
(* Inputbox :      end -- print                                *)

(* Bnf : <block_print>  ::= (| ( >variable_name< <box_units> ) *)
(* Bnf :                     | statistics                      *)
(* Bnf :                       end                             *)

(* Tree :                         body_block_print                     *)
(* Tree :                  /            |               \              *)    
(* Tree :  fence_variable_name  body_box_units  fence_keyword_word_end *)

                  
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in
  
  let pre_lex_top = 
    Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor
  in
  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list
      pre_lex_top
      nam_mod
      sym_lex_sl 
  in
  let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;
  
  let rec apply acc_stl lex_sl =
    
    let lex_cur = List.hd lex_sl in 

    Localinput_parser_tools_v.debug_what_lexer "lex_cur" nam_mod nam_fun lex_cur;

    match lex_cur with
    | w when  Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor w -> 
(* >variable_name< *)		      
	let (sym_loi_f, lex_rem_sl) = 
	  Localinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide 
	    (bna_ibo, lex_sl)
	in 
	
	apply (sym_loi_f :: acc_stl) lex_rem_sl
	  
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_units_constructor w -> 
(* <box_units> *)

	let (sym_loi_box_st, lex_rem_sl) =
	  Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	    (bna_ibo, lex_sl)
	in
	
	apply (sym_loi_box_st :: acc_stl) lex_rem_sl
	    
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_unnamed_statistics w ->
	
	let sym_loi_sta = Localinput_symbol_v.localinput_set_fence_keyword_word_statistics_constructor nam_var in
	let sym_loi_f = Tree_v.make_of_leaf sym_loi_sta in
	let lex_rem_sl = List.tl lex_sl in
	
	apply (sym_loi_f :: acc_stl) lex_rem_sl
	  
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_blocknamed_end_constructor w ->

	let (sym_loi_end_f, lex_rem_sl) = 
	  Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	    lex_sl
	in
	
	let acc_stl_rev = List.rev (sym_loi_end_f :: acc_stl) in
	let sym_loi_blo = 
	  Localinput_symbol_v.localinput_set_body_block_print_constructor 
	    nam_var 
	in
	
	let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev in
	
	(sym_loi_st, lex_rem_sl)
	  
    | _ ->
	Error_messages_v.print_syntax_error nam_mod nam_fun
	  "Lexeme <variable_name> | \'statistics\' | \'units\' | \'end\' after keyword \'print\'"
	  (Format.sprintf "Lexeme >%s<" (Localinput_lexer_symbol_v.fullname lex_cur))
	  "Check input file. may be \'end\' is missing"
	  
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

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Localinput_parser_block_print_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.ml  on jeudi 2 février 2017, 12:19:26 (UTC+0100) *)
