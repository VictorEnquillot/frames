(** {3 Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v";
   "Needs : PARLOI:Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : PARLOI:Localinput_parser_block_print_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needed-by : Builder-Tree"; 
   "What-is-it : the Localinput_symbol Subtree for any Lexeme_command";
   "Author : François Colonna 29 mars 2017 at 09:30:01+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(* Inputbox : print Poi_a                                      *)
(* Inputbox :      units [ Uni_len Uni_ang ]                   *)
(* Inputbox :      end -- print                                *)

(* Bnf : <handle_command_define>      ::= define <block_define>         *)
(* Bnf : <handle_command_read>        ::= read <block_read>             *)
(* Bnf : <handle_command_set>         ::= set <block_set>               *)
(* Bnf : <handle_command_title>       ::= title ( string | { string } ) *)

(* Bnf : <handle_command_print>       ::= print <block_print>           *)
(* Bnf : <handle_command_write>       ::= write <block_write>           *)


(* Tree : <handle_command_define>      ::= define <block_define>        *)

(* Tree :                body_handle_command_creation_define            *)
(* Tree :                      /                   \                    *)
(* Tree :   fence_keyword_command_define    body_block_define           *)

(* Tree :                body_handle_command_tounit_print                 *)
(* Tree :                      /                   \                    *)
(* Tree :   fence_keyword_command_print     body_block_print            *)

(** {6 Building} *)
 
let build (bna_ibo, sym_lco) = 
  let nam_fun = "build" in

  let nam_ibo = Basicname_v.name bna_ibo in
  
  let sym_lex_top = (* Coerce Up *) 
    Localinput_lexer_symbol_v.localinput_lexer_symbol_of_localinput_lexer_command_symbol
      sym_lco 
  in
  Localinput_parser_tools_v.debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;

  let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top in

  let sym_lex_lco_sl = 
    Localinput_lexer_handle_command_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v.provide
      (bna_ibo, sym_lco)
  in

  let sym_lex_rig_sl = List.tl sym_lex_lco_sl in

  match sym_lco with 
  | Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor sof_def) ->

	let sym_loi_key = 
	  Localinput_symbol_v.localinput_set_fence_keyword_command_define_constructor
	    nam_var 
	in
	let sym_loi_f = Tree_v.make_of_leaf sym_loi_key in
	
	let sym_loi_han = 
	  Localinput_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
	    nam_var 
	in
	
	let (sym_loi_blo_st, sym_lex_rem_sl) =
	  Localinput_parser_block_define_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	    (bna_ibo, sym_lex_rig_sl)
	in

	if sym_lex_rem_sl <> [] 
	then
	  Error_messages_v.print_syntax_error __LOC__ nam_fun
	    "Remainder Lexeme list were empty"
	    (Format.sprintf "Remainder Lexeme list is >%s<@." 
	       (List_v.name_in_column Localinput_lexer_symbol_v.fullname sym_lex_rem_sl))
	    (Format.sprintf "Check input file :@.  %s@." (Basicname_v.name bna_ibo))
	else	
	  Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st]
	  
  | Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
      (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor sof_pri) ->
      
      let sym_loi_key = 
	Localinput_symbol_v.localinput_set_fence_keyword_command_print_constructor 
	  nam_var 
      in
      let sym_loi_f = Tree_v.make_of_leaf sym_loi_key in
      
      let sym_loi_han = 
	Localinput_symbol_v.localinput_set_body_handle_command_tounit_print_constructor 
	  nam_var 
      in
      
      let (sym_loi_blo_st, sym_lex_rem_sl)  =
	Localinput_parser_block_print_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.provide
	  (bna_ibo, sym_lex_rig_sl)
      in

      if sym_lex_rem_sl <> [] 
      then
	Error_messages_v.print_syntax_error __LOC__ nam_fun
	  "Remainder Lexeme list were empty"
	  (Format.sprintf "Remainder Lexeme list  is >%s<@." 
	     (List_v.name_in_column Localinput_lexer_symbol_v.fullname sym_lex_rem_sl))
	  (Format.sprintf "Check input file :@.  %s@." nam_ibo)
      else	
	Tree_v.make_of_node sym_loi_han [sym_loi_f; sym_loi_blo_st]
	  
  | Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
      (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor sof_sto) ->

	let sym_loi_sto = 
	  Localinput_symbol_v.localinput_set_fence_keyword_command_stop_constructor 
	    nam_ibo 
	in
	Tree_v.make_of_leaf sym_loi_sto 

  | Localinput_lexer_command_symbol_t.Localinput_lexer_command_read_symbol
      (Localinput_lexer_command_read_symbol_t.Localinput_lexer_command_read_constructor sof_rea) ->
      Utilities_v.not_yet_implemented nam_mod (nam_fun ^ " read")

  | Localinput_lexer_command_symbol_t.Localinput_lexer_command_set_symbol
      (Localinput_lexer_command_set_symbol_t.Localinput_lexer_command_set_constructor sof_rea) ->
      Utilities_v.not_yet_implemented nam_mod (nam_fun ^ " set")

  | Localinput_lexer_command_symbol_t.Localinput_lexer_command_title_symbol
      (Localinput_lexer_command_title_symbol_t.Localinput_lexer_command_title_constructor sof_rea) ->
      Utilities_v.not_yet_implemented nam_mod (nam_fun ^ " title")

  | Localinput_lexer_command_symbol_t.Localinput_lexer_command_write_symbol
      (Localinput_lexer_command_write_symbol_t.Localinput_lexer_command_write_constructor sof_rea) ->
      Utilities_v.not_yet_implemented nam_mod (nam_fun ^ " write")
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Localinput_parser_handle_command_alternative_subtree_by_basicname_inputbox_n_localinput_lexer_symbol_stack_provider_v.ml  on lundi 16 janvier 2017, 07:56:48 (UTC+0100) *)
