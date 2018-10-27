(** {3 Localinput_parser_cell_leaf_by_localinput_lexeme_cell_doublet_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_cell_leaf_by_localinput_lexeme_cell_doublet_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol Leaf for a Cell";
   "Definition : a Lexeme_cell has two elements a Keyword and a Word";
   "Improve too much complicated";
   "Author : François Colonna 21 février 2017 at 10:42:40+01:00";
   "Author : François Colonna 21 mai 2017 at 15:40:47+02:00 database -> databox";
   "Author : François Colonna 12 juin 2017 at 10:09:59+02:00 external_name \"he\" ";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* Inputbox : external_name "T_A"        *)
(* Inputbox : external_context Con_db1   *)

(* Bnf : cell ::= keyword word   *)

(* Bnf : cell ::= keyword "name" *)
(* Bnf : cell ::= keyword "Name" *)
(* Bnf : cell ::= keyword  Name  *)
(* Bnf : cell ::= keyword "NAME" *)

(* Tree : fence_cell of name     *)

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)
 
let build (sym_lex_key, sym_lex_wor) =
  let nam_fun = "build" in

  let nam_var_key = Localinput_lexer_symbol_v.string_off sym_lex_key in
  let nam_var_wor = Localinput_lexer_symbol_v.string_off sym_lex_wor in 

  Management_v.debug_what_string "nam_var_key" nam_mod nam_fun nam_var_key;
  Management_v.debug_what_string "nam_var_wor" nam_mod nam_fun nam_var_wor;

  let sym_loi_cel =
    match (sym_lex_key, sym_lex_wor) with 

(* nextvarname *)       
    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_external_context_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor w) ->

       Localinput_symbol_v.localinput_set_fence_cell_external_context_constructor nam_var_key

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operator_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor w) ->
	    
	    Localinput_symbol_v.localinput_set_fence_cell_target_operator_constructor nam_var_key

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_target_operand_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor w) ->
	    
	    Localinput_symbol_v.localinput_set_fence_cell_target_operand_constructor nam_var_key

(* nextstringed *)       
    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_sector_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor w) ->
	    
       Localinput_symbol_v.localinput_set_fence_cell_sector_constructor nam_var_wor

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_database_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor w) ->

	    Localinput_symbol_v.localinput_set_fence_cell_database_constructor nam_var_wor
	      
    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_databox_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_constructor w) ->
	    
	    Localinput_symbol_v.localinput_set_fence_cell_databox_constructor nam_var_wor
	      
    | (k, w ) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_databox_constructor k)
	&& (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_anycase_constructor w) ->

	  Localinput_symbol_v.localinput_set_fence_cell_databox_constructor nam_var_wor

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_databox_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor w) ->

       Localinput_symbol_v.localinput_set_fence_cell_databox_constructor nam_var_wor

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_domain_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor w) ->

       Localinput_symbol_v.localinput_set_fence_cell_domain_constructor nam_var_wor

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_external_name_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_capitalized_constructor w) ->

       Localinput_symbol_v.localinput_set_fence_cell_external_name_constructor nam_var_key

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_operation_constructor k) 
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor w) ->

	Localinput_symbol_v.localinput_set_fence_cell_operation_constructor nam_var_wor
       
    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_ondomain_constructor k) 
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor w) ->

	Localinput_symbol_v.localinput_set_fence_cell_ondomain_constructor nam_var_wor
	      
    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_external_name_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_string_doublequoted_constructor w) ->
	    
	    Localinput_symbol_v.localinput_set_fence_cell_external_name_constructor nam_var_key
	      
    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextstringed_external_name_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_doublequoted_lowercase_constructor w) ->

	    Localinput_symbol_v.localinput_set_fence_cell_external_name_constructor nam_var_key

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_nextvarnamed_cofactor_entity_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_word_bare_capitalized_constructor w) ->

	Localinput_symbol_v.localinput_set_fence_cell_cofactor_entity_constructor nam_var_wor

    | (k, w) when (Localinput_lexer_symbol_v.is_localinput_lexer_keyword_basiced_cofactor_basic_constructor k)
	  && (Localinput_lexer_symbol_v.is_localinput_lexer_basic_float_constructor w) ->

	    Localinput_symbol_v.localinput_set_fence_cell_cofactor_basic_constructor nam_var_wor

    | _ ->
	Error_messages_v.print_syntax_error nam_mod nam_fun
	  (Format.sprintf "Lexeme Cell :@.    (Localinput_lexer_keyword_nextstringed_external_name,@.    Localinput_lexer_basic_word_doublequoted_capitalized)@.           or@.    (Localinput_lexer_keyword_nextstringed_operation,@.    Localinput_lexer_basic_word_doublequoted_lowercase)@.           or@.    (Localinput_lexer_keyword_nextstringed_ondomain,@.    Localinput_lexer_basic_word_doublequoted_lowercase)@.           or@.    (Localinput_lexer_keyword_nextstringed_external_context,@.    Localinput_lexer_basic_word_bare_capitalized)@.           or@.    (Localinput_lexer_keyword_nextstringed_database_context,@.    Localinput_lexer_basic_word_doublequoted_lowercase)@.           or@.    (Localinput_lexer_keyword_nextstringed_sector_context,@.    Localinput_lexer_basic_word_doublequoted_lowercase)@.           or@.    (Localinput_lexer_keyword_nextstringed_databox_context,@.    Localinput_lexer_basic_word_doublequoted_anycase)@.           or@.    (Localinput_lexer_keyword_nextstringed_databox_context,@.    Localinput_lexer_basic_word_doublequoted_capitalized)@.           or@.    (Localinput_lexer_keyword_nextstringed_databox_context,@.    Localinput_lexer_basic_word_doublequoted_lowercase)@.           or@.    (Localinput_lexer_keyword_nextstringed_databox_context,@.    Localinput_lexer_keyword_basiced_cofactor_basic)@.           or@.    (Localinput_lexer_keyword_nextstringed_domain_context,@.    Localinput_lexer_basic_word_doublequoted_lowercase)")

	  (Format.sprintf "Lexeme Cell :@.  | (k, w) when (Localinput_lexer_symbol_v.is_%s k)@.    && (Localinput_lexer_symbol_v.is_%s w) ->" 
	     (Localinput_lexer_symbol_v.name sym_lex_key)
	     (Localinput_lexer_symbol_v.name sym_lex_wor) 
	  )
	  "Add it"
  in
  
  Tree_v.make_of_leaf sym_loi_cel 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

