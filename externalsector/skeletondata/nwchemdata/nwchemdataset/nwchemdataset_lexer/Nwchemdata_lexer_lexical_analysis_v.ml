(** {3 Nwchemdata_lexer_lexical_analysis_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LEXNWC:Nwchemdata_lexer_lexical_analysis_v";
   "Needs : LEXNWC:Nwchemdata_lexer_lexical_analysis_tools_v"; 
   "Definition : ";
   "Improve : a single character is capitalized_strict";
   "Author : François Colonna 26 septembre 2016 at 10:44:07+02:00 no more lowercase for Databox_name";
   "Author : François Colonna 29 septembre 2016 at 11:15:13+02:00 getcwd => getenv (\"LEXNWC\")";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

open Nwchemdata_lexer_lexical_analysis_tools_v;; (* Just a Try *)

(** {6 Lexical analysis} *)

let nwchemdata_lexer_at_numeric_of_string_of_scanbuf wor_sig sbu =
  let nam_fun = "nwchemdata_lexer_at_numeric_of_string_of_scanbuf" in

  let wor = word_of_function_name_of_message_of_scanbuf nam_fun "numeric" sbu in

  match wor_sig with 
  | "-" -> 
    if String_v.is_float_of_string wor
    then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_float (wor_sig^wor)
    else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_integer (wor_sig^wor)
  | "" ->
    if String_v.is_float_of_string wor
    then 
      if String_v.is_float_positive_of_string wor
      then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_float wor
      else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_float wor
    else 
      if String_v.is_integer_positive_of_string wor
      then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_integer wor
      else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_integer wor

  | _ ->
      Error_messages_v.print_lexical_error nam_mod nam_fun
	"current character were '-' | ''"
	(Format.sprintf "%s" wor_sig)
	"Check database file"
;;

let nwchemdata_lexer_symbol_beyond_minus_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_symbol_beyond_minus_of_scanbuf" in
(* [-]123    *)
(* [-]3.8    *)
(* [-].83    *)

  let top_c = character_top_of_function_name_of_message_of_scanbuf nam_fun "" sbu in
    
  match top_c with
  | '0'..'9' | '.' ->
      nwchemdata_lexer_at_numeric_of_string_of_scanbuf "-" sbu 

  | _ ->
      begin
	let str = Scanf.bscanf sbu "%s" (fun s -> s) in
	Error_messages_v.print_fatal_error nam_mod nam_fun
	  "current character were \"-\""
	  (Format.sprintf "Current character >%c< in string >%s<" top_c str)
	  (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
      end
;;

let nwchemdata_lexer_character_mark_symbol_of_character = function
  | '('  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_l_parenthesis
  | ')'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_r_parenthesis
  | '['  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_l_bracket
  | ']'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_r_bracket 
  | '{'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_l_curly
  | '}'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_r_curly
  | '>'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_greater_than
  | '<'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_less_than
  | '='  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_equal
  | '+'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_plus
  | '*'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_times
  | '-'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_minus
  | '/'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_divide
  | '&'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_ampersand
  | '|'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_pipe
  | '!'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_bang
  | '\"' -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_double_quote
  | '\'' -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_quote
  | '`'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_back_quote
  | ':'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_colon
  | ';'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_semicolon
  | ','  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_comma
  | '.'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_dot
  | '#'  -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_hash
  | cha  ->
      let nam_fun = "nwchemdata_lexer_character_mark_symbol_of_character" in
      let nam_mod = Management_v.current_module_name (documentation ()) in		
      Error_messages_v.print_lexical_error nam_mod nam_fun
	"current character were defined in menu above"
	(Format.sprintf "this character >%c<" cha)
	"Check database file"
;;

let nwchemdata_lexer_symbol_of_lowercase_word str =
  let nam_fun = "nwchemdata_lexer_symbol_of_lowercase_word" in
  
  Management_v.debug_what_string "input str" nam_mod nam_fun str;

  if String_v.is_lowercase_of_string str 
  then
    if String_v.is_alphabetic_of_string str 
    then 
      begin
	match str with 
	| "nelec" ->
	    Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_ecp_electron_number

	| "ul" ->
	    Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_ecp_local

	| _ ->
	    Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_lowercase_alphabetic str

      end
    else 
      if String_v.is_alphanumeric_of_string str 
      then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_lowercase_alphanumeric str
      else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_lowercase_anyword str
  else 
    Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_anycase_anyword str
;;

let nwchemdata_lexer_symbol_of_capitalized_word str =
  let nam_fun = "nwchemdata_lexer_symbol_of_capitalized_word" in
  
  Management_v.debug_what_string "input str" nam_mod nam_fun str;

  if String_v.is_capitalized_strict_of_string str 
  then
    if String_v.is_alphabetic_of_string str 
    then 
	Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_alphabetic str
    else 
      if String_v.is_alphanumeric_of_string str
      then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric str
      else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_capitalized_anyword str
  else 
    if String_v.is_capitalized_of_string str 
    then
      if String_v.is_alphabetic_of_string str 
      then 
	if String_v.is_uppercase_of_string str 
	then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_uppercase_alphabetic str
	else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_capitalized_alphabetic str
      else 
	if String_v.is_alphanumeric_of_string str
	then 
	  if String_v.is_uppercase_of_string str 
	  then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_uppercase_alphanumeric str
	  else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_capitalized_alphanumeric str
	else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_capitalized_anyword str
    else 
      Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_anycase_anyword str
;;

let nwchemdata_lexer_symbol_inside_double_quote_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_symbol_inside_double_quote_of_scanbuf" in

  let character_list_inside_double_quote sbu =
    let rec apply c_l sbu =
      let next_char = character_pop_of_function_name_of_message_of_scanbuf nam_fun "next_char" sbu in

      if next_char <> '\"'
      then 
	apply (next_char :: c_l) sbu
      else
	c_l 
    in
    List.rev (apply [] sbu) 
  in

  let char_l = character_list_inside_double_quote sbu in
  let str = String_v.string_of_char_list char_l in

  Management_v.debug_what_string "str" nam_mod nam_fun str; 

  let sym_lex_nwc =
    if String.contains str ' '
    then
      Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_string str
    else
      nwchemdata_lexer_symbol_of_capitalized_word str 
  in

  Management_v.debug_what_string "output sym_lex_nwc" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname sym_lex_nwc); 
  sym_lex_nwc
;;

let nwchemdata_lexer_version_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_version_of_scanbuf" in

  let ini_cha_l = ['v'] in

  let rec apply sbu cha_l =
    
    let pop_c = character_pop_of_function_name_of_message_of_scanbuf nam_fun "version" sbu in 
    
      match pop_c with  
      | '0'..'9' | '.' -> 
	  
          apply sbu (pop_c::cha_l)
	
      | ' ' | '\t' | '\n' ->

	  cha_l
	
      | _ ->
	  begin
	    let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	    Error_messages_v.print_fatal_error nam_mod nam_fun
	      "current character were '0'..'9' | '.' "
	      (Format.sprintf ">%c< in string >%s<" pop_c str)
	      (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
	  end
  in
  
  let out_cha_l = List.rev (apply sbu ini_cha_l) in
  let ver = String_v.string_of_character_list out_cha_l in
  Nwchemdata_lexer_symbol_v.nwchemdata_lexer_variable_version ver
;;

let nwchemdata_lexer_revlist_at_vee_of_scanbuf sbu =
  (* let nam_fun = "nwchemdata_lexer_revlist_at_vee_of_scanbuf" in *)

  [
   Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_end_of_line;
   nwchemdata_lexer_version_of_scanbuf sbu;
 ]
;;

let nwchemdata_lexer_symbol_at_space_character_of_scanbuf top_cha sbu =
  let nam_fun = "nwchemdata_lexer_symbol_at_space_of_scanbuf" in

  Management_v.debug_what_string "top c" nam_mod nam_fun (String_v.string_of_character top_cha); 

  let nam_spa = 
    match top_cha with
    | ' ' -> "blank"
    | '\t' -> "tabulation"
    | _ ->
	Error_messages_v.print_fatal_error nam_mod nam_fun
	  "current character were ' ' | '\n'"
	  (Format.sprintf "top character is >%c<" top_cha)
	  (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
  in

  let n = count_of_character_of_scanbuf top_cha sbu in

  let sym_lex =
    match n with
    | 1 -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_space nam_spa
    | n -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_variable_many_space 
	  (Format.sprintf "%i %s" n nam_spa)
  in
  
  let nex_cha = Scanf.bscanf sbu "%0c" (fun c -> c) in
  match nex_cha with 
  | '\n' -> 
      Scanf.bscanf sbu "%1c" (fun c -> ());
      Nwchemdata_lexer_symbol_v.nwchemdata_lexer_variable_spaced_end_of_line 
	(Format.sprintf "%i %s" n nam_spa)
  | _ -> sym_lex
	
;;


let nwchemdata_lexer_symbol_at_end_of_line_character_of_scanbuf sbu =
  (* let nam_fun = "nwchemdata_lexer_symbol_at_end_of_line_character_of_scanbuf" in *)

  let top_cha = '\n' in
  let n = count_of_character_of_scanbuf top_cha sbu in

  match n with
    | 1 -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_end_of_line
    | n -> Nwchemdata_lexer_symbol_v.nwchemdata_lexer_variable_many_space 
	  (Format.sprintf "%i end_of_line" n)
;;

let nwchemdata_lexer_hash_header_line_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_hash_header_line_of_scanbuf" in

(* "# Elements                             References" *)

  let ini_str = "# E" in
  let rem_str = string_until_end_of_line_of_scanbuf sbu in
  let str = ini_str ^ rem_str in

  Management_v.debug_what_string "str" nam_mod nam_fun str; 

  let str_reg = "^Elements[ ]+References$" in
  let regexp = Str.regexp str_reg in
  if (Str.string_match regexp rem_str 0)
  then
    Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_header str
  else
    if String.length rem_str = 0
    then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_empty
    else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_reference str
;;

let nwchemdata_lexer_hash_dashed_line_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_hash_dashed_line_of_scanbuf" in

(* "# --------                             ----------" *)

  let ini_str = "# -" in
  let rem_str = string_until_end_of_line_of_scanbuf sbu in
  let str = ini_str ^ rem_str in

  Management_v.debug_what_string "str" nam_mod nam_fun str; 

  let str_reg = "^# [-]+[ ]+[-]+$" in
  let regexp = Str.regexp str_reg in
  if (Str.string_match regexp str 0)
  then
    Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_dashed str
  else
    if String.length rem_str = 0
    then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_empty
    else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_reference str
;;

let nwchemdata_lexer_databox_name_of_string str =
  let nam_fun = "nwchemdata_lexer_databox_name_of_string" in

  Management_v.debug_what_string "str" nam_mod nam_fun str; 

(* Apply Frames Conventions to names *)
      let nam = Scanf.sscanf (String.trim str) "%s " (fun s -> 
	String_v.substitute_all_string_from_of_string "-" "_" s)
      in

      Management_v.debug_what_string "nam" nam_mod nam_fun nam; 

      if (String_v.is_empty_of_string nam)
      then 
	Error_messages_v.print_fatal_error nam_mod nam_fun
	  "Basis_set name in EMSL comment line were defined"
	  (Format.sprintf "remainder of EMSL comment line is >%s<" str)
	  "Check Basis_set file"
      else
	Nwchemdata_lexer_symbol_v.nwchemdata_lexer_variable_databox_name nam
;;

let nwchemdata_lexer_hash_space_space_line_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_hash_space_space_line_of_scanbuf" in

(* #  cc-pVTZ  EMSL ... *)  (* Emsl *)
(* #                    *)  (* Empty *)
(* # <any string>   ... *)

  let ini_str = "#  " in
  let rem_str = string_until_end_of_line_of_scanbuf sbu in
  let str = ini_str ^ rem_str in
  Management_v.debug_what_string "rem_str" nam_mod nam_fun rem_str; 

  let str_reg = ".*  EMSL  Basis Set Exchange Library" in
  let regexp = Str.regexp str_reg in

  if (Str.string_match regexp rem_str 0)
  then 
    nwchemdata_lexer_databox_name_of_string rem_str
  else 
    if (String_v.is_empty_of_string rem_str)
    then Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_empty
    else Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_reference str
;;

let nwchemdata_lexer_hash_space_uppercase_line_of_character_of_scanbuf ini_cha sbu =
  let nam_fun = "nwchemdata_lexer_hash_space_uppercase_line_of_character_of_scanbuf" in

(* # Elements       ... *)  (* Header *)
(* # H              ... *)  (* Mendeleiev *)

  Management_v.debug_what_string "ini_cha" nam_mod nam_fun (String_v.string_of_character ini_cha);

  let nex_cha = Scanf.bscanf sbu "%0c" (fun c -> c) in

  Management_v.debug_what_string "nex_cha" nam_mod nam_fun (String_v.string_of_character nex_cha);

  match (ini_cha, nex_cha) with
  | ('E', 'l') ->

      nwchemdata_lexer_hash_header_line_of_scanbuf sbu

  | ('J', _) | ('Q', _) | ('A'..'I', _) | ('K'..'P', _) | ('R'..'Z', _) -> 

      let ini_str = Format.sprintf "# %c" ini_cha in
      let rem_str = string_until_end_of_line_of_scanbuf sbu in
      let str = ini_str ^ rem_str in
      
      Management_v.debug_what_string "str" nam_mod nam_fun str;
      
      Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_reference str
	
  | _ ->
      begin
	let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	Error_messages_v.print_fatal_error nam_mod nam_fun
	  "current character were Uppercase except "
	  (Format.sprintf "current characters are >(%c, %c)< in string >%s<" ini_cha nex_cha str)
	  (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
      end
;;

let nwchemdata_lexer_basis_name_print_revlist_of_string str =
  let nam_fun = "nwchemdata_lexer_basis_name_print_revlist_of_string" in

(* "BASIS "ao basis" PRINT" *)
(* "SO "so basis" PRINT" *)

  Management_v.debug_what_string "str" nam_mod nam_fun str;
 
  let st2 = String.sub str 0 2 in
  match st2 with
  | "BA" -> 
      let regexp = Str.regexp "BASIS \"\\([a-z ]+\\)\" PRINT" in
      let nam_bas = Str.replace_first regexp "\\1" str in
      
      if (Str.string_match regexp str 0)
      then
	[
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_print; 
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_blank; 
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_variable_basis_name_atomic_orbital nam_bas;
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_blank; 
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_basis; 
       ]
      else
	Error_messages_v.print_lexical_error nam_mod nam_fun
	  "BASIS ... PRINT string"
	  (Format.sprintf ">%s<" str)
	  "Check Datafile file"
  
  | "SO" ->
      let regexp = Str.regexp "SO \"\\([a-z ]+\\)\" PRINT" in
      let nam_so = Str.replace_first regexp "\\1" str in
      
      if (Str.string_match regexp str 0)
      then
	[
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_end_of_line; 
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_print; 
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_blank; 
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_variable_basis_name_spin_orbit nam_so;
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_blank; 
	 Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_spin_orbit; 
       ]
      else
	Error_messages_v.print_lexical_error nam_mod nam_fun
	  "SO ... PRINT"
	  (Format.sprintf ">%s<" str)
	  "Check Datafile file"
  | _ ->
	Error_messages_v.print_lexical_error nam_mod nam_fun
	  "BASIS | SO"
	  (Format.sprintf ">%s<" str)
	  "Check Datafile file"
;;

let nwchemdata_lexer_b_revlist_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_b_revlist_of_scanbuf" in

(* "BASIS" *)
  let wor = word_of_function_name_of_message_of_scanbuf nam_fun "basis" sbu in
  Management_v.debug_what_string "first word" nam_mod nam_fun wor;

  let lex_rl =
    match wor with
    | "BASIS" ->
	let str = String.trim (string_until_end_of_line_of_scanbuf sbu) in
	nwchemdata_lexer_basis_name_print_revlist_of_string (wor ^ " " ^str)
    | _ ->
	[
	 nwchemdata_lexer_symbol_of_capitalized_word wor;
       ]
  in	  
  Management_v.debug_what_string "output lex" nam_mod nam_fun (List_v.name_in_column Nwchemdata_lexer_symbol_v.fullname lex_rl);
  lex_rl
;;

let nwchemdata_lexer_s_revlist_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_s_revlist_of_scanbuf" in

(* "SO" *)
  let wor = word_of_function_name_of_message_of_scanbuf nam_fun "so" sbu in
  Management_v.debug_what_string "first word" nam_mod nam_fun wor;

  let lex_rl =
    match wor with
    | "SO" -> 
	let str = String.trim (string_until_end_of_line_of_scanbuf sbu) in
	nwchemdata_lexer_basis_name_print_revlist_of_string (wor ^ " " ^str)
    | _ ->
	[
	 nwchemdata_lexer_symbol_of_capitalized_word wor;
       ]
  in	  
  Management_v.debug_what_string "output lex" nam_mod nam_fun (List_v.name_in_column Nwchemdata_lexer_symbol_v.fullname lex_rl);
  lex_rl
;;

let nwchemdata_lexer_o_revlist_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_o_revlist_of_scanbuf" in

(* Options:Help:Feedback *)

  let wor = word_of_function_name_of_message_of_scanbuf nam_fun "so" sbu in
  Management_v.debug_what_string "first word" nam_mod nam_fun wor;

  match wor with
  | "Options:Help:Feedback" -> 
      ignore (String.trim (string_until_end_of_line_of_scanbuf sbu));
      [Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_end_of_file]

  | _ ->
      [
       nwchemdata_lexer_symbol_of_capitalized_word wor;
     ]
;;

let nwchemdata_lexer_e_revlist_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_e_revlist_of_scanbuf" in

(* "ECP" *)
(* "END" *)

  let wor = word_of_function_name_of_message_of_scanbuf nam_fun "so" sbu in
  Management_v.debug_what_string "first word" nam_mod nam_fun wor;
  
  match wor with
  | "ECP" -> 
      ignore (String.trim (string_until_end_of_line_of_scanbuf sbu));
    [
     Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_ecp; 
   ]
  | "END" -> 
      ignore (String.trim (string_until_end_of_line_of_scanbuf sbu));
    [
     Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_end; 
   ]
  | _ ->
    [
     nwchemdata_lexer_symbol_of_capitalized_word wor;
   ]
;;

let nwchemdata_lexer_hash_space_line_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_hash_space_line_of_scanbuf" in

(* #  cc-pVTZ  EMSL ... *)  (* Emsl *)
(* #                    *)  (* Empty *)

(* # Elements       ... *)  (* Header *)
(* # --------       ... *)  (* Dashed *)
(* # H              ... *)  (* Mendeleiev *)

(* # <any string>   ... *)

  let pop_c = character_pop_of_function_name_of_message_of_scanbuf nam_fun "hash_space" sbu in
  match pop_c with  
  | ' ' -> 
      
      nwchemdata_lexer_hash_space_space_line_of_scanbuf sbu 
	
  | 'A'..'Z' ->
      
      nwchemdata_lexer_hash_space_uppercase_line_of_character_of_scanbuf pop_c sbu
	
  | '-' -> 
      
      nwchemdata_lexer_hash_dashed_line_of_scanbuf sbu 
	
  | '\n' -> 
      
      Nwchemdata_lexer_symbol_v.nwchemdata_lexer_hashline_empty
	
  | _ ->
      begin
	let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	Error_messages_v.print_fatal_error nam_mod nam_fun
	  "current character were ' ' | 'A'..'Z' | '-'"
	  (Format.sprintf "current character is >%c< in string >%s<" pop_c str)
	  (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
      end
;;

let contraction_element_revlist_of_scanbuf sbu =
  let nam_fun = "contraction_element_revlist_of_scanbuf" in

(* 10sp,... *)
  let rec numeric sbu c_l =
    let top_cha = character_top_of_function_name_of_message_of_scanbuf nam_fun "numeric" sbu in
    match top_cha with  
    | '0'..'9' ->
	let pop_c = character_pop_of_function_name_of_message_of_scanbuf nam_fun "0..9" sbu in
	numeric sbu (c_l@[pop_c])
    | 'a'..'z' ->
	(c_l)
    | _ ->
      begin
	let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	Error_messages_v.print_fatal_error nam_mod nam_fun
	  "current character were '0'.. '9' | 'a'..'z'"
	  (Format.sprintf "current character is >%c< in string >%s<" top_cha str)
	  (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
      end
  in
  let n_l = numeric sbu [] in

  let rec shell sbu c_l =
    let top_cha = character_top_of_function_name_of_message_of_scanbuf nam_fun "shell" sbu in
    match top_cha with  
    | ',' | ')' |']' -> 
	(c_l)
    | 'd' | 'f' | 'g' | 'h' | 'i' | 'p' | 's' ->
	let pop_c = character_pop_of_function_name_of_message_of_scanbuf nam_fun "shell" sbu in
	shell sbu (c_l@[pop_c])
    | _ ->

      begin
	let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	Error_messages_v.print_fatal_error nam_mod nam_fun
	  "current character were ',' | ')' |'0'.. '9' | 'a'..'z'"
	  (Format.sprintf "current character is >%c< in string >%s<" top_cha str)
	  (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
      end
  in
  let s_l = shell sbu [] in

  let str = String_v.string_of_character_list n_l in
  let lex_integer = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_integer str in
  let str = String_v.string_of_character_list s_l in
  let lex_shell = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_variable_shell_name str in
  let lex_rl = [lex_shell; lex_integer] in
  Management_v.debug_what_string "output lex" nam_mod nam_fun (List_v.name_in_column Nwchemdata_lexer_symbol_v.fullname lex_rl);
  lex_rl
;;

let hash_databox_line_revlist_of_scanbuf sbu =
  let nam_fun = "hash_databox_line_revlist_of_scanbuf" in

(* "#BASIS SET: (10s,5sp,1d) -> [3s,2sp,1d]" *)

  let rec apply sbu rev_l =
    let top_cha = character_top_of_function_name_of_message_of_scanbuf nam_fun "current" sbu in
    match top_cha with  
    | 'B' -> (* #BASIS ... *)
	
	ignore (word_of_function_name_of_message_of_string_regexp_of_scanbuf nam_fun "" "BASIS" sbu);
	let lex = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_hash_basis in
	apply sbu (lex :: rev_l)

    | 'S' -> (* SET: *)
	ignore (word_of_function_name_of_message_of_string_regexp_of_scanbuf nam_fun "" "SET:" sbu);
	let lex_sem = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_colon in
	let lex_set = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_set in

	apply sbu (lex_sem :: (lex_set :: rev_l))
	  
    | ' ' -> 
	ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "blank" sbu);
	let lex = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_space "blank" in
	apply sbu (lex :: rev_l)

    | '(' -> 
	ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "l_parenthesis" sbu);
	let lex_lpa = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_l_parenthesis in
	let lex_rl = contraction_element_revlist_of_scanbuf sbu in
	apply sbu (lex_rl @ (lex_lpa :: rev_l))

    | ')' -> 
	ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "r_parenthesis" sbu);
	let lex_rpa = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_r_parenthesis in
	apply sbu (lex_rpa :: rev_l)

    | '[' -> 
	ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "l_bracket" sbu);
	let lex_lbr = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_l_bracket in
	let lex_rl = contraction_element_revlist_of_scanbuf sbu in
	apply sbu (lex_rl @ (lex_lbr :: rev_l))

    | ']' -> 
	ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "r_bracket" sbu);
	let lex_rbr = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_r_bracket in
	(lex_rbr :: rev_l)

    | '-' -> 
	ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "skipped" sbu);
    	apply sbu (rev_l)

    | ',' -> 
	ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "skipped" sbu);
	let lex_com = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_comma in
	let lex_rl = contraction_element_revlist_of_scanbuf sbu in
	apply sbu (lex_rl @ (lex_com :: rev_l))

    | '>' -> 
	ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "skipped" sbu);
	let lex = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_symbol_r_arrow in
	apply sbu (lex :: rev_l)

    | _ ->
	begin
	  let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	  Error_messages_v.print_fatal_error nam_mod nam_fun
	    "current character were 'B' | 'S' | '>' | ' ' | '-' | '(' | ')' | '[ ' | ']'"
	    (Format.sprintf ">%c< in string >%s<" top_cha str)
	    (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
	end
	  
  in
  
  apply sbu []
;;

let nwchemdata_lexer_capitalized_revlist_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_capitalized_revlist_of_scanbuf" in

  let top_cha = character_top_of_function_name_of_message_of_scanbuf nam_fun "A..Z" sbu in

  match top_cha with
  | 'B' ->
      
      nwchemdata_lexer_b_revlist_of_scanbuf sbu
	
  | 'E' ->
      
      nwchemdata_lexer_e_revlist_of_scanbuf sbu
	
  | 'O' ->
      
      nwchemdata_lexer_o_revlist_of_scanbuf sbu
	
  | 'S' ->
      
      nwchemdata_lexer_s_revlist_of_scanbuf sbu
	
  | _ -> 
      let str = Scanf.bscanf sbu "%s" (fun s -> s) in
      Management_v.debug_what_string "first character not B|E|S str" nam_mod nam_fun str; 
      
      let lex = nwchemdata_lexer_symbol_of_capitalized_word str in
      Management_v.debug_what_string "output lex" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname lex);
      [lex]
;;

let nwchemdata_lexer_hash_revlist_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_hash_revlist_of_scanbuf" in

(* "#BASIS..." *)
(* "# String"  *)
(* "# "        *)

  let top_cha = character_top_of_function_name_of_message_of_scanbuf nam_fun "hash" sbu in
  match top_cha with  
  | 'B' -> (* #BASIS SET: *)
      
      hash_databox_line_revlist_of_scanbuf sbu
	
  | ' ' ->
      ignore (character_pop_of_function_name_of_message_of_scanbuf nam_fun "' '" sbu);
      [
       Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_end_of_line;
       nwchemdata_lexer_hash_space_line_of_scanbuf sbu;
     ]
	
  | _ ->
      begin
	let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	Error_messages_v.print_fatal_error nam_mod nam_fun
	  "current character were 'B' | '\n' | ' '"
	  (Format.sprintf ">%c< in string >%s<" top_cha str)
	  (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
      end
;;

(* Main recursion *)

let nwchemdata_lexer_symbol_revlist_of_scanbuf sbu =
  let nam_fun = "nwchemdata_lexer_symbol_revlist_of_scanbuf" in    

  let rec apply sbu lex_rl =

    let pre_lex = List.hd lex_rl in
    Management_v.debug_what_string "previous lexeme" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname pre_lex); 

    let top_cha = character_top_of_function_name_of_message_of_scanbuf nam_fun "entry" sbu in    
    match top_cha with  

      | '\"' -> 

          let dquote = character_pop_of_function_name_of_message_of_scanbuf nam_fun "dquote" sbu in
	  let lex_dqu = nwchemdata_lexer_character_mark_symbol_of_character dquote in
	  let lex = nwchemdata_lexer_symbol_inside_double_quote_of_scanbuf sbu in

	  let l_l = [lex_dqu; lex; lex_dqu] in
	  apply sbu (l_l @ lex_rl)
	    
      | '(' | ')' | '[' | ']' | '{' | '}' | '+' | '*' | '/' | '&' | '|' | '!' | '\'' | '`' | ':'  -> 
	  
	  let char_s = character_pop_of_function_name_of_message_of_scanbuf nam_fun "char_s" sbu in
	  Management_v.debug_what_string "char_s" nam_mod nam_fun (String_v.string_of_character char_s);

	  let lex = nwchemdata_lexer_character_mark_symbol_of_character char_s in
	  apply sbu (lex :: lex_rl)

      | '-' -> 

	  ignore (character_pop_of_function_name_of_message_of_scanbuf "minus" nam_fun sbu);
	  let next_char = character_top_of_function_name_of_message_of_scanbuf "next_char" nam_fun sbu in

	  begin
	    match next_char with
	    | '>' ->    (* -> *)  
		ignore (character_pop_of_function_name_of_message_of_scanbuf "arrow" nam_fun sbu);
		let lex = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_symbol_r_arrow in
		apply sbu (lex :: lex_rl)

	    | ' ' ->    (* - may be in an expression *)  
		let lex = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_minus in
		apply sbu (lex :: lex_rl)

            | _ -> 
		let lex = nwchemdata_lexer_symbol_beyond_minus_of_scanbuf sbu in
		apply sbu (lex :: lex_rl)
	    end

      | ' ' 
      | '\t' -> 

	  let lex = nwchemdata_lexer_symbol_at_space_character_of_scanbuf top_cha sbu in
	  apply sbu (lex :: lex_rl)

      | '\n' -> 

	  let lex = nwchemdata_lexer_symbol_at_end_of_line_character_of_scanbuf sbu in
	  apply sbu (lex :: lex_rl)

      | '0'..'9' ->
		
 	  let lex = nwchemdata_lexer_at_numeric_of_string_of_scanbuf "" sbu in
	  apply sbu (lex :: lex_rl)

      | '#' -> 

	  ignore (character_pop_of_function_name_of_message_of_scanbuf "hash" nam_fun sbu);
	  let l_l = nwchemdata_lexer_hash_revlist_of_scanbuf sbu in
          apply sbu (l_l @ lex_rl)

      | 'v' -> (* version *)

	  ignore (character_pop_of_function_name_of_message_of_scanbuf "vee" nam_fun sbu);
	  let l_l = nwchemdata_lexer_revlist_at_vee_of_scanbuf sbu in
	  apply sbu (l_l @ lex_rl)

      | 'a'..'u' | 'w'..'z' -> (* word not string *)
	  
	  let str = Scanf.bscanf sbu "%s" (fun s -> s) in

	  Management_v.debug_what_string "a..z str" nam_mod nam_fun str;
	  let lex = nwchemdata_lexer_symbol_of_lowercase_word str in
	  Management_v.debug_what_string "lex" nam_mod nam_fun (Nwchemdata_lexer_symbol_v.fullname lex);

	  apply sbu (lex :: lex_rl)

      | 'A'..'Z' ->

	  let l_l = nwchemdata_lexer_capitalized_revlist_of_scanbuf sbu in
          apply sbu (l_l @ lex_rl)

      | '@' -> (* end of file *)

	  let lex = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_keyword_end_of_file in
	  lex :: lex_rl

      | _ ->
	  let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	  Error_messages_v.print_fatal_error nam_mod nam_fun
	    "current character were defined in menu"
	    (Format.sprintf ">%c< in string >%s<" top_cha str)
	    (Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
  in
  
  apply sbu [Nwchemdata_lexer_symbol_v.nwchemdata_lexer_character_mark_beginning_of_line]
    
;; 

let current_fullnameofdirectory = Unix.getenv ("LEXNWC");;

let databox_fullnameoffile_of_databox_name nam_nbo =
  let fnd = current_fullnameofdirectory in
  let nam_tri = Context_name_trio_by_fullnameofdirectory_provider_v.provide fnd in
  let nam_nba = Trio_v.left_off_trio nam_tri in   
    Databox_fullnameoffile_by_databox_name_n_database_name_provider_v.provide
      (nam_nbo, nam_nba)
;;

let nwchemdata_lexer_symbol_revlist_of_databox_name nam_nbo =
  let nam_fun = "nwchemdata_lexer_symbol_revlist_of_databox_name" in

  let fno_nbo = databox_fullnameoffile_of_databox_name nam_nbo in
  
  if not (Sys.file_exists fno_nbo)
  then 
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "Nwchemdata_databox_file >%s< exists" fno_nbo)
      "it does NOT"
      "check"
  else
    begin
      let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
      let result =
        let sbu = File_v.scanbuf_of_fullname fno_nbo in
	nwchemdata_lexer_symbol_revlist_of_scanbuf sbu
        (* let sym_lex_l = nwchemdata_lexer_symbol_revlist_of_scanbuf sbu in *)
(* Add Databox_name on Top *)
        (* let sym_lex_nbo = Nwchemdata_lexer_symbol_v.nwchemdata_lexer_basic_word_lowercase_constructor nam_nbo in *)
        (* (sym_lex_nbo :: sym_lex_l) *)
      in
      Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
      result
    end
;;
