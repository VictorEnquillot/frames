(** {3 Nwchemdata_lexer_lexical_analysis_tools_v}*)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : INP:Nwchemdata_lexer_lexical_analysis_tools_v";
   "Register : None";
   "Needed-by :"; 
   "Definition : ";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let count_of_character_of_scanbuf top_cha sbu =
  let nam_fun = "count_of_character_of_scanbuf" in

  Management_v.debug_what_string "top_cha" nam_mod nam_fun (String_v.string_of_character top_cha);
 
  let rec count sbu n =
    try Scanf.bscanf sbu "%0c"
      (fun c ->
	if (c = top_cha )
	then 
	  begin
	    Scanf.bscanf sbu "%1c" (fun c-> ()); 
	    count sbu (n+1)
	  end
	else n
      )
    with End_of_file -> n

  in
  count sbu 0
;;

let character_pop_of_function_name_of_message_of_scanbuf nam_fun mes sbu =
    try Scanf.bscanf sbu "%1c" (fun c -> 
      Management_v.debug_what_string "top c" nam_mod nam_fun (Format.sprintf "%s >%c<" mes c); 
      c )
    with End_of_file -> '@'
;;

let character_top_of_function_name_of_message_of_scanbuf nam_fun mes sbu =
    try Scanf.bscanf sbu "%0c" (fun c -> 
      Management_v.debug_what_string "top c" nam_mod nam_fun (Format.sprintf "%s >%c<" mes c); 
      c )
    with End_of_file -> '@'
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

let string_until_end_of_line_of_scanbuf sbu =
  let rec apply sbu cha_l =
    Scanf.bscanf sbu "%0c"
      (fun top_c ->
	match top_c with  
	| '\n'  -> cha_l 
	| _ -> 
	    ignore (Scanf.bscanf sbu "%1c" (fun c -> c));
	    apply sbu (top_c::cha_l)
      )
  in

  let out_cha_l = List.rev (apply sbu []) in
  String_v.string_of_character_list out_cha_l
;;

let first_word_of_scanbuf sbu =
  let rec apply sbu cha_l =
    Scanf.bscanf sbu "%0c"
      (fun top_c ->
	match top_c with  
	| '\n' | '\t' | ' ' -> cha_l 
	| _ -> 
	    ignore (Scanf.bscanf sbu "%1c" (fun c -> c));
	    apply sbu (top_c::cha_l)
      )
  in

  let out_cha_l = List.rev (apply sbu []) in
  String_v.string_of_character_list out_cha_l
;;

let word_of_function_name_of_message_of_scanbuf nam_fun mes sbu =
  let wor = first_word_of_scanbuf sbu in
  Management_v.debug_what_string "word" nam_mod nam_fun (Format.sprintf "%s %s" mes wor); 
  wor
;;

let word_of_function_name_of_message_of_string_regexp_of_scanbuf nam_fun mes str_reg sbu =
  let wor = word_of_function_name_of_message_of_scanbuf nam_fun mes sbu in
  let reg_exp = Str.regexp str_reg in
  if (Str.string_match reg_exp wor 0)
  then
    wor
  else
    Error_messages_v.print_lexical_error nam_mod nam_fun
      (Format.sprintf "current word >%s< matched regular expression >%s<" wor str_reg)
      (Format.sprintf "%s" wor)
      "Check database file"
;;

