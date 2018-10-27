(** {3 Nwchemdata_parser_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARNWC:Nwchemdata_parser_v";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Nwchemdata_symbol Tree or Abstract Syntax Tree";
   "What-is-it : The NWCHEM subtree of the Prototype_set Tree";
   "How-is-it-done : by parsing a Nwchem Databox";
   "Invariant : Non-leaf Symbol Tree has unique nodes";
   "Invariant : Symbol Tree is complete";
   "Author : François Colonna 31 août 2016 at 16:43:03+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let ecpbasis_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_dbo sym_lex_s =
  let nam_fun = "ecpbasis_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <ecpbasis_block> ::= <comment_block> <empty_line_block> <ecpset_block> *)

(* <comment_block> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_com_t =
  match sym_lex_top with
  | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_hashline_reference s ->

      let nam_blo = Format.sprintf "%s ECP" nam_dbo in 
      Nwchemdata_parser_comment_block_v.comment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s

  | _ ->	    
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_hashline_reference"

  in

(* <empty_line_block> *)
  Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  
(* <ecpset_block> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in

  let sym_nwc_ecp_t =
  match sym_lex_top with
  | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_ecp s ->

      Nwchemdata_parser_ecpset_block_v.ecpset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_dbo sym_lex_s

  | _ ->	    
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_keyword_ecp"
  in
  
  let sym_nwc_tl = [sym_nwc_com_t; sym_nwc_ecp_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_ecpbasis_block_constructor nam_dbo in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
;;

let aobasis_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_dbo sym_lex_s =
  let nam_fun = "aobasis_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack" in

(* <aobasis_block> ::= <aocomment_block> <empty_line_block> <aoset_block> *)

(* <aocomment_block> *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_acb_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_databox_name s ->

	let nam_blo = Format.sprintf "%s AO" nam_dbo in 
	Nwchemdata_parser_comment_block_v.aocomment_block_tree_of_string_of_nwchemdata_lexer_symbol_stack nam_blo sym_lex_s
	  
    | _ ->	    
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_variable_databox_name"
  in

(* <empty_line_block> *)
Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* <aoset_block> *) 
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  let sym_nwc_asb_t =
    match sym_lex_top with
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_basis s ->

	Nwchemdata_parser_aoset_block_v.aoset_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack nam_dbo sym_lex_s

    | _ ->
	Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top
	  "Nwchemdata_lexer_keyword_basis"
  in

  let sym_nwc_tl = [sym_nwc_acb_t; sym_nwc_asb_t] in
  let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_body_node_aobasis_block_constructor nam_dbo in
  Tree_v.make_of_node sym_nwc sym_nwc_tl
    
;;

let nwchemdata_symbol_tree_of_databox_name nam_dbo =
  let nam_fun = "nwchemdata_symbol_tree_of_databox_name" in

  Management_v.debug_what_string "Argument nam_dbo" nam_mod nam_fun nam_dbo;

(* <databox_file> ::= <beginning_of_line> <version> <el_block> <aobasis_block> [ <el_block> <ecpbasis_block> ] end_of_file *)
  
(* Stack *)
  let sym_lex_s =
     Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_stack_of_databox_name 
      nam_dbo 
  in

(* <beginning_of_line> *)
 Nwchemdata_parser_tools_v.skip_line_beginning_of_nwchemdata_lexer_symbol_stack sym_lex_s;

(* <version> *)
  let sym_lex_pop = Nwchemdata_parser_tools_v.nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  Management_v.debug_what_string "POP sym_lex_pop" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.name sym_lex_pop);

  let sym_nwc_ver_t =
    match sym_lex_pop with 
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_version s) ->
	
	let nam_ver = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_ver = Nwchemdata_symbol_v.nwchemdata_set_body_variable_version_constructor nam_ver in
	Tree_v.make_of_leaf sym_ver
	    
    | _ -> 
	    Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop 
	      "Nwchemdata_lexer_variable_version"
	  
  in	

(* <el_block> *)
  Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

(* <aobasis_block> #  LANL2DZ ECP  EMSL  Basis Set ... *)
  
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  Management_v.debug_what_string "TOP sym_lex_top" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.name sym_lex_top);

  let (sym_nwc_abb_t, nam_dbo) =
    match sym_lex_top with 
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_databox_name s ->

	let nam_dbo = Nwchemdata_lexer_symbol_v.string_off s in
	(aobasis_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack
	   nam_dbo sym_lex_s, nam_dbo) 

    | _ -> 
      Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	"Nwchemdata_lexer_variable_databox_name"
  in	  
  
(* <el_block> *)
  Nwchemdata_parser_tools_v.skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  
(* <ecpbasis_block> : # Elements ... References *)
  let sym_lex_top = Nwchemdata_parser_tools_v.nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  Management_v.debug_what_string "TOP sym_lex_top" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.name sym_lex_top);

    match sym_lex_top with 
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end_of_file s ->

	let sym_nwc_tl = [sym_nwc_ver_t; sym_nwc_abb_t] in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_context_databox_constructor nam_dbo in
	Tree_v.make_of_node sym_nwc sym_nwc_tl

    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_hashline_reference s ->
	    
	let sym_nwc_ecp_t = ecpbasis_block_tree_of_databox_name_of_nwchemdata_lexer_symbol_stack 
	    nam_dbo
	    sym_lex_s
	in 
(* end_of_file *)
	Nwchemdata_parser_tools_v.skip_any_empty_lines_until_end_of_file_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
	
	let sym_nwc_tl = [sym_nwc_ver_t; sym_nwc_abb_t; sym_nwc_ecp_t] in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_context_databox_constructor nam_dbo in
	Tree_v.make_of_node sym_nwc sym_nwc_tl

    | _ -> 
      Nwchemdata_parser_tools_v.nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_top 
	"Nwchemdata_lexer_keyword_end_of_file | Nwchemdata_lexer_hashline_reference"
	
;;

let nwchemdata_symbol_tree_root_databox_of_basicname_databox bna_dbo =
  let nam_fun = "nwchemdata_symbol_tree_root_databox_of_basicname_databox" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let nam_dbo = Basicname_v.string_off bna_dbo in
  Management_v.debug_what_string "Argument nam_dbo" nam_mod nam_fun nam_dbo;
 
  let sym_nwc_t = nwchemdata_symbol_tree_of_databox_name nam_dbo in

  Nwchemdata_parser_tools_v.check_invariants_of_databox_name_of_nwchemdata_symbol_tree nam_dbo sym_nwc_t;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  sym_nwc_t
;;




