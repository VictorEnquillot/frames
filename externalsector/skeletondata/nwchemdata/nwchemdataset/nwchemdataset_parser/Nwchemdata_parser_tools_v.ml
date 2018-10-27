(** {3 Nwchemdata_parser_tools_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : PARNWC:Nwchemdata_parser_tools_v";
   "Needs : COM:";
   "Needed-by :"; 
   "What-is-it : a set of tools. Should be moved to general directory";
   "Invariant :";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let nwchemdata_lexer_symbol_stack_of_nwchemdata_lexer_symbol_revlist sym_lex_rl =
  let sym_lex_s : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol 
      Stack.t = Stack.create () 
  in

  Stack.push Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_end_of_file sym_lex_s;

  List.iter 
    (fun l -> Stack.push l sym_lex_s) sym_lex_rl;
  sym_lex_s ;
;;

let nwchemdata_lexer_symbol_stack_of_databox_name nam_dbo =
  let sym_lex_rl = 
    Nwchemdata_lexer_lexical_analysis_v.nwchemdata_lexer_symbol_revlist_of_databox_name 
      nam_dbo
  in
  nwchemdata_lexer_symbol_stack_of_nwchemdata_lexer_symbol_revlist sym_lex_rl 
;;

(* let nwchemdata_lexer_symbol_stack_of_nwchemdata_fullnameoffile fno_nwc = *)
(*   let sym_lex_rl =  *)
(*     Nwchemdata_lexer_lexical_analysis_v.nwchemdata_lexer_symbol_revlist_of_database_fullnameoffile  *)
(*       fno_nwc *)
(*   in *)
(*   nwchemdata_lexer_symbol_stack_of_nwchemdata_symbol_revlist sym_lex_rl  *)
(* ;; *)

let is_nwchemdata_lexer_symbol_center_name sym_lex = 
  (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_alphabetic sym_lex)
|| (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_alphabetic sym_lex)
|| (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic sym_lex)
;;

let is_nwchemdata_lexer_symbol_shell_name sym_lex = 
  (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_alphabetic sym_lex)
|| (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_alphabetic sym_lex)
|| (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic sym_lex)
;;

let nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex message = 
  Error_messages_v.print_syntax_error nam_mod nam_fun
    ("Nwchemdata_lexer_symbol were "^ message)
    (Format.sprintf "%s" (Nwchemdata_lexer_symbol_v.fullname sym_lex))
    "Please check database file in directory database_gaussian_nwchem"
;;
    
let nwchemdata_lexer_symbol_predicate_of_string = function
  | "is_nwchemdata_lexer_variable_databox_name" ->
      Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_databox_name 

  | str ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "nwchemdata_lexer_symbol_predicate_of_string"
        (Format.sprintf ">%s< were a known predicate" str)
        "It is NOT" "Check"
;;


let nwchemdata_symbol_predicate_of_string = function
  | "is_nwchemdata_set_body_variable_centername_constructor" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_centername_constructor

  | "is_nwchemdata_set_body_variable_shellname_symbol" ->
     Nwchemdata_symbol_v.is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_symbol

  | str ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "nwchemdata_symbol_predicate_of_string"
        (Format.sprintf ">%s< were a known predicate" str)
        "It is NOT" "Check"
;;

(* Get string_off in Lexer reverse list *)

(* let nwchemdata_lexer_string_off_of_string_predicate str_pre = *)
(*   let nam_fun = "nwchemdata_lexer_string_off_of_predicate" in *)

(*   let fno_nwc = Parameters_general_provider_v.provide "databox-file" in *)

(*   let sym_lex_rl =  *)
(*     Nwchemdata_lexer_symbol_reverse_list_by_database_fullnameoffile_provider_v.provide *)
(*       fno_nwc *)
(*   in *)
(*   let pre = nwchemdata_lexer_symbol_predicate_of_string str_pre in *)
(*   let sym_lex = try List.find pre sym_lex_rl  *)
(*   with Not_found -> *)
(*     Error_messages_v.print_fatal_error nam_mod nam_fun *)
(*       (Format.sprintf "Predicate >%s< were true in reverse list." str_pre) *)
(*       (Format.sprintf "reverse list of Lexeme is :@.   %s"  *)
(* 	 (List_v.name_in_column Nwchemdata_lexer_symbol_v.fullname sym_lex_rl) *)
(*       )   *)
(*       "Check" *)
      
(*   in *)
(*   Nwchemdata_lexer_symbol_v.string_off sym_lex *)
(* ;; *)

let string_of_leaf_string_predicate_of_nwchemdata_symbol_subtree_list str_pre sym_nwc_tl =
  let nam_fun = "string_of_leaf_string_predicate_of_nwchemdata_symbol_subtree_list" in

  let pre = nwchemdata_symbol_predicate_of_string str_pre in
  
  let sym_nwc_l = List.flatten 
      (List.map
	 Tree_v.leaf_node_list_off_tree 
	 sym_nwc_tl)
  in
  
  let sym_nwc =
    try List.find pre sym_nwc_l
    with Not_found ->
      Error_messages_v.print_fatal_error nam_mod nam_fun
	(Format.sprintf "Predicate >%s< were true in list" str_pre)
	(Format.sprintf "list is :@.%s" 
	   (List_v.name_in_column Nwchemdata_symbol_v.fullname sym_nwc_l)
	)
	"Please check Parser_v.ml"
  in
  
  Nwchemdata_symbol_v.string_off sym_nwc
;;

let nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s =
  let sym_lex_pop =
    try Stack.pop sym_lex_s
    with Stack.Empty ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Nwchemdata_lexer_keyword_end_of_file Lexeme were set in Lexeme list"
	"it is NOT : Stack is Empty"
	"Please check Nwchemdata_lexer_lexical_analysis_v.ml"
  in

  Management_v.debug_what_string "POP" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_lex_pop); 
  
  sym_lex_pop
;;

let nwchemdata_lexer_top_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s =
  let sym_lex_top =
    try Stack.top sym_lex_s
    with Stack.Empty ->
      Error_messages_v.print_syntax_error nam_mod nam_fun
	"Nwchemdata_lexer_keyword_end_of_file Lexeme were set in Lexeme list"
	"it is NOT : Stack is Empty"
	"Please check Nwchemdata_lexer_lexical_analysis_v.ml"
  in
	
  Management_v.debug_what_string "TOP" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_lex_top); 
  
  sym_lex_top
;;

let skip_pop nam_mod nam_fun sym_lex_s =
  ignore (nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod ("SKIP_POP in "^nam_fun) sym_lex_s);
;;

let leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack sym_nwc sym_lex_s =
  let nam_fun = "leaf_of_nwchemdata_symbol_of_nwchemdata_lexer_symbol_stack" in

  ignore (nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s);
  Tree_v.make_of_leaf sym_nwc
;;


let skip_any_space_until_end_of_line_left_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s =
  
  let rec apply lex_s =
    let sym_top = Stack.top lex_s in
    
    Management_v.debug_what_string "SKIP till EOL left" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_top); 

    if ( (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_space sym_top)
       || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_many_space sym_top)
       || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_blank sym_top)
	)
    then 
      begin
	ignore (Stack.pop lex_s);
	Management_v.debug_what_string "SKIP till EOL left" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_top); 
	apply lex_s
      end
    else
      ()
  in
  
  apply sym_lex_s

;;


let skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s =
  
  let rec apply lex_s =
    let sym_top = Stack.top lex_s in

    Management_v.debug_what_string "SKIP till EOL" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_top); 

    match sym_top with
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_space s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_many_space s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_blank s) ->

	ignore (Stack.pop lex_s);
	Management_v.debug_what_string "SKIP till EOL left" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_top); 
	apply lex_s


    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_spaced_end_of_line s) ->

	ignore (Stack.pop lex_s);
	Management_v.debug_what_string "SKIP till EOL left" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_top); 
    | _ -> ()
	  
  in
  
  apply sym_lex_s 

;;


let skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s =
  
  let rec apply lex_s =
    let sym_top = Stack.top lex_s in
    Management_v.debug_what_string "SKIP LINES till Something" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_top); 

    match sym_top with
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_space s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_many_space s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_blank s) ->
	
	ignore (Stack.pop lex_s);
    Management_v.debug_what_string "SKIP LINES till Something" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_top); 
	apply lex_s

    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line s)
    || (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_variable_spaced_end_of_line s) ->
	
	ignore (Stack.pop lex_s);
	Management_v.debug_what_string "SKIP LINES till Something" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_top); 
	apply lex_s

    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end_of_file s) ->

	()

    | _ ->
	  ()
  in
  
  apply sym_lex_s 

;;

let skip_any_empty_lines_until_end_of_file_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s =

    skip_any_empty_lines_until_something_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;

    let sym_lex_pop = nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
    
    match sym_lex_pop with 
    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_keyword_end_of_file s ->

	()

    | s when Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_anycase_anyword s ->
	
	let str = Nwchemdata_lexer_symbol_v.string_off s in
	if str = "Options:Help:Feedback"
	then ()
	else nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	    "Nwchemdata_lexer_basic_word_anycase_anyword (\"Options:Help:Feedback\")"
    | _ -> 
	nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_basic_word_anycase_anyword (\"Options:Help:Feedback\")"


;;

let skip_line_beginning_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "skip_line_beginning_of_nwchemdata_lexer_symbol_stack" in

let sym_lex_pop = nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  
  match sym_lex_pop with 
  | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_character_mark_beginning_of_line s) -> ()
  | _ -> 
      nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop 
	"Nwchemdata_lexer_character_mark_beginning_of_line"
;;


let nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_float nam_mod nam_fun sym_lex_pop =
    match sym_lex_pop with
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_float s) ->

        let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_fence_float_positive_constructor str in
	Tree_v.make_of_leaf sym_nwc 
	  
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_float s) ->
	    
        let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_fence_float_nonnegative_constructor str in
	Tree_v.make_of_leaf sym_nwc 
	      
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_float s) ->
 	
        let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_fence_float_negative_constructor str in
	Tree_v.make_of_leaf sym_nwc 
	  
    | _ -> 
	nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_float : any kind of float"
;;

let nwchemdata_lexer_symbol_leaf_for_spaced_float_of_nwchemdata_lexer_symbol_stack sym_lex_s =
  let nam_fun = "nwchemdata_lexer_symbol_leaf_for_spaced_float_of_nwchemdata_lexer_symbol_stack" in
  
(* <spaced_float ::=  <space> float *)
(* <space> *)
  skip_any_space_and_end_of_line_of_nwchemdata_lexer_symbol_stack nam_mod nam_fun sym_lex_s;
  let sym_lex_pop = nwchemdata_lexer_pop_symbol_of_module_name_of_function_name_of_stack nam_mod nam_fun sym_lex_s in
  nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_float nam_mod nam_fun sym_lex_pop
;;

let nwchemdata_lexer_symbol_leaf_of_nwchemdata_lexer_symbol_pop_positive_nonnegative_float nam_mod nam_fun sym_lex_pop =
    match sym_lex_pop with
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_float s) ->

        let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_fence_float_positive_constructor str in
	Tree_v.make_of_leaf sym_nwc 
	  
    | s when (Nwchemdata_lexer_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_float s) ->
	    
        let str = Nwchemdata_lexer_symbol_v.string_off s in
	let sym_nwc = Nwchemdata_symbol_v.nwchemdata_set_fence_float_nonnegative_constructor str in
	Tree_v.make_of_leaf sym_nwc 
	  
    | _ -> 
	nwchemdata_lexer_symbol_syntax_error nam_mod nam_fun sym_lex_pop
	  "Nwchemdata_lexer_basic_word_numeric_positive_float | Nwchemdata_lexer_basic_word_numeric_non_negative_float"
;;

let rename_unset_center_name_of_center_name_of_nwchemdata_symbol nam_cen sym_nwc =
  let nam_nwc = Nwchemdata_symbol_v.name sym_nwc in
  let sof_nwc = Nwchemdata_symbol_v.string_off sym_nwc in
  
  let sof_new = String_v.substitute_all_string_from_of_string  
      "? center name ?" 
      nam_cen 
      sof_nwc 
  in
  
  Nwchemdata_symbol_v.make nam_nwc sof_new
;;

let check_invariants_of_databox_name_of_nwchemdata_symbol_tree nam_dbo sym_nwc_t =
  let nam_fun = "check_invariants_of_databox_name_of_nwchemdata_symbol_tree" in

(* Invariants *)
  if not (Tree_v.is_complete sym_nwc_t)
  then
    begin
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod nam_fun
  	(Format.sprintf "Symbol Tree were Complete parsed from Databox >%s<" nam_dbo )
  	(Format.sprintf "it is NOT.@.Elements for completeness:@.%s"
	   (Tree_v.string_of_completeness sym_nwc_t)
	)
  	"Check Database files"
    end
  else
    begin
      let inn_nod_l = Tree_v.inner_node_list_off_tree sym_nwc_t in
      if not (List_v.is_once_list_of_list inn_nod_l)
      then
	begin
  	  let nam_mod = Management_v.current_module_name (documentation ()) in
  	  let non_nod_l = List_v.non_once_list_off_list inn_nod_l in
	  
  	  Error_messages_v.print_fatal_error nam_mod nam_fun
  	  (Format.sprintf "Symbol Tree had all its Inner-nodes unique parsed from Databox >%s<" nam_dbo)
  	    (Format.sprintf "list of non unique inner nodes :@.   %s"
  	       (List_v.name_in_column Nwchemdata_symbol_v.fullname non_nod_l)
  	    )
  	    "Check Database files"
	end
      else 
	()
    end
;;

