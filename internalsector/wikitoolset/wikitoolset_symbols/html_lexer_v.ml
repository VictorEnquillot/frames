(** {3 Lit in_channel caractère par caractère et produit une "html_lexeme list"} *)

let nam_cod = "html_lexer_v.ml";;

(**
Translate in_channel character stream into Html_lexeme list
*)

(* extraire <body> ... </body> *)

let is_body_head_of_string str =
  let wor_l = Tools_v.word_list_off_string str in
  (List.hd wor_l) = "<body>"
;;

let is_body_end_of_string str =
  let wor_l = Tools_v.word_list_off_string str in
  (List.hd wor_l) = "</body>"
;;

let body_extract_of_string_list str_l =
  let bod_l =
    Tools_v.extract_list_of_predicate_of_predicate_of_list 
      is_body_head_of_string is_body_end_of_string 
      str_l
  in
  Tools_v.cut_off_last_element_off_list (List.tl bod_l)
;;

(** {6 Les fonctions de lecture} *)

(* <span class="print-footnote">[3]</span> *)
(*    ^     *)
(*    |     *)
(*   tag    *) 

let rec html_tag_of_in_channel ich =
  Scanf.fscanf ich "%0c"
    (fun c ->
      match c with  
      | '/' -> 
	  Tools_v.skip_character ich;
	  html_tag_of_in_channel ich 

      | 'a' | 'b' | 'p' | 'u' ->
	  Scanf.fscanf ich "%1s" 
	    (fun c1 -> 
	      Scanf.fscanf ich "%1s" 
		(fun c2 ->
		  match c2 with  
		  | " " | ">" -> 
		      
		      Html_tag_v.make (c1^c2) 
		  
		  | _ ->
		      Tools_v.print_fatal_error nam_cod 
			"html_tag_of_in_channel"
			"a|b|p|a>|b>|p>" 
			(">"^c2^"<") "Check input" 
		)	    
	    )

      | 'c' ->
	  Scanf.fscanf ich "%5s" 
	    (fun s ->  
	      match s with  
	      | "center" -> Html_tag_v.make s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_in_channel"
		    "center" s "Check input"
	    )

      | 'd' ->
	  Scanf.fscanf ich "%s" 
	    (fun s ->  
	      match s with  
	      | "div" -> Html_tag_v.make s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_in_channel"
		    "div" s "Check input"
	    )
	    
      | 'e' ->
	  Scanf.fscanf ich "%2s" 
	    (fun s -> 
	      match s with  
	      | "em" ->
		  Html_tag_v.make s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_in_channel"
		    "em" s "Check input"
	    )
      | 'f' ->
	  Scanf.fscanf ich "%4s" 
	    (fun s ->  
	      match s with  
	      | "font" -> Html_tag_v.make s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_in_channel"
		    "font" s "Check input"
	    )

      | 'h' ->
	  Scanf.fscanf ich "h%i" 
	    (fun i ->  
	      let s = Format.sprintf "h%i" i in
	      if i < 7 
	      then Html_tag_v.make s
	      else
		Tools_v.print_fatal_error nam_cod 
		  "html_tag_of_in_channel"
		  "hn with n < 7" s "Check input"
	    )

      | 'i' ->
	  Scanf.fscanf ich "%2s" 
	    (fun s -> 
	      match s with  
	      | "i " | "i>" -> 
		  Html_tag_v.make s
		    
	      | "im" -> 
		  Scanf.fscanf ich "%1s" 
		    (fun t -> 
		      match (s^t) with  
		      | "img" -> 
			  Html_tag_v.make (s^t)
		      | _ -> 
			  Tools_v.print_fatal_error nam_cod 
			    "html_tag_of_in_channel"
			    "img" (s^t) "Check input"
		    )
		    
	      | _ -> 		    
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_in_channel"
		    "i |i>|im" s "Check input"
	    )

      | 's' -> (* s span *)
	  Scanf.fscanf ich "%2s" 
	    (fun str -> 
	      match str with  
	      | "s " | "s>" -> 

		  Html_tag_v.make str
		    
	      | "sp" -> 
		  Scanf.fscanf ich "%3s" 
		    (fun str_an -> 
		      match (str^str_an) with  
		      | "span " | "span>" -> 

			  Html_tag_v.make (str^str_an)

		      | _ -> 
			  Tools_v.print_fatal_error nam_cod 
			    "html_tag_of_in_channel"
			    "span" (str^str_an) "Check input"
		    )
		    
	      | _ -> 		    
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_in_channel"
		    "s |s>|span" str "Check input"
	    )

      | _ -> 	
	  Tools_v.print_fatal_error nam_cod 
	    "html_tag_of_in_channel"
	    "valid initial character for an Html tag name" 
	    (Format.sprintf "character >%c<" c)
	    "Check menu above or type Html_tag_t.html_tag"
    )
;;

let html_attribute_of_in_channel ich =
(* the leading blank is supposed to have been read *)

  Scanf.fscanf ich "%0c"
    (fun c ->
      match c with  
      | 'c' ->
	  Scanf.fscanf ich "%5s" 
	    (fun s ->  
	      match s with  
	      | "class" -> Html_attribute_v.make s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_attribute_of_in_channel"
		    "class" (">"^s^"<") "Check input"
	    )

      | 'h' ->
	  Scanf.fscanf ich "%4s" 
	    (fun s ->  
	      match s with  
	      | "href" -> Html_attribute_v.make s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_attribute_of_in_channel"
		    "href" (">"^s^"<") "Check input"
	    )

      | _ -> 	
	  Tools_v.print_fatal_error nam_cod 
	    "html_attribute_of_in_channel"
	    "valid initial character for an Html attribute name" 
	    (Format.sprintf "character >%c<" c)
	    "Check menu above or type Html_attribute_t.html_attribute"
    )
;;

let html_attribute_parameter_of_in_channel ich =
  let wor = Tools_v.next_word_of_in_channel ich in
  Html_attribute_parameter_v.make wor
;;

let html_attribute_parameter_list_of_in_channel ich =
(* the leading character '"' is supposed to have been read *)

  let rec apply att_l ich =
    Scanf.fscanf ich "%1c"
      (fun c ->
	match c with  
	| '"' -> (* NON ending '"' *) 
	    Tools_v.skip_character ich;
	    att_l
	      
	| ' ' ->
	    Tools_v.skip_character ich;         
	    apply att_l ich
	
	| _ ->
	    let htm_apa = 
	      html_attribute_parameter_of_in_channel ich
	    in
            let att_new_l = htm_apa :: att_l in
            apply att_new_l ich 
      )
  in
  apply [] ich
;;

let html_lexeme_list_of_in_channel ich =

(*  let ich = Tools_v.skip_blanks ic in *)

  let rec apply lex_l ich =
    Scanf.fscanf ich "%1c" 
      (fun c ->
	match c with
	| '<' -> 
	    
	    let htm_tag = html_tag_of_in_channel ich in
            let htm_lex = Html_lexeme_t.Html_tag htm_tag in
            let new_lex_l = htm_lex :: lex_l in
        
            apply new_lex_l ich

        | ' ' -> 

	    let htm_att = html_attribute_of_in_channel ich in
            let htm_lex = Html_lexeme_t.Html_attribute htm_att in
            let new_lex_l = htm_lex :: lex_l in
 
            apply new_lex_l ich

        | '=' -> 

	    Scanf.fscanf ich "%0c"
	      (fun c ->
		match c with  
		| '"' -> (* starting '"' *)
		    Tools_v.skip_character ich;
            
		    let htm_apa_l = 
		      html_attribute_parameter_list_of_in_channel 
			ich 
		    in
		    let htm_lex_l = 
		      List.map
			Html_lexeme_v.html_lexeme_of_html_attribute_parameter
			htm_apa_l 
		    in
		    let new_lex_l = htm_lex_l @ lex_l in
		    apply new_lex_l ich

		| _ -> 
		    Tools_v.print_fatal_error nam_cod 
		      "html_lexeme_list_of_in_channel"
		      "char \'\"\' starts parameter list"
		      (Format.sprintf "this character >%c<" c) 
		      "Check"
	      )

	| '>' -> 
	    Tools_v.print_fatal_error nam_cod 
	      "html_lexeme_list_of_in_channel"
	      "valid character <| |="
              "illegal character >" 
	      "Check"

	| _ -> 
	    Tools_v.print_fatal_error nam_cod 
	      "html_lexeme_list_of_in_channel"
	      "valid character <| |=>"
              (Format.sprintf "this character >%c<" c) 
	      "Check"
      )
  in

  apply [] ich

;;


