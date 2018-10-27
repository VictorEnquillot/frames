(** {3 Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v";
   "Needed-by : PARLOI:Localinput_parser_v"; 
   "What-is-it : the Localinput_symbol Subtree for any Block_define";
   "Remark : Lexeme_rightlist is headed by  >variable_name<";
   "Author : François Colonna 15 février 2017 at 08:16:21+01:00 reversed son list";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Inputbox : define Poi_a *)
(* Inputbox :        external  *)
(* Inputbox :          type [ "figure" "set" "fence" "point" "constructor" ] *)
(* Inputbox :          external_name "T_A" *)
(* Inputbox :          external_context Con_db1 *)
(* Inputbox :          end -- external *)
(* Inputbox :        end -- define *)

(* Inputbox : define Con_nwc  *)
(* Inputbox :        context *)
(* Inputbox :          domain "skeleton" *)
(* Inputbox : 	       database "nwchem" *)
(* Inputbox : 	       databox "cc_pvtz" *)
(* Inputbox : 	       end -- context *)
(* Inputbox :        end -- define *)

(* Bnf : <block_define> ::= >variable_name< <handle_variable_kind>  *)
(* Bnf :                     end -- define                          *)

(* Tree :                           body_block_define                           *)
(* Tree :                 /                |             \                      *)
(* Tree : fence_variable_kind body_handle_variable_kind fence_keyword_word_end  *)


let build (bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in

  let pre_lex_top = 
    Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor 
  in
  let sym_lex_top = 
    Localinput_parser_tools_v.top_lexeme_of_predicate_of_module_name_of_lexeme_list
      pre_lex_top
      nam_mod
      sym_lex_sl 
  in
  let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;
  
  let rec apply acc_stl lex_sl =

    let lex_cur = List.hd lex_sl in 

    Localinput_parser_tools_v.debug_what_lexer "lex_cur" nam_mod nam_fun lex_cur;

    match lex_cur with
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor w ->

	let (sym_loi_f, lex_rem_sl) = 
	  Localinput_parser_variable_name_leaf_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	    (bna_ibo, lex_sl)
	in
	
	apply [sym_loi_f] lex_rem_sl
		     
    | Localinput_lexer_symbol_t.Localinput_lexer_variable_kind_symbol _ ->

	let (sym_loi_han_st, lex_rem_sl) = 
	  Localinput_parser_handle_variable_kind_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide  
	    (bna_ibo, lex_sl) 
	in

	apply (sym_loi_han_st :: acc_stl) lex_rem_sl
		  
      | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_blocknamed_end_constructor w ->

	  let (sym_loi_end_f, lex_rem_sl) = 
	    Localinput_parser_end_leaf_n_remainder_lexeme_sublist_by_localinput_lexeme_rightlist_provider_v.provide
	      lex_sl
	  in

	  let acc_stl_rev = List.rev (sym_loi_end_f :: acc_stl) in
	  let sym_loi_blo = 
	    Localinput_symbol_v.localinput_set_body_block_define_constructor 
	      nam_var 
	  in
	  
	  let sym_loi_st = Tree_v.make_of_node sym_loi_blo acc_stl_rev in
	  
	  (sym_loi_st, lex_rem_sl)
	    
      | _ ->
	  Error_messages_v.print_syntax_error nam_mod nam_fun
	    "Lexeme were basic_word_bar_capitalized | variable_kind | end"
	    (Format.sprintf "Lexeme >%s<" (Localinput_lexer_symbol_v.fullname lex_cur))
	    "Check input file. Probably an \"end\" is missing"
  in
  
  apply [] sym_lex_sl

;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
