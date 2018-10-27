(** {3 Localinput_lexer_lexical_analysis_tools_first_pass_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_lexical_analysis_tools_first_pass_v";
   "Needs : ";
   "Needed-by :"; 
   "Author : François Colonna 23 février 2017 at 12:06:14+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Lexical analysis} *)

let debug_localinput_lexer_symbol_list nam_fun lex_l =
  Management_v.debug_what_string "lex_l" nam_mod nam_fun
    (List_v.name_in_column Localinput_lexer_symbol_v.name lex_l)
;;

let debug_string_list nam_fun nam_lis str_l =
  Management_v.debug_what_string nam_lis nam_mod nam_fun 
    (List_v.name_in_column (fun s->s) str_l)
;;

let localinput_lexer_basic_numerical_of_string_of_scanbuf str_sig sbu =
  let nam_fun = "localinput_lexer_basic_numerical_of_string_of_scanbuf" in

  let str_num = str_sig ^ (Scanf.bscanf sbu "%s" (fun s -> s)) in

  Management_v.debug_what_string "numerical" nam_mod nam_fun str_num; 

  if String_v.is_float_of_string str_num
  then
    Localinput_lexer_symbol_v.localinput_lexer_basic_float_constructor str_num
  else
    Localinput_lexer_symbol_v.localinput_lexer_basic_integer_constructor str_num
;;

let localinput_lexer_symbol_beyond_minus_of_scanbuf sbu =
  let nam_fun = "localinput_lexer_symbol_beyond_minus_of_scanbuf" in
(* [-]123    *)
(* [-]3.8    *)

  let cur_c = Scanf.bscanf sbu "%0c" (fun c -> c) in
  Management_v.debug_what_string "0c cur_c" nam_mod nam_fun (String_v.string_of_character cur_c); 
    
  match cur_c with
  | '0'..'9' | '.' ->
      localinput_lexer_basic_numerical_of_string_of_scanbuf "-" sbu 

  | _ ->
      let str = Scanf.bscanf sbu "%s" (fun s -> s) in
      Error_messages_v.print_lexical_error __LOC__ nam_fun
	"current character were \"-\""
	(Format.sprintf "Current character >%c< in string >%s<" cur_c str)
	(Format.sprintf "Check file >%s<" (File_v.name_of_scanbuf sbu))
;;


let comments_of_scanbuf sbu =
(* [-](- *)
  let nam_fun = "comments_of_scanbuf" in
  
  let left_parenthesis = Scanf.bscanf sbu "%1c" (fun c -> c) in
  let next_char = Scanf.bscanf sbu "%1c" (fun c -> c) in
  Management_v.debug_what_string "left_parenthesis" nam_mod nam_fun (String_v.string_of_character left_parenthesis); 
  Management_v.debug_what_string "next_char" nam_mod nam_fun (String_v.string_of_character next_char); 

  
  if next_char <> '-'
  then
    begin
      let nam_fun = "comments_of_scanbuf" in
      Error_messages_v.print_lexical_error __LOC__ nam_fun
	"character following \'(\' were \'-\'"
	(Format.sprintf "\'%c\'" next_char)
	"Check input file"
      end
    else

      let rec apply tri_cha sbu =

	let (fir_cha, sec_cha, thi_cha) = tri_cha in
	
	Management_v.debug_what_string "fir_cha" nam_mod nam_fun (String_v.string_of_character fir_cha); 
	Management_v.debug_what_string "sec_cha" nam_mod nam_fun (String_v.string_of_character sec_cha); 
	Management_v.debug_what_string "thi_cha" nam_mod nam_fun (String_v.string_of_character thi_cha); 

	if tri_cha = ('-', ')', '-')
	then
	  ()
	else
	  begin
	    let new_cha = Scanf.bscanf sbu "%1c" (fun c -> c) in
	    let tri_new = (sec_cha, thi_cha, new_cha) in
	    apply tri_new sbu 
	  end
      in
      
      let thi_cha = Scanf.bscanf sbu "%1c" (fun c -> c) in
      let tri_cha = (left_parenthesis, next_char, thi_cha) in

      apply tri_cha sbu
;;

let localinput_lexer_token_symbol_of_character = function
  | '!'  -> Localinput_lexer_symbol_v.localinput_lexer_token_bang
  | '&'  -> Localinput_lexer_symbol_v.localinput_lexer_token_ampersand
  | '('  -> Localinput_lexer_symbol_v.localinput_lexer_token_l_parenthesis
  | ')'  -> Localinput_lexer_symbol_v.localinput_lexer_token_r_parenthesis
  | '*'  -> Localinput_lexer_symbol_v.localinput_lexer_token_times
  | '+'  -> Localinput_lexer_symbol_v.localinput_lexer_token_plus
  | '-'  -> Localinput_lexer_symbol_v.localinput_lexer_token_minus
  | '/'  -> Localinput_lexer_symbol_v.localinput_lexer_token_divide
  | ':'  -> Localinput_lexer_symbol_v.localinput_lexer_token_colon
  | '.'  -> Localinput_lexer_symbol_v.localinput_lexer_token_dot
  | '['  -> Localinput_lexer_symbol_v.localinput_lexer_token_l_bracket
  | '\"' -> Localinput_lexer_symbol_v.localinput_lexer_token_doublequote
  | '\'' -> Localinput_lexer_symbol_v.localinput_lexer_token_quote
  | ']'  -> Localinput_lexer_symbol_v.localinput_lexer_token_r_bracket 
  | '`'  -> Localinput_lexer_symbol_v.localinput_lexer_token_back_quote
  | '{'  -> Localinput_lexer_symbol_v.localinput_lexer_token_l_curly
  | '|'  -> Localinput_lexer_symbol_v.localinput_lexer_token_pipe
  | '}'  -> Localinput_lexer_symbol_v.localinput_lexer_token_r_curly
  | cha  ->
      let nam_fun = "localinput_lexer_token_symbol_of_character" in
      Error_messages_v.print_lexical_error __LOC__ nam_fun
	"current character were defined in menu above"
	(Format.sprintf "this character >%c<" cha)
	"Check input file"
;;

let localinput_lexer_command_of_lowercase_word_of_fake_string_off low_wor sof_fak =
  let nam_fun = "localinput_lexer_command_of_lowercase_word" in
  
  Management_v.debug_what_string "low_wor" nam_mod nam_fun low_wor;

  let str_arg = "localinput_lexer_command_" ^ low_wor ^ "_constructor" in
  try Localinput_lexer_symbol_v.make str_arg sof_fak
  with Failure _ ->
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "str_arg >%s< exist as argument for Localinput_lexer_symbol_v.make" str_arg)
      "It does NOT"
      "Check Localinput_lexer_symbol_v.make or input file"
;;

let localinput_lexer_keyword_basiced_of_lowercase_word_of_fake_string_off low_wor sof_fak =
  let nam_fun = "localinput_lexer_keyword_basiced_of_lowercase_word" in
  
  Management_v.debug_what_string "low_wor" nam_mod nam_fun low_wor;
  Management_v.debug_what_string "sof_fak" nam_mod nam_fun sof_fak;

  let str_arg = "localinput_lexer_keyword_basiced_" ^ low_wor ^ "_constructor" in

  try Localinput_lexer_symbol_v.make str_arg sof_fak 
  with Failure _ ->
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "str_arg >%s< exist as argument for Localinput_lexer_symbol_v.make" str_arg)
      "It does NOT"
      "Check Localinput_lexer_symbol_v.make or input file"
;;

let localinput_lexer_keyword_blocknamed_of_lowercase_word_of_fake_string_off low_wor sof_fak =
  let nam_fun = "localinput_lexer_keyword_blocknamed_of_lowercase_word" in
  
  Management_v.debug_what_string "low_wor" nam_mod nam_fun low_wor;
  Management_v.debug_what_string "sof_fak" nam_mod nam_fun sof_fak;

  let str_arg = "localinput_lexer_keyword_blocknamed_" ^ low_wor ^ "_constructor" in

  try Localinput_lexer_symbol_v.make str_arg sof_fak 
  with Failure _ ->
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "str_arg >%s< exist as argument for Localinput_lexer_symbol_v.make" str_arg)
      "It does NOT"
      "Check Localinput_lexer_symbol_v.make or input file"
;;

let localinput_lexer_keyword_defvarnamed_of_lowercase_word_of_fake_string_off low_wor sof_fak =
  let nam_fun = "localinput_lexer_keyword_defvarnamed_of_lowercase_word" in
  
  Management_v.debug_what_string "low_wor" nam_mod nam_fun low_wor;
  Management_v.debug_what_string "sof_fak" nam_mod nam_fun sof_fak;

  let str_arg = "localinput_lexer_keyword_defvarnamed_" ^ low_wor ^ "_constructor" in

  try Localinput_lexer_symbol_v.make str_arg sof_fak 
  with Failure _ ->
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "str_arg >%s< exist as argument for Localinput_lexer_symbol_v.make" str_arg)
      "It does NOT"
      "Check Localinput_lexer_symbol_v.make or input file"
;;

let localinput_lexer_keyword_nextvarnamed_of_lowercase_word_of_fake_string_off low_wor sof_fak =
  let nam_fun = "localinput_lexer_keyword_nextvarnamed_of_lowercase_word" in
  
  Management_v.debug_what_string "low_wor" nam_mod nam_fun low_wor;
  Management_v.debug_what_string "sof_fak" nam_mod nam_fun sof_fak;

  let str_arg = "localinput_lexer_keyword_nextvarnamed_" ^ low_wor ^ "_constructor" in

  try Localinput_lexer_symbol_v.make str_arg sof_fak 
  with Failure _ ->
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "str_arg >%s< exist as argument for Localinput_lexer_symbol_v.make" str_arg)
      "It does NOT"
      "Check Localinput_lexer_symbol_v.make or input file"
;;

let localinput_lexer_keyword_nextstringed_of_lowercase_word_of_fake_string_off low_wor sof_fak =
  let nam_fun = "localinput_lexer_keyword_nextstringed_of_lowercase_word" in
  
  Management_v.debug_what_string "low_wor" nam_mod nam_fun low_wor;
  Management_v.debug_what_string "sof_fak" nam_mod nam_fun sof_fak;

  let str_arg = "localinput_lexer_keyword_nextstringed_" ^ low_wor ^ "_constructor" in

  try Localinput_lexer_symbol_v.make str_arg sof_fak 
  with Failure _ ->
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "str_arg >%s< exist as argument for Localinput_lexer_symbol_v.make" str_arg)
      "It does NOT"
      "Check Localinput_lexer_symbol_v.make or input file"
;;

let localinput_lexer_variable_kind_of_lowercase_word_of_localinput_lexer_symbol_list low_wor lex_l =
  let nam_fun = "localinput_lexer_variable_kind_of_lowercase_word_of_localinput_lexer_symbol_list" in
  
  Management_v.debug_what_string "low_wor" nam_mod nam_fun low_wor;

  let nam_var = Localinput_lexer_symbol_v.string_off (List_v.last_element_off_list lex_l) in
  Management_v.debug_what_string "nam_var" nam_mod nam_fun nam_var;
  
  try Localinput_lexer_symbol_v.make ("localinput_lexer_variable_kind_" ^ low_wor ^ "_constructor") nam_var
  with Failure _ ->
      Error_messages_v.print_lexical_error __LOC__ nam_fun
	"current lowercase word were one of context | external | operator | target "
	(Format.sprintf "this string >%s<" low_wor)
	"Check input file"
;;

let localinput_lexer_symbol_of_lowercase_word str =
  let nam_fun = "localinput_lexer_symbol_of_lowercase_word" in
  
  Management_v.debug_what_string "str" nam_mod nam_fun str;

  try Localinput_lexer_symbol_v.make ("localinput_lexer_token_" ^ str) ""
  with Failure _ ->
    try Localinput_lexer_symbol_v.make ("localinput_lexer_keyword_unnamed" ^ str)  "" 
    with Failure _ ->
      Localinput_lexer_symbol_v.localinput_lexer_basic_word_bare_lowercase_constructor str
;;

let localinput_lexer_symbol_of_word_bare str =
  let nam_fun = "localinput_lexer_symbol_of_word_bare" in
  Management_v.debug_what_string "str" nam_mod nam_fun str;
  
  if String_v.is_capitalized_of_string str 
  then
      Localinput_lexer_symbol_v.localinput_lexer_basic_word_bare_capitalized_constructor str
  else 
    if String_v.is_lowercase_of_string str 
    then
      Localinput_lexer_symbol_v.localinput_lexer_basic_word_bare_lowercase_constructor str
    else 
      if String_v.is_uppercase_of_string str 
      then    
	Localinput_lexer_symbol_v.localinput_lexer_basic_word_bare_uppercase_constructor str
      else
	Localinput_lexer_symbol_v.localinput_lexer_basic_word_bare_anycase_constructor str
;;	  

let localinput_lexer_symbol_of_word_doublequoted str =
  let nam_fun = "localinput_lexer_symbol_of_word_doublequoted" in
  Management_v.debug_what_string "str" nam_mod nam_fun str;
  
  if String_v.is_capitalized_of_string str 
  then
      Localinput_lexer_symbol_v.localinput_lexer_basic_word_doublequoted_capitalized_constructor str
  else 
    if String_v.is_lowercase_of_string str 
    then
      Localinput_lexer_symbol_v.localinput_lexer_basic_word_doublequoted_lowercase_constructor str
    else 
      if String_v.is_uppercase_of_string str 
      then    
	Localinput_lexer_symbol_v.localinput_lexer_basic_word_doublequoted_uppercase_constructor str
      else
	Localinput_lexer_symbol_v.localinput_lexer_basic_word_doublequoted_anycase_constructor str
;;	  

let localinput_lexer_symbol_inside_doublequote_of_scanbuf sbu =
  let nam_fun = "localinput_lexer_symbol_inside_doublequote_of_scanbuf" in

  let character_list_inside_doublequote sbu =
    let rec apply c_l sbu =
      let next_char = Scanf.bscanf sbu "%1c" (fun c -> c) in

      if next_char <> '\"'
      then 
	apply (next_char :: c_l) sbu
      else
	c_l 
    in
    List.rev (apply [] sbu) 
  in

  let char_l = character_list_inside_doublequote sbu in
  let str = String_v.string_of_char_list char_l in
  Management_v.debug_what_string "str" nam_mod nam_fun str;

  if String.contains str ' '
  then
    Localinput_lexer_symbol_v.localinput_lexer_basic_string_doublequoted_constructor str
  else
    localinput_lexer_symbol_of_word_doublequoted str
;;

