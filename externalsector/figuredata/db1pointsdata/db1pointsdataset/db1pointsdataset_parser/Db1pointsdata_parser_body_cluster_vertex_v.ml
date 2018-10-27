(** {3 Db1pointsdata_parser_body_cluster_vertex_v} *)

(** {6 Documenting} *)

let documentation () =
  [
   "Current : PARDB1:Db1pointsdata_parser_body_cluster_vertex_v";
   "Author : François Colonna 21 septembre 2016 at 09:36:46+02:00";
 ]
;;

(* <cluster_vertex>   ::= {  <record_vertex> }                    *)
(* <record_vertex>    ::= vertex >name_vertex< <float_sequence>   *)
(* >name_vertex<      ::= >figure_name< underscore word_uppercase *)

let nam_mod = Management_v.current_module_name (documentation ());;

let db1pointsdata_set_body_sequence_float_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack nam_ver sym_lex_s =
  let nam_fun = "db1pointsdata_set_body_sequence_float_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack" in

  (* <float_sequence> ::= { float } eol *)

  Management_v.debug_what_string "nam_ver" nam_mod nam_fun nam_ver; 
  Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);
    
  let rec apply acc_tl lex_s =
      
    let sym_lex_cur = Stack.pop lex_s in  
    Db1pointsdata_parser_tools_v.debug_what_lexer "recursive pop" nam_mod nam_fun sym_lex_cur;
    
    match sym_lex_cur with
    | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_basic_float_constructor w ->

	let str_flo = Db1pointsdata_lexer_symbol_v.string_off sym_lex_cur in
	     
	let sym_db1_dbf =
	  Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_numerical_float_constructor
	    str_flo
	in
	let sym_db1_dbf_f = Tree_v.make_of_leaf sym_db1_dbf in
	
	apply (acc_tl @ [sym_db1_dbf_f]) lex_s
	  
    | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_character_eol w ->
	
	acc_tl
	  
    | _ ->
	Error_messages_v.print_syntax_error nam_mod nam_fun
	  "basic_float | eol "
	  (Format.sprintf "Lexeme >%s<" (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cur))
	  "Check db1points file"
  in
  
  let sym_db1_dbf_fl = apply [] sym_lex_s in
  
  let sym_db1_dsf =
    Db1pointsdata_symbol_v.db1pointsdata_set_body_sequence_float_constructor nam_ver
  in
  
  Tree_v.make_of_node sym_db1_dsf sym_db1_dbf_fl
;;

let db1pointsdata_set_body_record_vertex_subtree_of_db1pointsdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "db1pointsdata_set_body_record_vertex_subtree_of_db1pointsdata_lexer_symbol_stack" in

  (* <record_vertex>  ::= vertex >name_vertex< <float_sequence>  *)
  (* <float_sequence> ::= float float float                      *)

  Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);

  let rec apply acc_tl lex_s =
      
    let sym_lex_cur = Stack.pop lex_s in  
    Db1pointsdata_parser_tools_v.debug_what_lexer "recursive pop" nam_mod nam_fun sym_lex_cur;

    match sym_lex_cur with
    | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_vertex w ->

	apply acc_tl lex_s (* Skip to get name from next lexeme *)

    | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_basic_word_uppercase_constructor sym_lex_cur ->

	let nam_ver = Db1pointsdata_lexer_symbol_v.string_off sym_lex_cur in

	let sym_db1_fkv = Db1pointsdata_symbol_v.db1pointsdata_set_fence_keyword_vertex_constructor nam_ver in
	let sym_db1_fkv_f = Tree_v.make_of_leaf sym_db1_fkv in
	
	let sym_db1_bnv =
	  Db1pointsdata_symbol_v.db1pointsdata_set_body_name_vertex_constructor
	    nam_ver
	in
	let sym_db1_bnv_f = Tree_v.make_of_leaf sym_db1_bnv in
	    
	let sym_db1_hea_stl = (acc_tl @ [sym_db1_fkv_f; sym_db1_bnv_f]) in
	    
	let sym_db1_dsf_st =
	  db1pointsdata_set_body_sequence_float_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack 
	    nam_ver
	    lex_s 
	in
	
	let sym_db1_stl = (sym_db1_hea_stl @ [sym_db1_dsf_st]) in
	  
	let sym_db1_brv =
	  Db1pointsdata_symbol_v.db1pointsdata_set_body_record_vertex_constructor nam_ver
	in
	
	[Tree_v.make_of_node sym_db1_brv sym_db1_stl]

    | _ ->
	Error_messages_v.print_syntax_error nam_mod nam_fun
	  "Db1points Lexeme were vertex | word_uppercase | basic_float"
	  (Format.sprintf "Db1points Lexeme >%s<" (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cur))
	  "Check db1points file"
	  
  in

  List.hd (apply [] sym_lex_s)  (* Improve how to transmit nam_ver from inside recursion ? *)
  
;;

let db1pointsdata_set_body_cluster_vertex_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack nam_fig sym_lex_s = 
  let nam_fun = "db1pointsdata_set_body_cluster_vertex_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack" in
  
  (* <cluster_vertex>   ::= { <record_vertex> }  *)

  Management_v.debug_what_string "nam_fig" nam_mod nam_fun nam_fig; 
  Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);
  
  let rec apply acc_tl lex_s =
    
    let sym_lex_cur = Stack.top lex_s in  
    Db1pointsdata_parser_tools_v.debug_what_lexer "recursive top" nam_mod nam_fun sym_lex_cur;
    
    match sym_lex_cur with
    | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_character_eof w ->

	Stack.push sym_lex_cur lex_s;
	acc_tl 
 
    | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_vertex w ->

	let sym_db1_brv_st =
	  db1pointsdata_set_body_record_vertex_subtree_of_db1pointsdata_lexer_symbol_stack
	    lex_s 
	in
	
	apply (acc_tl @ [sym_db1_brv_st]) lex_s

      | _ ->
	  Error_messages_v.print_syntax_error nam_mod nam_fun
	    "Db1pointsdata_lexer Keyword were vertex"
	    (Format.sprintf "Lexeme >%s<" (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cur))
	    "Check db1points file"
    in
    
    let sym_db1_dcv_stl = apply [] sym_lex_s in
    let sym_db1_dcv = 
      Db1pointsdata_symbol_v.db1pointsdata_set_body_cluster_vertex_constructor nam_fig
    in
      
    Tree_v.make sym_db1_dcv sym_db1_dcv_stl
;;
