(** {3 Nwchemdata_parser_aoset_numerical_values_block_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARNWCHEM:Nwchemdata_parser_aoset_numerical_values_block_v";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Nwchemdata_symbol Sub Tree for the aoset_numerical_values_block";
   "How-is-it-done : by parsing the Nwchemdata (NWChem) Datafile Database";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let aoset_numerical_values_tree_of_center_n_shell_name_n_index_n_index_of_nwchemdata_lexer_symbol_stack nam_csi sym_lex_s =
  let nam_fun = "aoset_numerical_values_tree_of_center_n_shell_name_n_index_n_index_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_numerical_values> ::= <space> positive_float <spaced_float> [ <spaced_float> ] <spaced_eol> *)
(*  12100.0000000              0.0012000                          *)
(*      2.8090000             -1.2021556              1.1608481   *)

(* <space> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
(* positive_float *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  let sym_nwc_pfl_t = 
    Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_positive_nonnegative_float nam_mod nam_fun sym_lex_pop 
  in

  let sym_nwc_sfl_t = (* <spaced_float> *)
    Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_for_spaced_float_of_nwchemdata_lexer_symbol_stack sym_lex_s
  in

  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in   

  let sym_nwc_tl = 
    match sym_lex_top with
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line s) 
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_spaced_end_of_line s )->
	Nwchemdata_parser_tools_v.skip_pop nam_mod nam_fun sym_lex_s;
	[sym_nwc_pfl_t; sym_nwc_sfl_t] 
	  
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_many_space s ->

	let sym_nwc_nex_t =  (* <spaced_float> *)
	  Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_for_spaced_float_of_nwchemdata_lexer_symbol_stack sym_lex_s 
	in
	Nwchemdata_parser_tools_v.skip_pop nam_mod nam_fun sym_lex_s; (* eol *)
	[sym_nwc_pfl_t; sym_nwc_sfl_t; sym_nwc_nex_t]

    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_character_mark_end_of_line | Nwchemdata_lexer_variable_many_space"
  in
  
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_constructor nam_csi in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
;;



let aoset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack nam_cii sym_lex_s =
  let nam_fun = "aoset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_numerical_values_block> ::= { <aoset_numerical_values> } *)
(* [ center_name shell_name index] *)

  let rec apply idx_row acc_tl cur_lex_s =
    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in
    
    match sym_lex_top with
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_many_space s) ->

	let idx_row = idx_row + 1 in
	let nam_cii = Format.sprintf "%s %i" nam_cii idx_row in
	let sym_nwc_ = 
	  aoset_numerical_values_tree_of_center_n_shell_name_n_index_n_index_of_nwchemdata_lexer_symbol_stack 
	    nam_cii 
	    sym_lex_s 
	in
	apply idx_row (sym_nwc_ :: acc_tl) cur_lex_s

(* END { <space> } <eol> *)
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end s )
    || (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
	acc_tl

(* #BASIS *)	  
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis s ->
	acc_tl

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic | Nwchemdata_lexer_variable_many_space | Nwchemdata_lexer_keyword_end"

  in

  let sym_nwc_tl = List.rev (apply 0 [] sym_lex_s) in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_block_constructor nam_cii in
  Tree_v.make_of_node sym_nwc sym_nwc_tl

;;

