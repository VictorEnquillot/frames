(** {3 Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v";
   "Needs : LANLOI:Localinput_lexer_scanbuf_by_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "Author : François Colonna 24 février 2017 at 15:23:10+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build bna_ibo =
  let nam_fun = "build" in
  let nam_ibo = Basicname_v.string_off bna_ibo in

  let rec apply sbu lex_l str_rig_sl =
    
    try Scanf.bscanf sbu "%0c" 
	(fun c ->
	  Management_v.debug_what_string "top 0c c" nam_mod nam_fun (String_v.string_of_character c); 
	  
	  match c with  
	  | '\"' -> 
              let dquote = Scanf.bscanf sbu "%1c" (fun c -> c ) in
	      Management_v.debug_what_string "doublequote" nam_mod nam_fun (String_v.string_of_character dquote);

	      let lex = 
		Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_symbol_inside_doublequote_of_scanbuf 
		  sbu 
	      in

	      Management_v.debug_what_string "after inside_doublequote_of lex" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname lex); 
	      
	      apply sbu (lex_l @ [lex]) str_rig_sl
		
	  | '(' | ')' | '[' | ']' | '{' | '}' -> 
	      
	      let char_s = Scanf.bscanf sbu "%1c" (fun c -> c) in
	      Management_v.debug_what_string "char_s" nam_mod nam_fun (String_v.string_of_character char_s); 
	      
	      let lex = 
		Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_token_symbol_of_character 
		  char_s 
	      in
	      
	      apply sbu (lex_l @ [lex]) str_rig_sl

	  | '+' | '*' | '/' | '&' | '|' | '!' | '\'' | '`' | ':' -> 
	      
	      let char_s = Scanf.bscanf sbu "%1c" (fun c -> c) in
	      Management_v.debug_what_string "char_s" nam_mod nam_fun (String_v.string_of_character char_s); 
	      
	      let lex = 
		Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_token_symbol_of_character 
	      char_s 
	      in
	      apply sbu (lex_l @ [lex]) str_rig_sl
		
	  | '-' -> 
	      
	      let minus = Scanf.bscanf sbu "%1c" (fun c -> c) in
	      Management_v.debug_what_string "1c minus" nam_mod nam_fun (String_v.string_of_character minus); 
	      
	      let next_char = Scanf.bscanf sbu "%0c" (fun c -> c) in
	      Management_v.debug_what_string "0c next_char" nam_mod nam_fun (String_v.string_of_character next_char); 
	      
	      begin
		match next_char with
		| '-' ->    (* -- *)  
		    Tools_parser_v.skip_string_until_end_of_line sbu;
		    apply sbu lex_l str_rig_sl
		      
		| '(' ->	(* -( *)  
		    Localinput_lexer_lexical_analysis_tools_first_pass_v.comments_of_scanbuf sbu;
		    apply sbu lex_l str_rig_sl
		      
		| ' ' ->    (* - may be in an expression *)  
		    let lex = Localinput_lexer_symbol_v.localinput_lexer_token_minus in
		    apply sbu (lex_l @ [lex]) str_rig_sl
		      
		| _ -> 
		    let lex = 
		      Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_symbol_beyond_minus_of_scanbuf 
			sbu 
		    in
		    apply sbu (lex_l @ [lex]) str_rig_sl
	      end
		
	  | '\n' | ' ' | '\t' -> 
	      
	      ignore ( Scanf.bscanf sbu "%1c" (fun c -> (Format.sprintf "%c" c))) ;
	      apply sbu lex_l str_rig_sl
		
	  | 'a'..'z' -> (* word not string *)
	      
	      let str = Scanf.bscanf sbu "%s" (fun s -> s) in
	      Management_v.debug_what_string "str" nam_mod nam_fun str;
	      
	      begin
		match str with
		| "context" | "external" | "operator" | "target" -> 
		    
		    Localinput_lexer_lexical_analysis_tools_first_pass_v.debug_string_list nam_fun "str_rig_sl" str_rig_sl;
		    
		    let lex = 
		      Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_variable_kind_of_lowercase_word_of_localinput_lexer_symbol_list 
			str 
			lex_l
		    in
		    
		    apply sbu (lex_l @ [lex]) (str :: str_rig_sl)
		      
		| "define" | "print" | "read" | "set" | "title" | "write" ->
		    Localinput_lexer_lexical_analysis_tools_first_pass_v.debug_string_list nam_fun "str_rig_sl" str_rig_sl;
		    
		    let lex = 
		      Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_command_of_lowercase_word_of_fake_string_off
			str 
			"?nextvarnamed?"
		    in
		    
 		    apply sbu (lex_l @ [lex]) (str :: str_rig_sl)
		      
		| "cofactor_entity" | "external_context" | "target_operand" | "target_operator" -> 
		    
		    let lex = 
		      Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_keyword_nextvarnamed_of_lowercase_word_of_fake_string_off
			str 
			"?nextvarnamed?"
		    in
		    
		    Management_v.debug_what_string "keyword_named_lex" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname lex); 
		    
		    apply sbu (lex_l @ [lex]) str_rig_sl
		      
		      
		| "cofactor" | "type" | "units" -> 
		    
		    Localinput_lexer_lexical_analysis_tools_first_pass_v.debug_string_list nam_fun "str_rig_sl" str_rig_sl;
		    let lex = 
		      Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_keyword_defvarnamed_of_lowercase_word_of_fake_string_off
			str 
			"?defvarnamed?"
		    in
		    
 		    apply sbu (lex_l @ [lex]) (str :: str_rig_sl)
		      
		| "cofactor_basic" ->
		    
		    let lex = 
		      Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_keyword_basiced_of_lowercase_word_of_fake_string_off
			str 
			"?nextbasiced?"
		    in
		    
		    Management_v.debug_what_string "keyword_basiced_lex" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname lex); 
		    
		    apply sbu (lex_l @ [lex]) str_rig_sl
		      
		| "category" | "sector" | "database" | "databox" | "debug" | "domain" 
		| "external_name" | "external_variable" | "file" | "function" | "module" 
		| "ondomain" | "operation" ->
		    
		    let lex = 
		      Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_keyword_nextstringed_of_lowercase_word_of_fake_string_off
			str 
			"?nextstringed?"
		    in
		    
		    Management_v.debug_what_string "keyword_named_lex" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname lex); 
		    
		    apply sbu (lex_l @ [lex]) str_rig_sl
		      
		| "end" ->
		    
                    let lex = 
		      Localinput_lexer_symbol_v.localinput_lexer_keyword_blocknamed_end_constructor 
			"?blocknamed?"
		    in
                    
                    apply sbu (lex_l @ [lex]) str_rig_sl
		      
		| "stop" ->
		    
		    Localinput_lexer_lexical_analysis_tools_first_pass_v.debug_string_list nam_fun "str_rig_sl" str_rig_sl;
		    
		    let lex = 
		      Localinput_lexer_symbol_v.localinput_lexer_command_stop_constructor 
			nam_ibo 
		    in
		    
		    lex_l @ [lex] 
			      
		| _ ->
		    let lex = 
		      Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_symbol_of_lowercase_word 
			str 
		    in 
		    Management_v.debug_what_string "lex" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname lex); 
		    
		    apply sbu (lex_l @ [lex]) str_rig_sl
	      end
		
	  | 'A'..'Z' ->
	      
	      let str = Scanf.bscanf sbu "%s" (fun s -> s) in
	      Management_v.debug_what_string "str" nam_mod nam_fun str;
	      
	      let lex = 
		Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_symbol_of_word_bare 
		  str 
	      in
	      
	      Management_v.debug_what_string "lex" nam_mod nam_fun (Localinput_lexer_symbol_v.fullname lex); 
	      
	      apply sbu (lex_l @ [lex]) str_rig_sl
		
	  | '0'..'9' ->
	      
	      let lex = 
		Localinput_lexer_lexical_analysis_tools_first_pass_v.localinput_lexer_basic_numerical_of_string_of_scanbuf 
		  "" 
		  sbu 
	      in
              apply sbu (lex_l @ [lex]) str_rig_sl
		
	  | _ ->
	      let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	      Error_messages_v.print_lexical_error __LOC__ nam_fun
		"current character were defined in menu"
		(Format.sprintf ">%c< in string >%s<" c str)
		(Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
		
		
	)
	
    with End_of_file -> lex_l
	
  in

  let sbu = Localinput_lexer_scanbuf_by_basicname_inputbox_provider_v.provide bna_ibo in
  
  apply sbu [] []
    
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
(* done with do_provider_without_register.sh Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v.ml  on vendredi 24 février 2017, 15:27:09 (UTC+0100) *)
