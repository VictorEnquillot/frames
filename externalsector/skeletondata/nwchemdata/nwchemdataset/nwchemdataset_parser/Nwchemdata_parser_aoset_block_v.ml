(** {3 Nwchemdata_parser_aoset_block_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARNWCHEM:Nwchemdata_parser_aoset_block_v";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Nwchemdata_symbol Sub Tree for the Basis_set_block";
   "How-is-it-done : by parsing the Nwchemdata (NWChem) Datafile Database";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let aoset_definition_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s =
  let nam_fun = "aoset_definition_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_definition> ::=  BASIS <space> databox_local_name <space> PRINT<eol> *)

(* BASIS *)
let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

let sym_nwc_bas_t =
  match sym_lex_top with
  | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_basis s ->
      
      let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_directive_basis in
      Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc sym_lex_s
	
  | _ -> 
      Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	"Nwchemdata_lexer_keyword_basis"
in

(* <space> *)
Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* databox_local_name *)
let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

let sym_nwc_bsl_t =
  match sym_lex_top with
  | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_basis_name_atomic_orbital s ->

      let str = Nwchemdata_lexer_symbol_v.string_off s in
      let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_variable_databox_name_constructor str in
      Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc sym_lex_s
	
  | _ -> 
      Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	"Nwchemdata_lexer_variable_basis_name_atomic_orbital"
in

(* <space> *)
Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* PRINT *)
let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

let sym_nwc_pri_t =
  match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_print s ->

	  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_directive_basis in
	  Nwchemdata_parser_tools_v.leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc sym_lex_s

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	  "Nwchemdata_lexer_keyword_print"
  in

(* <eol> *)
 Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
 
 let sym_nwc_tl = [sym_nwc_bas_t; sym_nwc_bsl_t; sym_nwc_pri_t] in
 let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_definition_constructor nam_bas in
 Tree_v.make_of_node sym_nwc sym_nwc_tl

;;







let databox_for_a_shell_block_tree_of_index_of_nwchemdata_lexer_symbol_stack idx sym_lex_s =
  let nam_fun = "databox_for_a_shell_block_tree_n_string_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_oneshell_block> ::= <center_and_shell_name> <aoset_numerical_values_block> *)
(* [center_name and shell_name and index] *)

  Nwchemdata_parser_tools_v.skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

(* <center_and_shell_name> *)
  let (sym_nwc_cns_t, nam_cii) =
    match sym_lex_top with
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	let what = "GAUSSIAN" in	
	Nwchemdata_parser_center_and_shell_name_v.center_and_shell_name_tree_n_string_of_what_of_index_of_nwchemdata_lexer_symbol_stack 
	  what 
	  idx 
	  sym_lex_s 
	  
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "is_a_center_name"
  in

  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

(*  <aoset_numerical_values_block> *)
  let sym_nwc_cva_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_many_space s ->

	Nwchemdata_parser_aoset_numerical_values_block_v.aoset_numerical_values_block_tree_of_center_n_shell_name_n_index_of_nwchemdata_lexer_symbol_stack nam_cii sym_lex_s
		     
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_variable_many_space"
  in
  
  let sym_nwc_tl = [sym_nwc_cns_t; sym_nwc_cva_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_oneshell_block_constructor nam_cii in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;


let aoset_anyshell_block_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "aoset_anyshell_block_tree_of_nwchemdata_lexer_symbol_stack" in

(* <basis_for_any_shell_block> ::= { <aoset_oneshell_block> } *)
(* [center name] *)

  let rec apply idx acc_tl cur_lex_s =
    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in
    
    match sym_lex_top with
    | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

	let idx = idx + 1 in
	let sym_nwc_ = 
	  databox_for_a_shell_block_tree_of_index_of_nwchemdata_lexer_symbol_stack 
	    idx
	    cur_lex_s 
	in
	let sym_nwc_roo = Tree_v.root_off_tree sym_nwc_ in
	let nam_csi = Nwchemdata_symbol_v.string_off sym_nwc_roo in
	let nam_cen = String_v.first_word_off_string nam_csi in
	apply idx ((sym_nwc_, nam_cen) :: acc_tl) cur_lex_s

(* END *) (* #BASIS *)
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis s) ->

		   acc_tl

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "is_a_center_name | Nwchemdata_lexer_keyword_hash_basis | Nwchemdata_lexer_keyword_end"
  in

  let sym_n_str_l = List.rev (apply 0 [] sym_lex_s) in
  let sym_nwc_tl = Doublet_list_v.left_list_off_doublet_list sym_n_str_l in 
  let str_l = Doublet_list_v.right_list_off_doublet_list sym_n_str_l in 
  let nam_cen_l = List.map String_v.first_word_off_string str_l in
  let nam_cen = List_v.only_element_of_repeated_list nam_cen_l in

  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_anyshell_block_constructor nam_cen in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;




    
let aoset_onecenter_block_tree_of_center_name_of_nwchemdata_lexer_symbol_stack nam_cen sym_lex_s =
  let nam_fun = "aoset_onecenter_block_tree_of_center_name_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_onecenter_block> ::= <aoset_center_contraction_scheme> <aoset_anyshell_block> *)

(* <aoset_center_contraction_scheme> *)
 let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

 let sym_nwc_cde_t =
   match sym_lex_top with
   | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis s ->

	 Nwchemdata_parser_aoset_center_contraction_scheme_v.aoset_center_contraction_scheme_tree_of_center_name_of_nwchemdata_lexer_symbol_stack nam_cen sym_lex_s
	   
   | _ -> 

       Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	 "Nwchemdata_lexer_keyword_hash_basis"
 in
 
(* <aoset_anyshell_block> *)
 let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
 
 let sym_nwc_ash_t =
   match sym_lex_top with
   | s when (Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name s) ->

       aoset_anyshell_block_tree_of_nwchemdata_lexer_symbol_stack sym_lex_s
	       
   | _ -> 
       Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	 "is_a_center_name"
 in
 
 let sym_nwc_tl = [sym_nwc_cde_t; sym_nwc_ash_t] in
 let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_onecenter_block_constructor nam_cen in
 Tree_v.make_of_node sym_nwc sym_nwc_tl
;;


let aoset_anycenter_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s =
  let nam_fun = "aoset_anycenter_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_anycenter_block> ::= { <aoset_onecenter_block> } *)
(* [databox name] *)

  let rec apply acc_tl cur_lex_s =
    let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun cur_lex_s in
    
    match sym_lex_top with

(* #BASIS ... *)
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis s ->

	let sym_lex =
	  Stack_v.find_non_destructive_of_predicate_of_stack
	    Nwchemdata_parser_tools_v.is_nwchemdata_lexer_symbol_center_name
	    sym_lex_s 
	in
	
	let nam_cen =  Nwchemdata_lexer_symbol_v.string_off sym_lex in

	let sym_nwc_ = 
	  aoset_onecenter_block_tree_of_center_name_of_nwchemdata_lexer_symbol_stack 
	    nam_cen
	    cur_lex_s 
	in
	apply (sym_nwc_ :: acc_tl) cur_lex_s    

(* END *)
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end s -> 

	  acc_tl

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_keyword_hash_basis | Nwchemdata_lexer_keyword_end"
  in

  let sym_nwc_tl = List.rev (apply [] sym_lex_s) in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_anycenter_block_constructor nam_bas in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;




let aoset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s =
  let nam_fun = "aoset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <aoset_block> ::=  <aoset_definition> <aoset_anycenter_block> END <eol>*)

(* <aoset_definition> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
   
  let sym_nwc_def_t = 
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_basis s ->

	  aoset_definition_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s 

    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_keyword_basis"
  in

(* <aoset_anycenter_block> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_ace_t = 
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_hash_basis s ->
	
	aoset_anycenter_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_bas sym_lex_s 
	  
    | _ -> 
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_keyword_hash_basis"
  in
  
(* END *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
   
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
  
  let sym_nwc_tl = [sym_nwc_def_t; sym_nwc_ace_t; sym_nwc_end_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_block_constructor nam_bas in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;

