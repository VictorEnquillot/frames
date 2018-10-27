(** {3 Nwchemdata_parser_ecpset_block_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARNWCHEM:Nwchemdata_parser_ecpset_block_v";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Nwchemdata_symbol Sub Tree for the Ecpset_block";
   "How-is-it-done : by parsing the Nwchemdata (NWChem) Datafile Database";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let ecpset_local_name_print_tree_list_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "ecpset_local_name_print_tree_list_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_local_name_print> ::= ecpset_local_name <space> PRINT *)

  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_loc_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_ecpset_name s ->

	let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_localname_ecpset_constructor str in
	Tree_v.make_of_leaf sym_nwc 

    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_variable_ecpset_name"
  in

(* { <space> } *)  
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* PRINT *)
  let sym_nwc_pri_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_print s ->

	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_directive_print in
	  Tree_v.make_of_leaf sym_nwc 

    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_keyweord_print"
  in

  [sym_nwc_loc_t; sym_nwc_pri_t]
;;





let ecpset_definition_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s =
  let nam_fun = "ecpset_definition_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_definition> ::=  ECP [ <space> ] [ ecpset_local_name <space> PRINT ] <eol> *)

  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_ecp_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_ecp s ->
	  
	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_directive_ecp in
	  Tree_v.make_of_leaf sym_nwc 

    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_keyword_ecp"
  in

(* { <space> } *)  
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
(* ecpset_local_name <space> PRINT*)
  let sym_nwc_lnp_tl =
    if Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_ecpset_name sym_lex_top
    then
      ecpset_local_name_print_tree_list_of_nwchemdata_lexer_symbol_stack sym_lex_s 
    else
      []
  in

(* <eol> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

  let sym_nwc_tl = sym_nwc_ecp_t :: sym_nwc_lnp_tl in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_definition_constructor nam_bas in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
;;






let ecpset_numerical_values_tree_of_center_n_shell_name_n_index_n_index_of_nwchemdata_lexer_symbol_stack nam_csi sym_lex_s =
  let nam_fun = "ecpset_numerical_values_tree_of_center_n_shell_name_n_index_n_index_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_numerical_values> ::= nonnegative_integer { <space> } positive_float { <space> } float { <space> } <eol> *)
(* [Center_name Center_index Shell_name Shell_index ] *)

  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

(* integer >= 0 *)
  let sym_nwc_nni_t =
    match sym_lex_pop with
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_integer s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer s) ->
	
	let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_fence_integer_positive_constructor str in
	Tree_v.make_of_leaf sym_nwc

   | _ ->	
       Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	 "Nwchemdata_lexer_basic_word_numeric_positive_integer"
  in

(* { <space> } *)  
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* positive_float *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_pfl_t =
    Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_positive_nonnegative_float 
      nam_mod 
      nam_fun 
      sym_lex_pop
  in

(* { <space> } *)  
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* float *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_flo_t =
    Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_float 
      nam_mod 
      nam_fun 
      sym_lex_pop 
  in

(* { <space> } <eol> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

  let sym_nwc_tl = [sym_nwc_nni_t; sym_nwc_pfl_t; sym_nwc_flo_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_constructor nam_csi in
  Tree_v.make_of_node sym_nwc sym_nwc_tl

;;



let ecpset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack nam_csi sym_lex_s =
  let nam_fun = "ecpset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_numerical_values_block> ::= { <ecpset_numerical_values> } *)

  let rec apply idx_row acc_tl cur_lex_s =
    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in
    
    match sym_lex_top with
(*  <ecpset_numerical_values_block> : 0 ... *)
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_integer s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer s) ->

	let idx_row = idx_row + 1 in
	let nam_cii = Format.sprintf "%s %i" nam_csi idx_row in
	let sym_nwc_ =
	  ecpset_numerical_values_tree_of_center_n_shell_name_n_index_n_index_of_nwchemdata_lexer_symbol_stack 
	    nam_cii 
	    cur_lex_s
	in
	apply idx_row (sym_nwc_ :: acc_tl) cur_lex_s
  
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end s ) -> 

	  acc_tl

    | _ ->	
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_basic_word_numeric_non_negative_integer | Nwchemdata_lexer_basic_word_numeric_positive_integer"
  in

  let sym_nwc_tl = List.rev (apply 0 [] sym_lex_s) in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor nam_csi in
  Tree_v.make_of_node sym_nwc sym_nwc_tl

;;





let ecpset_oneshell_block_tree_of_index_of_nwchemdata_lexer_symbol_stack idx sym_lex_s =
  let nam_fun = "ecpset_oneshell_block_tree_of_index_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_oneshell_block> ::= <center_and_shell_name> <ecpset_numerical_values_block> *)

  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

(* <center_and_shell_name> *)
  let (sym_nwc_cns_t, nam_csi) =
    match sym_lex_top with
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	let what = "ECP" in		   
	Nwchemdata_parser_center_and_shell_name_v.center_and_shell_name_tree_n_string_of_what_of_index_of_nwchemdata_lexer_symbol_stack 
	  what
	  idx
	  sym_lex_s 
		     
      | _ ->
	  Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	    "Nwchemdata_lexer_basic_word_uppercase_alphabetic | Nwchemdata_lexer_basic_word_capitalized_alphabetic | Nwchemdata_lexer_basic_word_capitalized_strict_alphabetic"
	    
  in

  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

(*  <ecpset_numerical_values_block> *)
  let sym_nwc_eva_t =
    match sym_lex_top with
   | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer s)
   || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_integer s) ->

       ecpset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack nam_csi sym_lex_s
  
   | _ -> 
       Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_basic_word_numeric_non_negative_integer"
  in
  
  let sym_nwc_tl = [sym_nwc_cns_t; sym_nwc_eva_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_oneshell_block_constructor nam_csi in
  Tree_v.make_of_node sym_nwc sym_nwc_tl

;;


let ecpset_anyshell_block_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "ecpset_anyshell_block_tree_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_anyshell_block> ::= { <ecpset_oneshell_block> } *)
(* [center name] *)

  let rec apply idx acc_tl cur_lex_s =

    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in

(* { <ecpset_oneshell_block> } *)
    
    match sym_lex_top with
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	let idx = idx + 1 in
	let sym_nwc_ = 
	  ecpset_oneshell_block_tree_of_index_of_nwchemdata_lexer_symbol_stack 
	    idx
	    cur_lex_s 
	in
	let sym_nwc_roo = Tree_v.root_off_tree sym_nwc_ in
	let nam_csi = Nwchemdata_symbol_v.string_off sym_nwc_roo in
	let nam_cen = String_v.first_word_off_string nam_csi in
	apply idx ((sym_nwc_, nam_cen) :: acc_tl) cur_lex_s
	  

(* END *) 
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis s) ->

		   acc_tl

    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_ecp_electron_number s) ->

		   acc_tl

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "is_a_center_name | Nwchemdata_lexer_keyword_hash_basis | Nwchemdata_lexer_keyword_ecp_electron_number | Nwchemdata_lexer_keyword_ecp | Nwchemdata_lexer_keyword_end"
  in

  let sym_n_str_l = List.rev (apply 0 [] sym_lex_s) in
  let sym_nwc_tl = Doublet_list_v.left_list_off_doublet_list sym_n_str_l in 
  let str_l = Doublet_list_v.right_list_off_doublet_list sym_n_str_l in 
  let nam_cen_l = List.map String_v.first_word_off_string str_l in
  let nam_cen = List_v.only_element_of_repeated_list nam_cen_l in

  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_anyshell_block_constructor nam_cen in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;



let ecpset_electron_number_tree_n_string_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "ecpset_electron_number_tree_n_string_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_electron_number> ::= <center_name> { <space> } nelec { <space> } nonnegative_integer <eol> *) 

  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

(* <center_name> *)
  let (sym_nwc_cen_t, nam_cen) =
    match sym_lex_pop with
(* Au nelec 60 ... *)
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_centername_constructor str in
	(Tree_v.make_of_leaf sym_nwc, str)

      | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	    "is_nwchemdata_lexer_symbol_center_name"
    in

(* { <space> } *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* nelec *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_nel_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_ecp_electron_number s ->
	  
	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_keyword_nelec in
	  Tree_v.make_of_leaf sym_nwc
	    
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_keyword_ecp_electron_number"
  in

(* { <space> } *)

  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* 60 *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_pin_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer s ->

	let str = Nwchemdata_lexer_symbol_v.string_off s in  
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_centername_constructor str in
	Tree_v.make_of_leaf sym_nwc
	   
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_basic_word_numeric_positive_integer"
  in
  
(* <eol> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

  let sym_nwc_tl = [sym_nwc_cen_t; sym_nwc_nel_t; sym_nwc_pin_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_electronnumber_constructor nam_cen in
  (Tree_v.make_of_node sym_nwc sym_nwc_tl, nam_cen)
;;



    
let ecpset_onecenter_block_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "ecpset_onecenter_block_tree_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_onecenter_block> ::= <ecpset_electron_number> <ecpset_anyshell_block> *)

(* <ecpset_electron_number> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let (sym_nwc_enu_t, nam_cen) =
    match sym_lex_top with
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	ecpset_electron_number_tree_n_string_of_nwchemdata_lexer_symbol_stack sym_lex_s 
	  
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	    "is_nwchemdata_lexer_symbol_center_name"
    in

(* <ecpset_anyshell_block> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_ash_t =
    match sym_lex_top with
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	ecpset_anyshell_block_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s
	  
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "is_nwchemdata_lexer_symbol_center_name"
    in


  let sym_nwc_tl = [sym_nwc_enu_t; sym_nwc_ash_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_onecenter_block_constructor nam_cen in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;


let ecpset_anycenter_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s =
  let nam_fun = "ecpset_anycenter_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_anycenter_block> ::= { <ecpset_onecenter_block> } *)

  let rec apply acc_tl cur_lex_s =
    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in
    
    match sym_lex_top with
 (* eol *)
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line s ->

	Nwchemdata_parser_tools_v.skip_pop nam_mod nam_fun cur_lex_s;
	apply (acc_tl) cur_lex_s

(* any_center : Au [ nelec 60 ] *)
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	let sym_nwc_ = ecpset_onecenter_block_tree_of_nwchemdata_lexer_symbol_stack cur_lex_s in
	apply (sym_nwc_ :: acc_tl) cur_lex_s    

(* END kept *)
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end s ->
	
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_directive_end in
	let sym_nwc_ = Tree_v.make_of_leaf sym_nwc in

	sym_nwc_ :: acc_tl

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "is_a_center_name"
  in

  let sym_nwc_tl = List.rev (apply [] sym_lex_s) in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_anycenter_block_constructor nam_bas in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;



let ecpset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s =
  let nam_fun = "ecpset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <ecpset_block> ::=  <ecpset_definition> <ecpset_anycenter_block> END <eol>*)
  
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

(* <ecpset_definition> *)
  let sym_nwc_ede_t = 
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_ecp s ->

	  ecpset_definition_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s

      | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	    "Nwchemdata_lexer_keyword_ecp"
  in

  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

(* <ecpset_anycenter_block> *)
  let sym_nwc_ace_t = 
    match sym_lex_top with
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->
	
	ecpset_anycenter_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s 

      | _ -> 
	  Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	    "is_a_center_name"
  in

  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
(* END *)
  let sym_nwc_end_t =
    match sym_lex_pop with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end s ->
	  
	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_directive_end in
	  Tree_v.make_of_leaf sym_nwc
	  
    | _ -> 	
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_keyword_end"

  in
  
(* <eol> *)
  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

  let sym_nwc_tl = [sym_nwc_ede_t; sym_nwc_ace_t; sym_nwc_end_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpset_block_constructor nam_bas in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;

