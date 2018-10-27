(** {3 Nwchemdata_parser_comment_block_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARNWC:Nwchemdata_parser_comment_block_v";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Nwchemdata_symbol Sub Tree for the Comment block";
   "How-is-it-done : by parsing the Nwchemdata (NWChem) Datafile Database";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let comment_reference_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s =
  let nam_fun = "comment_reference_block_tree_of_string_of_nwchemdata_lexer_symbol_stack" in

(* <comment_reference_block>   ::=  {<comment_reference>} *)

(* now <comment_reference>         ::=  hash_line_reference *)
(* To be done <comment_reference>         ::=  <hash> <space> <comment_element_line> <colon> <space> <comment_author_name_list> <space> <comment_journal_reference> <dot> <eol> *)

  let rec apply acc_tl cur_lex_s =
    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in
    
    match sym_lex_top with
(* eol *)
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line s ->

	(Nwchemdata_parser_tools_v.skip_pop nam_mod nam_fun cur_lex_s);
	apply (acc_tl) cur_lex_s
		     
(* "# H  - Ne: T. H. Dunning Jr. and P. J. Hay, in ..." *)
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_hashline_reference s ->

        let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_comment_reference_constructor str in	  
	let sym_nwc_ = Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc cur_lex_s in
	apply (sym_nwc_ :: acc_tl) cur_lex_s
	   
(* end of recursion *)
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_hashline_empty s ->

	  (Nwchemdata_parser_tools_v.skip_pop nam_mod nam_fun cur_lex_s);
	  acc_tl

    | _ ->
 	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_hashline_reference | Nwchemdata_lexer_hashline_empty | end_of_line"
  in
  
  let sym_nwc_tl = List.rev (apply [] sym_lex_s) in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_comment_reference_block_constructor nam_blo in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;


let comment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s =
  let nam_fun = "comment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack" in

(* <comment_block> ::= <comment_header> <spaced_eol> <comment_dashed_line> <spaced_eol> <comment_reference_block> <spaced_eol> <hash_alone> *)


(* <comment_header> *) 
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_che_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_hashline_reference s ->

	let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_comment_header_constructor str in	  
	Tree_v.make_of_leaf sym_nwc

    | _ ->
 	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_hashline_reference"
  in

(* <eol> *)
(* Improve : clean Nwchemdata_lexer : only one eol *)
  Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  (* Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;	 *)

(* <comment_dashed_line> *) 
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_dli_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_hashline_dashed s ->

	let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_comment_dashed_constructor str in	  
     	Tree_v.make_of_leaf sym_nwc
  
    | _ ->
 	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_hashline_dashed"
	  
  in

(* <spaced_eol> *)
(* Improve : clean Nwchemdata_lexer : only one eol *)
  Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  (* Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;	 *)

(* <comment_reference_block> *) 
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_crb_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_hashline_reference s ->

	comment_reference_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s

    | _ ->
 	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_hashline_reference"
  in


(* <hash_alone> *) 

(* <eol> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;	



  let sym_nwc_tl = [sym_nwc_che_t; sym_nwc_dli_t; sym_nwc_crb_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_comment_block_constructor nam_blo in
  Tree_v.make_of_node sym_nwc sym_nwc_tl

;;


let aocomment_emsl_tree_n_databox_name_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "aocomment_emsl_tree_n_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <aocomment_emsl> ::=  <hash> <space> <space> databox_name <emsl_string> <date> <eol> *)
(* Improve : Not done like that *)
(* <aocomment_emsl> ::=  databox_name  <eol> *)
(* #  LANL2DZ ECP  EMSL  Basis Set Exchange ... *)

  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_ =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_databox_name s ->
	
	let str =  Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_databox_name_constructor str in	  
	(Tree_v.make_of_leaf sym_nwc, str)
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_variable_databox_name"
  in
  
(* <eol> *) (* Improve : clean Nwchemdata_lexer : only one eol *)
  Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  (* Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;	 *)

  sym_nwc_ 

;;



let aocomment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s =
  let nam_fun = "aocomment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack" in

(* <aocomment_block> ::= <aocomment_emsl> <comment_block> *)

(* <aocomment_emsl> *) 
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let (sym_nwc_ace_t, nam_bas) =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_databox_name s ->

	aocomment_emsl_tree_n_databox_name_of_nwchemdata_lexer_symbol_stack sym_lex_s

    | _ ->
 	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_variable_databox_name"
  in

(* <comment_block> *) 
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_cbl_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_hashline_reference s ->

	comment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s

    | _ ->
 	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_hashline_reference"
  in


  let sym_nwc_tl = [sym_nwc_ace_t; sym_nwc_cbl_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aocomment_block_constructor nam_bas in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;

