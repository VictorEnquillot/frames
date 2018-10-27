(** {3 Db1pointsdata_parser_body_cluster_information_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARDB1:Db1pointsdata_parser_body_cluster_information_v";
   "Author : François Colonna 21th March 2016 A is treated as an uppercase word not capitalized word";
   "Author : François Colonna 21th March 2016 Databox_name is lowercase";
   "Author : François Colonna 21th March 2016 S_B is uppercase";
 ]
;;

(* <cluster_information>                ::= <bundle_coordinates> <bundle_figure>  *)

(* <bundle_coordinates>                 ::= <cell_coordinates_units_length> eol *)
(*                                         [<cell_coordinates_units_angle> eol]  *)
(*                                          <cell_coordinates_kind> eol *)

(* <bundle_figure>                      ::= <cell_figure_kind> eol *)
(* 					     <cell_figure_name> eol *)

(* <cell_figure_name>                   ::= figure_name >figure_name<  *)

let nam_mod = Management_v.current_module_name (documentation ());;

let db1pointsdata_as_fence_symbol_of_figure_name_of_argument_string_of_string_off nam_fig str_arg sof = 
  let nam_fun = "db1pointsdata_as_fence_symbol_of_figure_name_of_argument_string_of_string_off" in

  Management_v.debug_what_string "str_arg" nam_mod nam_fun str_arg; 
  Management_v.debug_what_string "sof" nam_mod nam_fun sof; 
  
  try Db1pointsdata_symbol_v.make str_arg sof
  with Failure _ ->
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "strings >%s< and >%s< were a suitable argument@.   for Db1pointsdata_set_fence_%s_symbol_v.make function" str_arg sof str_arg)
      "it is NOT"
      (Format.sprintf "Check why >%s< is NOT correct" str_arg)
;;

let db1pointsdata_as_fence_symbol_of_figure_name_of_argument_string nam_fig str_arg =
  let nam_fun = "db1pointsdata_as_fence_symbol_of_figure_name_of_argument_string" in

  Management_v.debug_what_string "nam_fig" nam_mod nam_fun nam_fig; 
  Management_v.debug_what_string "str_arg" nam_mod nam_fun str_arg; 

(* Db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_v.make 
  "db1pointsdata_set_fence_cell_coordinates_units_angle_constructor" 
   "A";; *)

  try Db1pointsdata_symbol_v.make (str_arg ^ "_constructor") nam_fig
  with Failure _ ->
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "string >%s< were a suitable argument@.   for Db1pointsdata_set_fence_%s_symbol_v.make function" str_arg str_arg)
      "it is NOT"
      (Format.sprintf "Check why >%s< is NOT correct" str_arg)
;;

let db1pointsdata_set_fence_token_leaf_list_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack nam_fig wha sym_lex_s =
  let nam_fun = "db1pointsdata_set_fence_token_leaf_list_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack" in

  Management_v.debug_what_string "what" nam_mod nam_fun wha; 
  Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);

  let rec apply acc_tl lex_s =

    let sym_lex_tok = Stack.pop lex_s in  	
    Db1pointsdata_parser_tools_v.debug_what_lexer "recursive pop token" nam_mod nam_fun sym_lex_tok;
    
    match sym_lex_tok with
    | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
	(Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
	   (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_symbol
	      (Db1pointsdata_lexer_basic_word_lowercase_symbol_t.Db1pointsdata_lexer_basic_word_lowercase_constructor 
		 sof_lex_tok )))  ->  (* radian *)
		   
		   let str_arg_tok = ("db1pointsdata_set_fence_token_" ^ wha ^ "_" ^sof_lex_tok) in
		   Management_v.debug_what_string "str_arg_tok" nam_mod nam_fun str_arg_tok; 
		   let sym_db1_tok = 
		     db1pointsdata_as_fence_symbol_of_figure_name_of_argument_string 
		       nam_fig 
		       str_arg_tok
		   in
		   
		   let sym_db1_tok_f = Tree_v.make_of_leaf sym_db1_tok in
		   
		   apply (acc_tl @ [sym_db1_tok_f]) lex_s
		     
    | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
	(Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
	   (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_symbol
	      (Db1pointsdata_lexer_basic_word_capitalized_symbol_t.Db1pointsdata_lexer_basic_word_capitalized_constructor 
		 sof_lex_tok ))) ->

		   let str_arg_tok = ("db1pointsdata_set_fence_basic_word_capitalized_constructor") in
		   Management_v.debug_what_string "str_arg_tok" nam_mod nam_fun str_arg_tok; 
		   let sym_db1_tok = 
		     db1pointsdata_as_fence_symbol_of_figure_name_of_argument_string_of_string_off 
		       nam_fig 
		       str_arg_tok
		       sof_lex_tok
		   in
		   
		   let sym_db1_tok_f = Tree_v.make_of_leaf sym_db1_tok in
		   
		   apply (acc_tl @ [sym_db1_tok_f]) lex_s

    | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
	(Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_word_symbol
	   (Db1pointsdata_lexer_basic_word_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_symbol
	      (Db1pointsdata_lexer_basic_word_uppercase_symbol_t.Db1pointsdata_lexer_basic_word_uppercase_constructor 
		 sof_lex_tok ))) ->

		   let str_arg_tok = ("db1pointsdata_set_fence_basic_word_uppercase_constructor") in
		   Management_v.debug_what_string "str_arg_tok" nam_mod nam_fun str_arg_tok; 
		   let sym_db1_tok = 
		     db1pointsdata_as_fence_symbol_of_figure_name_of_argument_string_of_string_off 
		       nam_fig 
		       str_arg_tok
		       sof_lex_tok
		   in
		   
		   let sym_db1_tok_f = Tree_v.make_of_leaf sym_db1_tok in
		   
		   apply (acc_tl @ [sym_db1_tok_f]) lex_s

    | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_character_eol w ->

	Db1pointsdata_parser_tools_v.debug_what_lexer "eol token" nam_mod nam_fun sym_lex_tok;	  
	acc_tl
	  
    | _ ->
	Error_messages_v.print_syntax_error nam_mod nam_fun
	  "Keyword word_lowercase | Keyword_word_capitalized | Keyword_word_uppercase" 
	  (Format.sprintf "Lexeme >%s<" 
	     (Db1pointsdata_lexer_symbol_v.fullname sym_lex_tok)
	  )
	  "Check db1points file"

  in

  apply [] sym_lex_s
;;

let db1pointsdata_set_fence_cell_subtree_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack nam_fig wha sym_lex_s =
  let nam_fun = "db1pointsdata_set_fence_cell_subtree_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack" in

(* <cell_coordinates_units_angle (of >figure_name<)> ::= coordinates_units_angle >units_angle< *)

  (* Db1pointsdata_lexer_keyword_coordinates_units_angle *)
  (* Db1pointsdata_lexer_basic_word_lowercase_constructor "radian" *)

(* No Recursion *)

  Management_v.debug_what_string "what" nam_mod nam_fun wha; 
  Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);

  let sym_lex_cel = Stack.pop sym_lex_s in  
  
  Db1pointsdata_parser_tools_v.debug_what_lexer "pop sym_lex_cel" nam_mod nam_fun sym_lex_cel;

  match sym_lex_cel with
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol _ 
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_token_symbol _ ->

      let str_arg_cel = ("db1pointsdata_set_fence_cell_" ^ wha) in
      
      let sym_db1_cel = 
	db1pointsdata_as_fence_symbol_of_figure_name_of_argument_string 
	  nam_fig
	  str_arg_cel
      in
      let sym_db1_tok_fl =
	db1pointsdata_set_fence_token_leaf_list_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack
	  nam_fig
	  wha
	  sym_lex_s 
      in
	      
      Tree_v.make_of_node sym_db1_cel sym_db1_tok_fl		  
	
  | _ ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Db1pointsdata_lexer_keyword or Db1pointsdata_lexer_token"
	(Format.sprintf "Lexemes >%s" 
	   (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cel)
	)
	"Check db1points file"
;;

(* <bundle_coordinates>                 ::= <cell_coordinates_units_length> eol *)
(*                                         [<cell_coordinates_units_angle> eol] *)
(*                                          <cell_coordinates_kind> eol *)

let db1pointsdata_bundle_coordinates_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack nam_fig sym_lex_s =
    let nam_fun = "db1pointsdata_bundle_coordinates_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack" in
    
    Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);
    
    let rec apply acc_tl lex_s =
      
      let sym_lex_cur = Stack.top sym_lex_s in  
      
      Db1pointsdata_parser_tools_v.debug_what_lexer "recursive top " nam_mod nam_fun sym_lex_cur;

      match sym_lex_cur with
      | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_units_angle w -> 
	    
	    let sym_db1_st =
	      db1pointsdata_set_fence_cell_subtree_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack
		nam_fig
		"coordinates_units_angle" 
		lex_s 
	    in
	    
	    apply (acc_tl @ [sym_db1_st]) lex_s

      | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_units_length w -> 
	    
	    let sym_db1_st =
	      db1pointsdata_set_fence_cell_subtree_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack
		nam_fig
		"coordinates_units_length" 
		lex_s 
	    in
	    apply (acc_tl @ [sym_db1_st]) lex_s 

      | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_kind w -> 
	    
	    let sym_db1_st =
	      db1pointsdata_set_fence_cell_subtree_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack
		nam_fig
		"coordinates_kind" 
		lex_s 
	    in
	    apply (acc_tl @ [sym_db1_st]) lex_s 

      | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol  
	  (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_figure_symbol _ ) ->

            acc_tl

      | _ ->
	  Error_messages_v.print_syntax_error nam_mod nam_fun
	    "Keyword coordinates_units_angle | coordinates_units_length | coordinates_kind"
	    (Format.sprintf "Lexeme >%s<" (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cur))
	    "Check db1points file"
	    
    in
    
    let sym_db1_dbc_stl = apply [] sym_lex_s in
    let sym_db1_dbc = 
      Db1pointsdata_symbol_v.db1pointsdata_set_body_bundle_coordinates_constructor nam_fig
    in
      
    Tree_v.make sym_db1_dbc sym_db1_dbc_stl
;;

let db1pointsdata_bundle_figure_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack nam_fig sym_lex_s =
    let nam_fun = "db1pointsdata_bundle_figure_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack" in
    
    Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);
    
    let rec apply acc_tl lex_s =
      
      let sym_lex_cur = Stack.top sym_lex_s in  
      
      Db1pointsdata_parser_tools_v.debug_what_lexer "recursive top" nam_mod nam_fun sym_lex_cur;

      match sym_lex_cur with
      | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_figure_kind w -> 
	    
	    let sym_db1_st =
	      db1pointsdata_set_fence_cell_subtree_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack
		nam_fig
		"figure_kind" 
		lex_s 
	    in
	    apply (acc_tl @ [sym_db1_st]) lex_s 

      | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_token_figure_name w -> 
	    
	    let sym_db1_st =
	      db1pointsdata_set_fence_cell_subtree_of_figure_name_of_what_of_db1pointsdata_lexer_symbol_stack
		nam_fig
		"figure_name" 
		lex_s 
	    in
	    apply (acc_tl @ [sym_db1_st]) lex_s 

      | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_character_eol w ->

	    apply acc_tl lex_s 

      | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_vertex w ->

	  acc_tl

      | _ ->
	  Error_messages_v.print_syntax_error nam_mod nam_fun
	    "Keyword figure_kind | figure_name"
	    (Format.sprintf "Lexeme >%s<" (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cur))
	    "Check db1points file"
	    
    in
    
    let sym_db1_dbf_stl = apply [] sym_lex_s in
    let sym_db1_dbf = 
      Db1pointsdata_symbol_v.db1pointsdata_set_body_bundle_figure_constructor nam_fig
    in
      
    Tree_v.make sym_db1_dbf sym_db1_dbf_stl
;;

(* <cluster_information>                ::= <bundle_coordinates> <bundle_figure>  *)

(* <bundle_coordinates>                 ::= <cell_coordinates_units_length> eol *)
(*                                         [<cell_coordinates_units_angle> eol]  *)
(*                                          <cell_coordinates_kind> eol *)

(* <bundle_figure>                      ::= <cell_figure_kind> eol *)
(* 					     <cell_figure_name> eol *)

let db1pointsdata_set_body_cluster_information_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack nam_fig sym_lex_s =
    let nam_fun = "db1pointsdata_set_body_cluster_information_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack" in

    Management_v.debug_what_string "nam_fig" nam_mod nam_fun nam_fig; 
    Db1pointsdata_parser_tools_v.debug_what_lexer "top sym_lex" nam_mod nam_fun (Stack.top sym_lex_s);
    
    let rec apply acc_tl lex_s =
      
      let sym_lex_cur = Stack.top sym_lex_s in  
      
      Db1pointsdata_parser_tools_v.debug_what_lexer "recursive top" nam_mod nam_fun sym_lex_cur;

      match sym_lex_cur with
      | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol  
	  (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_coordinates_symbol _ ) ->

	    let sym_db1_dbc_st = 
	      db1pointsdata_bundle_coordinates_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack
		nam_fig
		lex_s
	    in
	    apply (acc_tl @ [sym_db1_dbc_st]) lex_s 

      | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol  
	  (Db1pointsdata_lexer_keyword_symbol_t.Db1pointsdata_lexer_keyword_figure_symbol _) ->

	    let sym_db1_dbf_st = 
	      db1pointsdata_bundle_figure_subtree_of_figure_name_of_db1pointsdata_lexer_symbol_stack
		nam_fig
		lex_s
	    in
	    apply (acc_tl @ [sym_db1_dbf_st]) lex_s 

      | w when Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_keyword_vertex w ->

	  acc_tl

      | _ ->
	  Error_messages_v.print_syntax_error nam_mod nam_fun
	    "Keyword figure_kind | figure_name"
	    (Format.sprintf "Lexeme >%s<" (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cur))
	    "Check db1points file"
	    
    in
    
    let sym_db1_dci_stl = apply [] sym_lex_s in
    let sym_db1_dci = 
      Db1pointsdata_symbol_v.db1pointsdata_set_body_cluster_information_constructor nam_fig
    in
      
    Tree_v.make sym_db1_dci sym_db1_dci_stl
;;

