(** {3 Nwchemdata_parser_center_and_shell_name_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARNWCHEM:Nwchemdata_parser_center_and_shell_name_v";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Nwchemdata_symbol Sub Tree for the Center and Shell Names";
   "How-is-it-done : by parsing the Nwchemdata (NWChem) Datafile Database";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let center_and_shell_name_tree_n_string_of_what_of_index_of_nwchemdata_lexer_symbol_stack what idx sym_lex_s =
  let nam_fun = "center_and_shell_name_tree_n_string_of_what_of_index_of_nwchemdata_lexer_symbol_stack" in

(* <center_and_shell_name> ::= <center_name> { <space> } <shell_name_extended_sp> <eol> *)

  Management_v.debug_what_string "what idx " nam_mod nam_fun (String_v.string_of_integer idx);

  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
(* <center_name> *)
  let (sym_nwc_cen_t, nam_cen) =
    match sym_lex_pop with 
    | s when Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s ->
	
	let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_centername_constructor str in
	(Tree_v.make_of_leaf sym_nwc, str)
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
 	  "is_a_center_name"
  in
  
(* <space> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  
(* <shell_name_extended_sp> *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let (sym_nwc_she_t, nam_she) =
    match sym_lex_pop with 
	
      | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_ecp_local s ->

	    let str = "ul" in
	    let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_shellname_extended_constructor str in
	    (Tree_v.make_of_leaf sym_nwc, str)
	      
      | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_shell_name s) ->
	  
	  let str = Nwchemdata_lexer_symbol_v.string_off s in
	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_shellname_usual_constructor str in
	  (Tree_v.make_of_leaf sym_nwc, str)

    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
 	  "Nwchemdata_lexer_keyword_ecp_local | is_a_shell_name"
    in

(* <eol> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

  let nam_csi = Format.sprintf "%s %s %i %s" nam_cen nam_she idx what in 

  Management_v.debug_what_string "what idx " nam_mod nam_fun (String_v.string_of_integer idx);

  let sym_nwc_tl = [sym_nwc_cen_t; sym_nwc_she_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_center_n_shellname_constructor nam_csi in

let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  Management_v.debug_what_string "@.EXITING from " nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_lex_top); 

  (Tree_v.make_of_node sym_nwc sym_nwc_tl, nam_csi)

;;



