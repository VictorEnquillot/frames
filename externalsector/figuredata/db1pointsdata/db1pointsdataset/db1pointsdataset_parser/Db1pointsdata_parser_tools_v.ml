(** {3 Db1pointsdata_parser_tools_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARDB1:Db1pointsdata_parser_tools_v";
   "What-is-it : a set of tools. Should be moved to general directory";
   "Author : François Colonna 10th March 2016 top of lexeme list is [...; databox_name; database_name]";
   "Author : François Colonna 04 juin 2017 at 12:20:39+02:00 Basicname";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let debug_what_lexer what nam_mod nam_fun sym_lex =
  Management_v.debug_what_string "sym_lex" nam_mod nam_fun (Db1pointsdata_lexer_symbol_v.fullname sym_lex);
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
      (Format.sprintf "Check db1points file") 
  else wor
;;

let name_list_string_of_in_channel ich =
  let _ = string_until_of_char_of_in_channel '{' ich in
  skip_any_space ich;
  String.trim (string_until_of_char_of_in_channel '}' ich)
;;

let leaf_block_of_what_of_db1pointsdata_lexer_symbol_stack wha_ien sym_lex_s =
  let nam_fun = "leaf_block_of_what_of_db1pointsdata_lexer_symbol_stack" in

  debug_what_lexer "db1points" nam_mod nam_fun (Stack.top sym_lex_s);

  let sym_lex_cur = Stack.pop sym_lex_s in 

  debug_what_lexer " pop " nam_mod nam_fun sym_lex_cur;

  let sof_lex = Db1pointsdata_lexer_symbol_v.string_off sym_lex_cur in
  let sym_ien = Db1pointsdata_symbol_v.make wha_ien sof_lex in
  
  Tree_v.make_of_leaf sym_ien
;;

let db1pointsdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s =
  let sym_lex_top =
    try Stack.top sym_lex_s
    with Stack.Empty ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Db1pointsdata_lexer_keyword_end_of_file Lexeme were set in Lexeme list"
	"it is NOT : Stack is Empty"
	"Please check Db1pointsdata_lexer_lexical_analysis_v.ml"
  in
	
  Management_v.debug_what_string "sym_lex_top" nam_mod nam_fun (Db1pointsdata_lexer_symbol_v.fullname sym_lex_top); 
  
  sym_lex_top
;;

let db1pointsdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s =
  let sym_lex_pop =
    try Stack.pop sym_lex_s
    with Stack.Empty ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Db1pointsdata_lexer_keyword_end_of_file Lexeme were set in Lexeme list"
	"it is NOT : Stack is Empty"
	"Please check Db1pointsdata_lexer_lexical_analysis_v.ml"
  in
  Management_v.debug_what_string "POP@." nam_mod nam_fun (Db1pointsdata_lexer_symbol_v.fullname sym_lex_pop); 
  
  sym_lex_pop
;;

let string_for_string_block_of_db1pointsdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "string_for_string_block_of_db1pointsdata_lexer_symbol_stack" in
	
  let sym_lex_cur = Stack.pop sym_lex_s in

  debug_what_lexer "pop sym_lex_cur" nam_mod nam_fun sym_lex_cur; 

  match sym_lex_cur with
  | w when (Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_basic_string_constructor w
	  || Db1pointsdata_lexer_symbol_v.is_db1pointsdata_lexer_basic_word_symbol_off_db1pointsdata_lexer_symbol w ) ->
	
	Db1pointsdata_lexer_symbol_v.string_off sym_lex_cur
	
  | _ ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	  "Lexeme ( | string | word_capitalized | )"
	  (Format.sprintf "Lexeme >%s<@."
	     (Db1pointsdata_lexer_symbol_v.fullname sym_lex_cur) 
	  )
	  "Check wether '(' and ')' are missing around string-expression in db1points file"
;;

let db1pointsdata_symbol_as_fence_basic_float_of_db1pointsdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "db1pointsdata_symbol_as_fence_basic_float_of_db1pointsdata_lexer_symbol_stack" in

(*  db1pointsdata_lexer_keyword_basic_float "-2.0" *)

  let sym_lex_nex = Stack.pop sym_lex_s in
  
  match sym_lex_nex with
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
      (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
	 (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor str_flo)) ->
	   
	   Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_numerical_float_constructor str_flo

  | _ ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Db1pointsdata_lexer_basic_float"
	(Format.sprintf "Lexeme >%s<" (Db1pointsdata_lexer_symbol_v.fullname sym_lex_nex))
	"Check db1points file"
	
;;

let db1pointsdata_symbol_as_fence_basic_numerical_of_db1pointsdata_lexer_symbol sym_lex =
  let nam_fun = "db1pointsdata_symbol_as_fence_basic_numerical_of_db1pointsdata_lexer_symbol" in

(*   >basic_numerical<             ::= word_float | word_integer *)
  debug_what_lexer "db1points" nam_mod nam_fun sym_lex;

  match sym_lex with
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol
      (Db1pointsdata_lexer_basic_symbol_t.Db1pointsdata_lexer_basic_float_symbol
	 (Db1pointsdata_lexer_basic_float_symbol_t.Db1pointsdata_lexer_basic_float_constructor str_flo)) ->
	   
	   Db1pointsdata_symbol_v.db1pointsdata_set_fence_basic_numerical_float_constructor str_flo

  | _ ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Db1pointsdata_lexer_basic_float or integer"
	(Format.sprintf "Lexeme >%s<" (Db1pointsdata_lexer_symbol_v.fullname sym_lex))
	"Check db1points file"
	
;;

let db1pointsdata_lexer_symbol_stack_of_db1pointsdata_lexer_symbol_list sym_lex_l =
  let sym_lex_s : Db1pointsdata_lexer_symbol_t.db1pointsdata_lexer_symbol 
      Stack.t = Stack.create () 
  in
  
  let sym_lex_rl = List.rev sym_lex_l in
  List.iter (fun l -> Stack.push l sym_lex_s) sym_lex_rl;
  sym_lex_s
;;

let db1pointsdata_lexer_symbol_stack_of_basicname_databox bna_dbo =
  let sym_lex_l = 
    Db1pointsdata_lexer_lexical_analysis_v.db1pointsdata_lexer_symbol_list_of_basicname_databox 
      bna_dbo
  in
  db1pointsdata_lexer_symbol_stack_of_db1pointsdata_lexer_symbol_list sym_lex_l 
;;

let next_name_of_current_predicate_of_db1pointsdata_lexer_symbol_stack ppr sym_lex_s =
  let sym_lex =
    try Stack_v.find_next_non_destructive_of_current_predicate_of_stack
      ppr
      sym_lex_s 
    with Failure _ -> 
      failwith "Not_found:Db1pointsdata_parser_tools_v.next_name_of_current_predicate_of_db1pointsdata_lexer_symbol_stack"
  in
	
  Db1pointsdata_lexer_symbol_v.string_off sym_lex
;;

let check_invariants_of_basicname_databox_of_db1pointsdata_symbol_tree bna_dbo sym_db1_t =
  let nam_fun = "check_invariants_of_db1pointsdata_symbol_tree" in
  
(* Invariants *)
  if not (Tree_v.is_complete sym_db1_t)
  then
    begin
      let nam_dbo = Basicname_v.string_off bna_dbo in
      Error_messages_v.print_fatal_error nam_mod nam_fun
  	(Format.sprintf "Symbol Tree were Complete parsed from Databox >%s<" nam_dbo )
  	(Format.sprintf "it is NOT.@.Elements for completeness:@.%s"
	   (Tree_v.string_of_completeness sym_db1_t)
	)
  	"Check Database files"
    end
  else
    begin
      let nam_dbo = Basicname_v.string_off bna_dbo in
      let inn_nod_l = Tree_v.inner_node_list_off_tree sym_db1_t in
      if not (List_v.is_once_list_of_list inn_nod_l)
      then
	begin
  	  let non_nod_l = List_v.non_once_list_off_list inn_nod_l in
  	  Error_messages_v.print_fatal_error nam_mod nam_fun
  	  (Format.sprintf "Symbol Tree had all its Inner-nodes unique parsed from Databox >%s<" nam_dbo)
  	    (Format.sprintf "list of non unique inner nodes :@.   %s"
  	       (List_v.name_in_column Db1pointsdata_symbol_v.fullname non_nod_l)
  	    )
  	    "Check Database files"
	end
      else 
	()
    end
;;
