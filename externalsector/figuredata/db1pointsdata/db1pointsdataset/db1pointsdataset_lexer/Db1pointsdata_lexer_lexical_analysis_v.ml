(** {3 Db1pointsdata_lexer_lexical_analysis_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LEXDB1:Db1pointsdata_lexer_lexical_analysis_v";
   "Register : None";
   "Needed-by :"; 
   "Definition : ";
   "Author : François Colonna 21th March 2016 A is treated as an uppercase word not capitalized word";
   "Author : François Colonna 21th March 2016 S_B is uppercase";
   "Author : François Colonna 19 septembre 2016 at 08:01:37+02:00 minus added";
   "Author : François Colonna 26 septembre 2016 at 10:47:13+02:00 Databox_name is no more lowercase";
   "Author : François Colonna 29 septembre 2016 at 11:26:06+02:00 getcwd => getenv (\"LEXDB1\")";
   "Author : François Colonna 25 novembre 2016 at 09:23:01+01:00 added # and nam_dbo";
   "Author : François Colonna 03 juin 2017 at 16:04:01+02:00 Basicname";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let current_fullnameofdirectory = Unix.getenv ("LEXDB1");;

let databox_fullnameoffile_of_basicname_databox bna_dbo =
  let fnd = current_fullnameofdirectory in
  let bna_tri = Basicname_trio_by_fullnameofdirectory_provider_v.provide fnd in
  let bna_dba = Trio_v.left_off_trio bna_tri in   
  Databox_fullnameoffile_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
;;

let skip_string_until_end_of_line_of_scanbuf sbu =
  let rec apply sbu =
    Scanf.bscanf sbu "%1c"
      (fun c ->
	match c with  
	| '\n'  -> ()
	| _ -> 
	    ();
	    apply sbu;
      )
  in
  apply sbu 
;;

(** {6 Lexical analysis} *)

let db1pointsdata_lexer_basic_numerical_of_string_of_scanbuf str_sig sbu =
  let nam_fun = "db1pointsdata_lexer_basic_numerical_of_string_of_scanbuf" in

  let str_num = str_sig ^ (Scanf.bscanf sbu "%s" (fun s -> s)) in
  Management_v.debug_what_string "str_num" nam_mod nam_fun str_num;

  if String_v.is_float_of_string str_num
  then
    Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_basic_float_constructor str_num
  else
    let str = Scanf.bscanf sbu " %s " (fun s -> s) in
    Error_messages_v.print_syntax_error __LOC__ nam_fun
      "Current string were a Float"
      (Format.sprintf "\"%s\" followed by string \"%s\"" str_num str)
      "Check Databox file"
;;

let comments_of_scanbuf sbu =
  let nam_fun = "comments_of_scanbuf" in
(* [-](- *)
  
  let left_parenthesis = Scanf.bscanf sbu "%1c" (fun c -> c) in
  let next_char = Scanf.bscanf sbu "%1c" (fun c -> c) in
  Management_v.debug_what_string "left_parenthesis" nam_mod nam_fun (Format.sprintf "%c" left_parenthesis);
  Management_v.debug_what_string "next_char" nam_mod nam_fun (Format.sprintf "%c" next_char);
    
  if next_char <> '-'
  then
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      "character following \'(\' were \'-\'"
      (Format.sprintf "\'%c\'" next_char)
      "Check db1points file"
  else
    
    let rec apply tri_cha sbu =
      
      let (fir_cha, sec_cha, thi_cha) = tri_cha in

      (* Management_v.debug_what_string "tri_cha" nam_mod nam_fun (Triplet_v.name (Format.sprintf "%c") tri_cha);      *) 
      
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

let db1pointsdata_lexer_symbol_of_word_lowercase wor =
  let nam_fun = "db1pointsdata_lexer_symbol_of_word_lowercase" in
  
  Management_v.debug_what_string "argument wor" nam_mod nam_fun wor;      

  if String_v.is_lowercase_of_string wor 
  then
    begin
      try Db1pointsdata_lexer_symbol_v.make ("db1pointsdata_lexer_command_" ^ wor) ""
      with Failure _ ->
	try Db1pointsdata_lexer_symbol_v.make ("db1pointsdata_lexer_token_" ^ wor) ""
	with Failure _ ->
	  try Db1pointsdata_lexer_symbol_v.make ("db1pointsdata_lexer_keyword_" ^ wor)  "" 
	  with Failure _ ->
	    try Db1pointsdata_lexer_symbol_v.make ("db1pointsdata_lexer_variable_kind_" ^ wor) ""
	    with Failure _ ->
	      Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_basic_word_lowercase_constructor wor
    end
  else 
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      "current word were lowercase as it starts with a lowercase character"
      wor
      "Check input file"
;;

let db1pointsdata_lexer_symbol_of_word_capitalized wor =
  let nam_fun = "db1pointsdata_lexer_symbol_of_word_capitalized" in

  Management_v.debug_what_string "argument wor" nam_mod nam_fun wor;      
  
  if String.length wor = 1 (* a single character word is treated as an uppercase word *)
  then
    Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_basic_word_uppercase_constructor wor
  else
    begin
      if String_v.is_capitalized_strict_of_string wor 
      then
	Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_basic_word_capitalized_constructor wor
      else
      	if String_v.is_uppercase_of_string wor
      	then
      	  Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_basic_word_uppercase_constructor wor
	else
	  Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_basic_word_anycase_constructor wor
    end
;;	  

let db1pointsdata_lexer_symbol_list_of_basicname_databox_of_scanbuf bna_dbo sbu =
  let nam_fun = "db1pointsdata_lexer_symbol_list_of_scanbuf" in    
  
  let rec apply sbu lex_l =
    
    try Scanf.bscanf sbu "%0c" (fun c ->

      Management_v.debug_what_string " top 0c c" nam_mod nam_fun (Format.sprintf "%c" c);

      match c with  
      | '#' ->

	  skip_string_until_end_of_line_of_scanbuf sbu;
	  apply sbu lex_l

      | ' ' | '\t' -> 

	  ignore ( Scanf.bscanf sbu "%1c" (fun c -> (Format.sprintf "%c" c))) ;
	  apply sbu lex_l
    
      | '\n' -> 

	  ignore ( Scanf.bscanf sbu "%1c" (fun c -> (Format.sprintf "%c" c))) ;
	  let lex = Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_keyword_character_eol in

	  Management_v.debug_what_string "lex" nam_mod nam_fun (Db1pointsdata_lexer_symbol_v.fullname lex);
	  
	  apply sbu (lex_l @ [lex])


      | 'a'..'z' -> (* word not string *)
	  
	  let str = Scanf.bscanf sbu "%s" (fun s -> s) in
	  let lex = db1pointsdata_lexer_symbol_of_word_lowercase str in
	  Management_v.debug_what_string "str" nam_mod nam_fun str;
	  Management_v.debug_what_string "lex" nam_mod nam_fun (Db1pointsdata_lexer_symbol_v.fullname lex);
	  
	  apply sbu (lex_l @ [lex])

      | 'A'..'Z' ->

	  let str = Scanf.bscanf sbu "%s" (fun s -> s) in
	  Management_v.debug_what_string "str" nam_mod nam_fun str;

	  let lex = db1pointsdata_lexer_symbol_of_word_capitalized str in

	  Management_v.debug_what_string "str" nam_mod nam_fun (Db1pointsdata_lexer_symbol_v.fullname lex);
	  
	  apply sbu (lex_l @ [lex])


      | '-' | '0'..'9' ->
		
	  let lex = db1pointsdata_lexer_basic_numerical_of_string_of_scanbuf "" sbu in
          apply sbu (lex_l @ [lex])

      | _ ->
	  let str = Scanf.bscanf sbu "%s " (fun s -> s) in
	  let fno_dbo = databox_fullnameoffile_of_basicname_databox bna_dbo in
	  Error_messages_v.print_lexical_error __LOC__ nam_fun
	    "current character were defined in menu"
	    (Format.sprintf ">%c< in string >%s<" c str)
	    (Format.sprintf "Check Databox file >%s<" fno_dbo)
			       )
	
    with End_of_file -> 

      let lex = Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_keyword_character_eof in
      
      Management_v.debug_what_string "str" nam_mod nam_fun (Db1pointsdata_lexer_symbol_v.fullname lex);
      
      (lex_l @ [lex])
	
  in
  
  apply sbu []
    
;; 

let db1pointsdata_lexer_symbol_list_of_basicname_databox bna_dbo =
  let nam_fun = "db1pointsdata_lexer_symbol_list_of_basicname_databox_n_database_name" in

  let fno_dbo = databox_fullnameoffile_of_basicname_databox bna_dbo in

  if not (Sys.file_exists fno_dbo)
  then 
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "Db1pointsdata_file >%s< exists" fno_dbo)
      "it does NOT"
      "check"
  else
    begin
      let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
      let sym_lex_l =
	let sbu = File_v.scanbuf_of_fullname fno_dbo in
	let sym_lex_sl = db1pointsdata_lexer_symbol_list_of_basicname_databox_of_scanbuf bna_dbo sbu in

(* Add Databox_fullnameoffile on Top *)
	let sym_lex_dbo = 
	  Db1pointsdata_lexer_symbol_v.db1pointsdata_lexer_basic_word_lowercase_constructor 
	    fno_dbo 
	in
	(sym_lex_dbo :: sym_lex_sl)
      in
      
      Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
      sym_lex_l
    end
;;
