(** {3 Nwchemdata_parser_aoset_center_contraction_scheme_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARNWCHEM:Nwchemdata_parser_aoset_center_contraction_scheme_v";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Nwchemdata_symbol Sub Tree for the Contraction_set_block";
   "How-is-it-done : by parsing the Nwchemdata (NWChem) Datafile Database";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let positive_integer_n_shell_name_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack nam_cen what sym_lex_s =
  let nam_fun = "positive_integer_n_shell_name_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack" in

(* positive_integer <shell_name> *)
(* [center_name what] *)

(* positive_integer *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
   
  let (sym_nwc_pin_t, str_pin) = 
      match sym_lex_pop with
      | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer s->

	  let str = Nwchemdata_lexer_symbol_v.string_off s in 
	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_fence_integer_positive_constructor str in
	  (Tree_v.make_of_leaf sym_nwc, str)
	    
      | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	    "Nwchemdata_lexer_basic_word_numeric_positive_integer"
    in
    
(* shell_name *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

    let (sym_nwc_she_t, str_sna) = 
      match sym_lex_pop with
      | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_shell_name s ->
	    
	  let str = Nwchemdata_lexer_symbol_v.string_off s in 
	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_shellname_usual_constructor str in
	  (Tree_v.make_of_leaf sym_nwc, str)
	      
      | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	    "Nwchemdata_lexer_variable_shell_name"
    in

  let sym_nwc_tl = [sym_nwc_pin_t; sym_nwc_she_t] in
  let nam_psw = Format.sprintf "%s %s %s %s" nam_cen str_pin str_sna what in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_positiveinteger_n_shellname_constructor nam_psw in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
;;



let aoset_center_contraction_image_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack nam_cen what sym_lex_s =
  let nam_fun = "aoset_center_contraction_image_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_center_contraction_image> ::= <positive_integer_n_shell_name> {<comma> <positive_integer_n_shell_name>}  *)

  let rec apply acc_tl cur_lex_s =

(* positive_integer_n_shell_name *)
    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in
    
    let sym_nwc_pns_t = 
      match sym_lex_top with
      | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer s ->
	  
	  positive_integer_n_shell_name_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack 
	    nam_cen
	    what
	    cur_lex_s 

      | _ ->
	  Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	    "Nwchemdata_lexer_basic_word_numeric_positive_integer"

    in
    
(* <comma> *)
    
    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in

    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_comma s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_comma in
	let sym_nwc_ = Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc cur_lex_s in
	apply (sym_nwc_ :: (sym_nwc_pns_t :: acc_tl)) cur_lex_s
	    
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_r_parenthesis s ) ->

	let what = "EXPANSION" in
	let str_ncw = Format.sprintf "%s %s" nam_cen what in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_image_constructor str_ncw  in

	Tree_v.make_of_node sym_nwc (List.rev (sym_nwc_pns_t :: acc_tl))

	  
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_r_bracket s ->

	let what = "CONTRACTION" in
	let str_ncw = Format.sprintf "%s %s" nam_cen what in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_image_constructor str_ncw  in

	Tree_v.make_of_node sym_nwc (List.rev (sym_nwc_pns_t :: acc_tl))

    | _ ->
 	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_character_mark_comma | Nwchemdata_lexer_character_mark_r_bracket | Nwchemdata_lexer_character_mark_r_parenthesis"
in

  apply [] sym_lex_s
    
;;





let aoset_shell_expansion_tree_of_center_name_of_nwchemdata_lexer_symbol_stack nam_cen sym_lex_s =
  let nam_fun = "aoset_shell_expansion_tree_of_center_name_of_nwchemdata_lexer_symbol_stack" in

(*  <shell_expansion> ::= <left_parenthesis> <expansion_image> <right_parenthesis> *)

(* <left_parenthesis> *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
    
  let sym_nwc_lbr_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_l_parenthesis s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_left_parenthesis in
	Tree_v.make_of_leaf sym_nwc 
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_character_mark_r_parenthesis"
	  
  in   

(*  <expansion_image> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
    
  let sym_nwc_cim_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer s ->
	
	let what = "EXPANSION" in
	aoset_center_contraction_image_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack
	  nam_cen 
	  what
	  sym_lex_s 
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_basic_word_numeric_positive_integer"
  in
  
(* <right_parenthesis> *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_rbr_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_r_parenthesis s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_right_parenthesis in
	Tree_v.make_of_leaf sym_nwc
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_character_mark_r_parenthesis"
  in

  let str_exp = Format.sprintf "%s EXPANSION" nam_cen in
  let sym_nwc_tl = [sym_nwc_lbr_t; sym_nwc_cim_t; sym_nwc_rbr_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_shell_expansion_constructor str_exp in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;





let aoset_shell_contraction_tree_of_center_name_of_nwchemdata_lexer_symbol_stack nam_cen sym_lex_s =
  let nam_fun = "aoset_shell_contraction_tree_of_center_name_of_nwchemdata_lexer_symbol_stack" in

(*  <shell_contraction> ::= <left_bracket> <aoset_center_contraction_image> <right_bracket> *)

(* <left_bracket> *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
    
  let sym_nwc_lbr_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_l_bracket s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_left_bracket in
	Tree_v.make_of_leaf sym_nwc 
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_character_mark_l_bracket"
	  
  in   

(*  <aoset_center_contraction_image> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
    
  let sym_nwc_cim_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer s ->
	
	let what = "CONTRACTION" in
	aoset_center_contraction_image_tree_of_center_name_of_what_of_nwchemdata_lexer_symbol_stack
	  nam_cen 
	  what
	  sym_lex_s 
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_basic_word_numeric_positive_integer"
  in
  
(* <right_bracket> *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_rbr_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_r_bracket s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_right_bracket in
	Tree_v.make_of_leaf sym_nwc
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_character_mark_r_bracket"
  in
  
(* (\* eol *\) *)
(*     | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line s -> *)

(* 	(Nwchemdata_parser_tools_v.skip_pop nam_mod nam_fun cur_lex_s); *)
(* 	apply (acc_tl) cur_lex_s *)

  let str_con = Format.sprintf "%s EXPANSION" nam_cen in
  let sym_nwc_tl = [sym_nwc_lbr_t; sym_nwc_cim_t; sym_nwc_rbr_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_shell_contraction_constructor str_con in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;


let hash_databox_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "hash_databox_tree_of_nwchemdata_lexer_symbol_stack" in

(*  <hash_databox> ::= hash_basis <space> SET <colon>  [ center name open ]*)

(* hash_basis *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_hba_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_hash_basis in
	Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc sym_lex_s
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_keyword_hash_basis"
	  
  in
  
(* <space> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  
(* SET *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_set_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_set s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_set in
	Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc sym_lex_s
	  
    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_keyword_set"
  in
  
(* <colon> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_col_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_colon s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_colon in
	Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc sym_lex_s
	  
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	  "Nwchemdata_lexer_character_mark_colon"
  in
  
  let sym_lex =
    Stack_v.find_non_destructive_of_predicate_of_stack
      Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name
      sym_lex_s 
  in
  
  let nam_cen =  Nwchemdata_lexer_symbol_v.string_off sym_lex in


  let sym_nwc_tl = [sym_nwc_hba_t; sym_nwc_set_t; sym_nwc_col_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_hash_databox_constructor nam_cen in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;


let aoset_center_contraction_scheme_tree_of_center_name_of_nwchemdata_lexer_symbol_stack nam_cen sym_lex_s =
  let nam_fun = "aoset_center_contraction_scheme_tree_of_center_name_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_center_contraction_scheme> ::= <hash_databox> <space> <shell_expansion> <space> <right_arrow> <space> <shell_contraction> <eol> *)

(* <hash_databox> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_hba_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis s ->
	  
	  hash_databox_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	  "Nwchemdata_lexer_keyword_hash_basis"
  in

(* <space> *)
 Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(*  <shell_expansion> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_sex_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_l_parenthesis s ->
	
	aoset_shell_expansion_tree_of_center_name_of_nwchemdata_lexer_symbol_stack 
	  nam_cen 
	  sym_lex_s 

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	  "Nwchemdata_lexer_character_mark_l_parenthesis"
  in

(* <space> *)
 Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(*  <right_arrow> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_rar_t =
    match sym_lex_top with

    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_symbol_r_arrow s ->

	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_right_arrow in
	  Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc sym_lex_s 

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	  "Nwchemdata_lexer_symbol_r_arrow"
  in

(* <space> *)
 Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* <shell_contraction> *)
  let sym_lex_top_4 = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_sco_t =
    match sym_lex_top_4 with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_l_bracket s ->

	aoset_shell_contraction_tree_of_center_name_of_nwchemdata_lexer_symbol_stack 
	  nam_cen
	  sym_lex_s 
	   
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top_4 
	  "Nwchemdata_lexer_character_mark_l_bracket"
  in

(* <eol> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

  let sym_nwc_tl = [sym_nwc_hba_t; sym_nwc_sex_t; sym_nwc_rar_t; sym_nwc_sco_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor nam_cen in
  Tree_v.make_of_node sym_nwc sym_nwc_tl

;;



