(** {3 Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v";
   "Needs : DLOI:Localinput_parser_list_variable_name_external_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v";
   "Needed-by : PARLOI:";
   "What-is-it : the Localinput_symbol_subtree for a Box_units";
   "Author : François Colonna 14 février 2017 at 10:17:08+01:00 acc_stl reversed";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Inputbox : units [ Uni_len Uni_ang ]                        *)
(* Bnf :  <box_units> ::= units >variable_name_external_list<  *)

(* Tree :                          body_box_units                           *)
(* Tree :                          /            \                           *)
(* Tree :       fence_keyword_word_units  body_list_variable_name_external  *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_ibo, sym_lex_sl) =
  let nam_fun = "build" in

  let nam_lex_top = "localinput_lexer_keyword_defvarnamed_units_constructor" in
  let nam_var = 
    Localinput_parser_tools_v.string_off_of_module_name_of_lexeme_list_of_top_lexeme_name 
      nam_mod
      sym_lex_sl 
      nam_lex_top 
  in

  let rec apply acc_stl lex_sl =

    let sym_lex_cur = List.hd lex_sl in 

    match sym_lex_cur with
      
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_keyword_defvarnamed_units_constructor w -> 
	
	let sym_loi_uni = 
	  Localinput_symbol_v.localinput_set_fence_keyword_word_units_constructor 
	    nam_var 
	in
	let sym_loi_f = Tree_v.make_of_leaf sym_loi_uni in
	
	let lex_rig_sl = List.tl lex_sl in
	apply [sym_loi_f] lex_rig_sl
	  
    | w when Localinput_lexer_symbol_v.is_localinput_lexer_token_l_bracket w -> 
	
	let (sym_loi_lne_st, lex_rem_sl) =
	  Localinput_parser_list_variable_name_external_subtree_n_remainder_lexeme_sublist_by_variable_name_n_localinput_lexeme_rightlist_provider_v.provide
	    (nam_var, lex_sl)
	in
	
	let sym_loi_box = Localinput_symbol_v.localinput_set_body_box_units_constructor nam_var in
	let acc_stl_rev = List.rev (sym_loi_lne_st :: acc_stl) in
	let sym_loi_st = Tree_v.make_of_node sym_loi_box acc_stl_rev in

	(sym_loi_st, lex_rem_sl)

  | _ ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Current Lexeme were one off keyword_named_units | token_l_bracket"
	(Format.sprintf "Current Lexeme >%s<" (Localinput_lexer_symbol_v.fullname sym_lex_cur))
	"Check input file"
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

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Localinput_parser_box_units_subtree_n_remainder_lexeme_sublist_by_basicname_inputbox_n_localinput_lexeme_rightlist_provider_v.ml  on vendredi 3 février 2017, 15:18:13 (UTC+0100) *)
