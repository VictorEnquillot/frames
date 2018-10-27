(** {3 Localinput_parser_list_variable_type_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_list_variable_type_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol subtree for a list of Variable_type";
   "Definition : a list starts with \"[\" and ends with \"]\"";
   "Author : François Colonna 16 février 2017 at 10:50:48+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Inputbox : type [ "figure" "set" "fence" "point" "constructor" ]                   *)

(* Bnf : >variable_type_list< ::= "[" { >variable_type< white_space } "]"             *)

(* Tree :                        body_list_variable_type                              *)
(* Tree :                                 /    |    \                                 *)
(* Tree : fence_variable_name_entity_external ... fence_variable_name_entity_external *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_var, sym_lex_sl) =
  let nam_fun = "build" in

  let pre_lex_top = Localinput_lexer_symbol_v.is_localinput_lexer_token_l_bracket in
  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list 
      pre_lex_top
      nam_mod
      sym_lex_sl 
  in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;

  let rec apply acc_stl lex_sl =

    let lex_cur = List.hd lex_sl in 
    
    match lex_cur with
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_token_l_bracket w -> 

	let lex_rig_sl = List.tl lex_sl in
	apply [] lex_rig_sl

    | w when Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor w -> 
	
	let nam_var = Localinput_lexer_symbol_v.string_off lex_cur in
	let sym_loi_lwl = 
	  Localinput_symbol_v.localinput_set_fence_basic_word_lowercase_constructor 
	    nam_var          
	in
	let sym_loi_f = Tree_v.make_of_leaf sym_loi_lwl in
	
	let lex_rig_sl = List.tl lex_sl in
	apply (sym_loi_f :: acc_stl) lex_rig_sl
	  
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_token_r_bracket w -> 
	
	let sym_loi_lis = 
	  Localinput_symbol_v.localinput_set_body_list_variable_type_constructor 
	    nam_var
	in 
	let acc_stl_rev = List.rev acc_stl in 
	let sym_loi_st = Tree_v.make_of_node sym_loi_lis acc_stl_rev in
	let lex_rig_sl = List.tl lex_sl in

	(sym_loi_st, lex_rig_sl)
	  
    | _ ->
	Error_messages_v.print_syntax_error nam_mod nam_fun
	  "Current Lexeme were one off token_l_bracket | basic_word_doublequoted_lowercase | token_r_bracket"
	  (Format.sprintf "Lexeme >%s<" (Localinput_lexer_symbol_v.fullname lex_cur))
	  "Check input file"

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

