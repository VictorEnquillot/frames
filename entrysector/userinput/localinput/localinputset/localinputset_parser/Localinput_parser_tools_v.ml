(** {3 Localinput_parser_tools_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARLOI:Localinput_parser_tools_v";
   "What-is-it : a set of tools. Should be moved to general directory";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let debug_what_lexer what nam_mod nam_fun sym_lex =
  Management_v.debug_what_string what nam_mod nam_fun (Localinput_lexer_symbol_v.fullname sym_lex);
;; 

let debug_what_string what nam_mod nam_fun str =
  Management_v.debug_what_string what nam_mod nam_fun str
;; 

let skip_any_space ich =
  let rec apply ich =
    Scanf.bscanf ich "%0c"
      (fun c ->
	match c with  
	| ' ' | '\t' | '\n'  -> 
	    let _ = Scanf.bscanf ich "%1c" (fun c -> (Format.sprintf "%c" c)) in () ;
	    apply ich;
	| _ -> ()

      )
  in
  apply ich 
;;

let skip_string_until_eol ich =
  let rec apply ich =
    Scanf.bscanf ich "%1c"
      (fun c ->
	match c with  
	| '\n'  -> ()
	| _ -> 
	    ();
	    apply ich;
      )
  in
  apply ich 
;;

let string_until_of_char_of_in_channel cha ich =
(* needs a syntaxic analysis *)
  let rec apply ich str =
    Scanf.bscanf ich "%0c"
      (fun c ->
	match c with  
	| c when c = cha -> 
	    let _ = Scanf.bscanf ich "%1c" (fun c -> (Format.sprintf "%c" c)) in
	    str

	| _ ->
	    let cst = Scanf.bscanf ich "%1c" (fun c -> (Format.sprintf "%c" c)) in
	    let str = str ^ cst in
	    (apply ich str)
      )
  in
  apply ich ""
;;

let word_of_in_channel ich =
  let _ = string_until_of_char_of_in_channel '=' ich in
  skip_any_space ich;
  Scanf.bscanf ich "%s" (fun s -> s)
;;

let scalar_string_of_in_channel ich =
  let nam_fun = "scalar_string_of_in_channel" in
  let wor = word_of_in_channel ich in
  if not (String_v.is_generalized_float_of_string wor)
  then
    Error_messages_v.print_fatal_error nam_mod nam_fun 
      "current Word represented a float"
      (Format.sprintf ">%s<" wor)
      (Format.sprintf "Check input file") 
  else wor
;;

let name_list_string_of_in_channel ich =
  let _ = string_until_of_char_of_in_channel '{' ich in
  skip_any_space ich;
  String.trim (string_until_of_char_of_in_channel '}' ich)
;;

let localinput_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s =
  let sym_lex_pop =
    try Stack.pop sym_lex_s
    with Stack.Empty ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Localinput_lexer_keyword_end_of_file Lexeme were set in Lexeme list"
	"it is NOT : Stack is Empty"
	"Please check Localinput_lexer_lexical_analysis_v.ml"
  in
  Management_v.debug_what_string "POP@." nam_mod nam_fun (Localinput_lexer_symbol_v.fullname sym_lex_pop); 
  
  sym_lex_pop
;;


let localinput_symbol_as_fence_basic_numerical_of_localinput_lexer_symbol sym_lex =
  let nam_fun = "input_symbol_as_fence_basic_numerical_of_localinput_lexer_symbol" in
  let nam_mod = Management_v.current_module_name (documentation ()) in 

(*   >basic_numerical<             ::= word_float | word_integer *)
  debug_what_lexer "input" nam_mod nam_fun sym_lex;

  match sym_lex with
  | Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
      (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_float_symbol
	 (Localinput_lexer_basic_float_symbol_t.Localinput_lexer_basic_float_constructor str_flo)) ->
	   
	   Localinput_symbol_v.localinput_set_fence_basic_float_constructor str_flo

  | Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
      (Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_integer_symbol
	 (Localinput_lexer_basic_integer_symbol_t.Localinput_lexer_basic_integer_constructor str_int)) ->
	   
	   Localinput_symbol_v.localinput_set_fence_basic_integer_constructor str_int

  | _ ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Localinput_lexer_basic_float or integer"
	(Format.sprintf "Lexeme >%s<" (Localinput_lexer_symbol_v.fullname sym_lex))
	"Check input file"
	
;;

(*
let localinput_symbol_for_integer_block_of_localinput_lexer_symbol_stack sym_lex_s =
  let nam_mod = Management_v.current_module_name (documentation ()) in 
  let nam_fun = "input_symbol_for_integer_block_of_localinput_lexer_symbol_stack" in

(* <integer_block> ::=    integer *)
(*                  | - integer *)

  let rec apply cha lex_s =  
    
    let sym_lex_cur = Stack.pop lex_s in
    
    if debug () then Format.fprintf Format.std_formatter "%s.%s: sym_lex_cur >%s<@." nam_mod nam_fun (Localinput_lexer_symbol_v.fullname sym_lex_cur); 
    
    match sym_lex_cur with
    | Localinput_lexer_symbol_t.Localinput_lexer_token_symbol
	Localinput_lexer_token_symbol_t.Localinput_lexer_token_minus ->
	  
	  apply '-' lex_s	  
	    
    | Localinput_lexer_symbol_t.Localinput_lexer_basic_symbol
	(Localinput_lexer_basic_symbol_t.Localinput_lexer_basic_integer_symbol
	   (Localinput_lexer_basic_integer_symbol_t.Localinput_lexer_basic_integer_constructor str_int)) ->
	     
	     let str_val = Format.sprintf "%c%s" cha str_int in
	     Localinput_symbol_v.make "input_entity_local_constant_integer" str_val
	       
    | _ ->
	Error_messages_v.print_syntax_error nam_mod nam_fun
	  "Lexeme \"basic_integer\" or \"minus\" after >integer<"
	  (Format.sprintf "Lexeme >%s<" (Localinput_lexer_symbol_v.fullname sym_lex_cur))
	  "Check input file"
  in
  
  apply ' ' sym_lex_s

;;

let integer_block_subtree_of_localinput_lexer_symbol_stack sym_lex_s =
  let sym_ien = localinput_symbol_for_integer_block_of_localinput_lexer_symbol_stack sym_lex_s in
  Tree_v.make_of_leaf sym_ien
;;

let localinput_symbol_stack_of_localinput_symbol_list sym_lex_l =
  let sym_lex_s : Localinput_lexer_symbol_t.localinput_lexer_symbol 
      Stack.t = Stack.create () 
  in
  
  let sym_lex_rl = List.rev sym_lex_l in
  List.iter (fun l -> Stack.push l sym_lex_s) sym_lex_rl;
  sym_lex_s
;;

let localinput_lexer_symbol_stack_of_inputbox_name nam_ibo =
  let sym_lex_l = 
    Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide
      nam_ibo
  in
  localinput_symbol_stack_of_localinput_symbol_list sym_lex_l 
;;
*)

let top_lexeme_off_of_module_name_of_lexeme_list_of_top_lexeme_name nam_mod sym_lex_sl nam_lex_top = 
  let nam_fun = "top_lexeme_off_of_module_name_of_lexeme_list_of_top_lexeme_name" in
  
  let sym_lex_top = List.hd sym_lex_sl in 
  debug_what_lexer "Top Lexeme" nam_mod nam_fun sym_lex_top;
  let sof = Localinput_lexer_symbol_v.string_off sym_lex_top in
  Management_v.debug_what_string "sof" nam_mod nam_fun sof;
  
  let lex_top = Localinput_lexer_symbol_v.make nam_lex_top sof in
  if lex_top <> sym_lex_top
  then 
    Error_messages_v.print_syntax_error nam_mod nam_fun
      (Format.sprintf "Top Lexeme of Rightlist were >%s<" (Localinput_lexer_symbol_v.fullname lex_top) )
      (Format.sprintf "Top Lexeme >%s<" (Localinput_lexer_symbol_v.fullname (sym_lex_top)))
      (Format.sprintf "Check Top_lexeme name in module %s" nam_mod)
  else 
    sym_lex_top
;;

let string_off_of_module_name_of_lexeme_list_of_top_lexeme_name nam_mod sym_lex_sl nam_lex_top =
  let nam_fun = "string_off_of_module_name_of_lexeme_list_of_top_lexeme_name" in

  let sym_lex_top = List.hd sym_lex_sl in 
  let sof = Localinput_lexer_symbol_v.string_off sym_lex_top in

  let lex_top = Localinput_lexer_symbol_v.make nam_lex_top sof in
  if lex_top <> sym_lex_top
  then 
    Error_messages_v.print_syntax_error nam_mod nam_fun
      (Format.sprintf "Top Lexeme of Rightlist were >%s<" (Localinput_lexer_symbol_v.fullname lex_top) )
      (Format.sprintf "Top Lexeme >%s<" (Localinput_lexer_symbol_v.fullname (sym_lex_top)))
      (Format.sprintf "Check Top_lexeme name >%s<" nam_lex_top)
  else 
    sof
;;

let top_lexeme_if_is_command_of_module_name_of_lexeme_list nam_mod sym_lex_l =
  let nam_fun = "top_lexeme_if_is_command_of_module_name_of_lexeme_list" in

  let sym_lex_top = List.hd sym_lex_l in 
  if Localinput_lexer_symbol_v.is_localinput_lexer_command_symbol_off_localinput_lexer_symbol sym_lex_top
  then 
    sym_lex_top
  else
    Error_messages_v.print_syntax_error nam_mod nam_fun
      "Top Lexeme of Input list were a Localinput_lexer_command_symbol"
      (Format.sprintf "Top Lexeme >%s<" (Localinput_lexer_symbol_v.fullname (sym_lex_top)))
      "Check input file"
;;

let top_lexeme_of_predicate_of_module_name_of_lexeme_list pre nam_mod sym_lex_l =
  let nam_fun = "top_lexeme_of_predicate_of_module_name_of_lexeme_list" in

  let sym_lex_top = List.hd sym_lex_l in 
  debug_what_lexer "sym_lex_top" nam_mod nam_fun sym_lex_top;

  if pre sym_lex_top
  then 
    sym_lex_top
  else
    Error_messages_v.print_syntax_error nam_mod nam_fun
      "Top Lexeme of Input list were conformed to predicate"
      (Format.sprintf "Top Lexeme >%s<" (Localinput_lexer_symbol_v.fullname (sym_lex_top)))
      (Format.sprintf "Check Lexeme list :@.      %s<"
	 (List_v.name_in_column Localinput_lexer_symbol_v.fullname sym_lex_l)
      )
;;
