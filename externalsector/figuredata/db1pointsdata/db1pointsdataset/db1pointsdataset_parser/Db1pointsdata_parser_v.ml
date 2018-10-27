(** {3 Db1pointsdata_parser_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARDB1:Db1pointsdata_parser_v";
   "Register : None";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Db1pointsdata_symbol Tree or Abstract Syntax Tree";
   "How-is-it-done : by parsing the Frames Db1points Language (FIL)";
   "Abbreviation : dbo = db1pointsdata_context_databox";
   "Author : François Colonna 19 septembre 2016 at 11:24:34+02:00 no more case restriction on databox_name";
   "Author : François Colonna 19 septembre 2016 at 11:24:34+02:00 top of lexeme list is databox_fullnameoffile";
   "Author : François Colonna 19 septembre 2016 at 11:24:34+02:00 top of parser tree is databox_name";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let db1pointsdata_set_body_cluster_subtree_list_of_figure_name_of_db1pointsdata_lexer_symbol_stack nam_fig sym_lex_s =
  let nam_fun = "db1pointsdata_set_body_cluster_subtree_list_of_figure_name_of_db1pointsdata_lexer_symbol_stack" in

  (* <databox_name> ::= <cluster_information> <cluster_vertex> *)

  Management_v.debug_what_string "nam_fig" nam_mod nam_fun nam_fig; 
  Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);

  let rec apply acc_tl lex_s =
    
    let sym_lex_cur = Stack.top lex_s in

    Db1pointsdata_parser_tools_v.debug_what_lexer "recursive top" nam_mod nam_fun sym_lex_cur;

    match sym_lex_cur with 
    | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
	(Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol sym_lkc ) ->

	let sym_db1_dci_st = 
   	  Db1pointsdata_parser_body_cluster_information_v.db1pointsdata_set_body_cluster_information_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack
	    nam_fig
	    lex_s 
	in 
	apply (acc_tl @ [ sym_db1_dci_st ]) lex_s

    | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol
	Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_vertex ->

	let sym_db1_dcv_st = 
	  Db1pointsdata_parser_body_cluster_vertex_v.db1pointsdata_set_body_cluster_vertex_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack 
	    nam_fig 
	    lex_s 
	in 
	apply (acc_tl @ [ sym_db1_dcv_st ]) lex_s

    | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_character_eof w ->  

	acc_tl

    | _ -> 

	Error_messages_v.print_syntax_error __LOC__ nam_fun
	  "Current were Db1pointsdata_lexer_keyword_coordinates | Db1pointsdata_lexer_keyword_vertex |  eof"
	  (Format.sprintf "Current Lexeme is >%s<@." (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cur))
	  "Check db1points file"
  in

  apply [] sym_lex_s
;;

let db1pointsdata_symbol_tree_root_databox_of_basicname_databox bna_dbo =
  let nam_fun = "db1pointsdata_symbol_tree_root_databox_of_basicname_databox" in
  
  let sym_lex_s =
    Db1pointsdata_parser_tools_v.db1pointsdata_lexer_symbol_stack_of_basicname_databox 
      bna_dbo
  in

(* Databox *)  
  let nam_dbo = Basicname_v.string_off bna_dbo in
  let sym_db1_dbo = Db1pointsdata_symbol_v.db1pointsdata_context_databox_constructor nam_dbo in

  let nam_fig = 
    try  
      Db1pointsdata_parser_tools_v.next_name_of_current_predicate_of_db1pointsdata_lexer_symbol_stack
	Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_token_figure_name
	sym_lex_s
    with Failure _ -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Some Db1pointsdata_lexer_symbol were db1pointsdata_lexer_token_figure_name in Stack"
	(Format.sprintf "Current Stack is >%s<@." (Stack_v.name Db1pointsdata_lexer_symbol_v.name sym_lex_s))
	"Check Stack"
  in

  let sym_lex_cur = 
    Stack_v.find_destructive_of_predicate_of_stack 
      Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_symbol
      sym_lex_s
  in
  Stack.push sym_lex_cur sym_lex_s;

  Db1pointsdata_parser_tools_v.debug_what_lexer "find destructive" nam_mod nam_fun sym_lex_cur;

  let sym_db1_dbc_stl = 
    db1pointsdata_set_body_cluster_subtree_list_of_figure_name_of_db1pointsdata_lexer_symbol_stack
      nam_fig
      sym_lex_s
  in

  let sym_db1_t = Tree_v.make_of_node sym_db1_dbo sym_db1_dbc_stl in
  Db1pointsdata_parser_tools_v.check_invariants_of_basicname_databox_of_db1pointsdata_symbol_tree bna_dbo sym_db1_t;
  sym_db1_t
;;
