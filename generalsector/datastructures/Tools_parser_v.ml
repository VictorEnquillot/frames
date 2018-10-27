let nam_mod = "Tools_parser_v.ml";;

let rec skip_blanks_of_scanbuf sbu =
  if Scanf.Scanning.end_of_input sbu 
  then ()
  else
    begin
      let c = Scanf.bscanf sbu "%0c" (fun c -> c) in
      match c with 
      | ' ' -> 
	  Scanf.bscanf sbu "%1c" (fun c -> ());
	  skip_blanks_of_scanbuf sbu;
      | _ -> ()
    end
;;

let next_delimiter_of_scanbuf sbu =
  let nam_fun = "next_delimiter_of_scanbuf" in
  
  skip_blanks_of_scanbuf sbu;
  if Scanf.Scanning.end_of_input sbu 
  then "End_of_input_buffer"
  else
    begin
      let c = Scanf.bscanf sbu "%0c" (fun c -> c) in
      match c with
      | '-'| '~' | '/' | '\\' | '*' | ',' | '(' | ')' -> 
	  Scanf.bscanf sbu "%1c" (fun c -> String_v.string_of_char c) 
	    
      | _ -> 
	  
	  Error_messages_v.print_fatal_error nam_mod nam_fun
	    "one of ',' | '(' | ')'"
	    (String_v.string_of_character c)
	    "check input"
    end
;;

let next_word_of_scanbuf sbu =
  skip_blanks_of_scanbuf sbu;
  let rec apply sbu acc =
    if Scanf.Scanning.end_of_input sbu 
    then acc
    else
      begin
	let c = Scanf.bscanf sbu "%0c" (fun c -> c) in
	match c with
	| 'A'..'Z' | 'a'..'z' | '0'..'9' | '_' -> 
	    let c = Scanf.bscanf sbu "%1c" (fun c -> c) in
	    apply sbu (c::acc)
	| _ -> acc
      end
  in
  let c_l = apply sbu [] in
  String_v.string_of_char_list (List.rev c_l)
;;

let next_lexeme_of_scanbuf sbu =  (* type lexeme = | Word | Delimiter *)
  let nam_fun = "next_lexeme_of_scanbuf" in
  
  skip_blanks_of_scanbuf sbu;
  if Scanf.Scanning.end_of_input sbu 
  then "End_of_input_buffer" 
  else
    begin
      let c = Scanf.bscanf sbu "%0c" (fun c -> c) in
      match c with 
      | 'A'..'Z' | 'a'..'z' -> next_word_of_scanbuf sbu
      | ',' | '(' | ')' -> next_delimiter_of_scanbuf sbu
      | '\n' ->  "End_of_input_buffer"   
      | _ -> 
	  Error_messages_v.print_fatal_error nam_mod nam_fun
	    "one of 'A'..'Z' | 'a'..'z' | ',' | '(' | ')' | ' '"
	    (Format.sprintf ">%c<" c)
	    "Check input"
    end
;;

let word_list_of_scanbuf sbu =
  let rec apply sbu acc =
    let str = next_lexeme_of_scanbuf sbu in
    if str = "End_of_input_buffer" 
    then acc
    else str :: apply sbu acc
  in
  apply sbu []
;;

let skip_space_if_any sbu =
  let rec apply sbu =
    Scanf.bscanf sbu "%0c"
      (fun c ->
	match c with  
	| ' ' | '\t' -> 
	    ignore ( Scanf.bscanf sbu "%1c" (fun c -> (Format.sprintf "%c" c))) ;
	    apply sbu;
	| _ -> ()

      )
  in
  apply sbu 
;;

let skip_any_space_or_die sbu =
  let nam_fun = "skip_any_space_or_die" in
  
  let rec apply sbu =
    Scanf.bscanf sbu "%0c"
      (fun c ->
	match c with  
	| ' ' | '\t' -> skip_space_if_any sbu

	| _ -> 
	    let wor = Scanf.bscanf sbu "%s" (fun w -> w) in
	    Error_messages_v.print_fatal_error nam_mod nam_fun
	      "a space"
	      (Format.sprintf ">%c< of word >%s<" c wor)
	      "Check input"
      )
  in
  apply sbu 
;;

let skip_next_character sbu =
  ignore (Scanf.bscanf sbu "%1c" (fun c -> c));
;;

let skip_string_until_end_of_line sbu =
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

let string_until_of_char_of_scanbuf cha sbu =
(* needs a syntaxic analysis *)
  let rec apply sbu str =
    Scanf.bscanf sbu "%0c"
      (fun c ->
	match c with  
	| c when c = cha -> 
	    let _ = Scanf.bscanf sbu "%1c" (fun c -> (Format.sprintf "%c" c)) in
	    str

	| _ ->
	    let cst = Scanf.bscanf sbu "%1c" (fun c -> (Format.sprintf "%c" c)) in
	    let str = str ^ cst in
	    (apply sbu str)
      )
  in
  apply sbu ""
;;

let word_of_scanbuf sbu =
  let _ = string_until_of_char_of_scanbuf '=' sbu in
  skip_space_if_any sbu;
  Scanf.bscanf sbu "%s" (fun s -> s)
;;


