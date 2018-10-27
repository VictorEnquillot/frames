(** {3 Lit une "lexeme list" produit un "html_tree" } *)

let nam_cod = "read_record_list_v.ml";;

(**
Translate Html_lexeme list into Html_tree
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

let html_tag_of_scanning_in_channel iss =
  Scanf.bscanf iss "%0c"
    (fun c ->
      match c with  
      | 'a' | 'b' | 'p' | 'u' ->
	  Scanf.bscanf iss "%1s" 
	    (fun c1 -> 
	      Scanf.bscanf iss "%1s" 
		(fun c2 ->
		  match c2 with  
		  | " " | ">" -> 
		      Html_lexeme_v.make_html_tag (c1^c2) 
		  | _ ->
		      Tools_v.print_fatal_error nam_cod 
			"html_tag_of_scanning_in_channel"
			"a|b|p|a>|b>|p>" 
			(">"^c2^"<") "Check input" 
		)	    
	    )

      | 'c' ->
	  Scanf.bscanf iss "%5s" 
	    (fun s ->  
	      match s with  
	      | "center" -> Html_lexeme_v.make_html_tag s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_scanning_in_channel"
		    "center" s "Check input"
	    )

      | 'd' ->
	  Scanf.bscanf iss "%s" 
	    (fun s ->  
	      match s with  
	      | "div" -> Html_lexeme_v.make_html_tag s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_scanning_in_channel"
		    "div" s "Check input"
	    )
	    
      | 'e' ->
	  Scanf.bscanf iss "%2s" 
	    (fun s -> 
	      match s with  
	      | "em" ->
		  Html_lexeme_v.make_html_tag s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_scanning_in_channel"
		    "em" s "Check input"
	    )
      | 'f' ->
	  Scanf.bscanf iss "%4s" 
	    (fun s ->  
	      match s with  
	      | "font" -> Html_lexeme_v.make_html_tag s
 	      | _ -> 
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_scanning_in_channel"
		    "font" s "Check input"
	    )

      | 'h' ->   (* Hn *)
	  Scanf.bscanf iss "h%i" 
	    (fun i ->  
	      let s = Format.sprintf "h%i" i in
	      if i < 7 
	      then Html_lexeme_v.make_html_tag s
	      else
		Tools_v.print_fatal_error nam_cod 
		  "html_tag_of_scanning_in_channel"
		  "hn with n < 7" s "Check input"
	    )

      | 'i' ->
	  Scanf.bscanf iss "%2s" 
	    (fun s -> 
	      match s with  
	      | "i " | "i>" -> 
		  Html_lexeme_v.make_html_tag s
		    
	      | "im" -> 
		  Scanf.bscanf iss "%1s" 
		    (fun t -> 
		      match (s^t) with  
		      | "img" -> 
			  Html_lexeme_v.make_html_tag (s^t)
		      | _ -> 
			  Tools_v.print_fatal_error nam_cod 
			    "html_tag_of_scanning_in_channel"
			    "img" (s^t) "Check input"
		    )
		    
	      | _ -> 		    
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_scanning_in_channel"
		    "i |i>|im" s "Check input"
	    )

      | 's' ->
	  Scanf.bscanf iss "%2s" 
	    (fun s -> 
	      match s with  
	      | "s " | "s>" -> 
		  Html_lexeme_v.make_html_tag s
		    
	      | "sp" -> 
		  Scanf.bscanf iss "%3s" 
		    (fun t -> 
		      match (s^t) with  
		      | "span" -> 
			  Html_lexeme_v.make_html_tag (s^t)
		      | _ -> 
			  Tools_v.print_fatal_error nam_cod 
			    "html_tag_of_scanning_in_channel"
			    "span" (s^t) "Check input"
		    )
		    
	      | _ -> 		    
		  Tools_v.print_fatal_error nam_cod 
		    "html_tag_of_scanning_in_channel"
		    "s |s>|span" s "Check input"
	    )

      | _ -> 	
	  Tools_v.print_fatal_error nam_cod 
	    "html_tag_of_scanning_in_channel"
	    "valid Html tag initial character" 
	    (Format.sprintf "%c" c)
	    "Check menu above or type Html_tree_t.html_tag"
    )
;;

let html_lexeme_of_string str =
  let iss = Scanf.Scanning.from_string str in

  let html_lexeme_of_scanning_in_channel iss =
    Scanf.bscanf iss "%1c" 
      (fun c ->
	match c with  
	| '<' -> 

	    let htm_tag = html_tag_of_scanning_in_channel iss in
            Html_lexeme_t.Html_tag htm_tag

	| '>' -> failwith "truc"
(*
	    Tools_v.print_fatal_error 
	      nam_cod "read" "not a tag" " < " "check"
*)
	| _ -> failwith "trac"
(*
	    Tools_v.print_fatal_error nam_cod "read"
	      "legal character <|>" (Char.escaped c) "check"
*)
      )
  in

  html_lexeme_of_scanning_in_channel iss

;;


let read_lexeme_of_in_channel ich =
ich

;;

(*

syntaxe concrète : flux de char
syntaxe abstraite : arbre

val parse_html : lexeme stream -> syntax tree
let parse_html_file_of  =

	let htm_tag = html_tag_of_scanning_in_channel iss in

        let att_l =

        in

        let htm_tl =  
        in

        Html_lexeme_v.make_tag_node htm_tag att_l htm_tl

*)

(*
 html_line = Span span_attribute=css_word word span 
                 Html_tag
                  /    \
         Html_attribute word 
              |
            css_rule
*)

(* write *)

(* let ib = Scanf.Scanning.from_file "Balise_a.html";; *)
(*
let record_mw_of_record_html rec_htm =
  let ib = Scanf.Scanning.from_string rec_htm in
  Scanf.bscanf ib "%0c" 
    (fun c ->
      match c with 
      | '<' -> html_tag_of_in_channel ib
      | ' ' -> Empty
      | _ ->
	  failwith (Printf.sprintf
		      "record_mw_of_record_html: %c is not a valid beginning." c)
    )
*)
(*
 <a href="url" target...>text</a> <span class="print-footnote">[2]</span>
  rec_htm
;;
*)
(*
let rec_htm = List.hd rec_htm_l ;;
record_mw_of_record_html rec_htm;;
*)
(*

attributes :
ALIGN
ONKEYPRESS
CLASS
ONKEYUP
DIR
ONMOUSEDOWN
ID
ONMOUSEMOVE
LANG
ONMOUSEOUT
NOWRAP
ONMOUSEOVER
ONCLICK
ONMOUSEUP
ONDBLCLICK
STYLE
ONKEYDOWN
TITLE

id="..." : un identificateur global
class="..." : une liste de classes séparées par des espaces
style="..." : une information locale de style.
title="..." : fournit des informations supplémentaires pour un élément spécifique, par opposition à l'élément TITLE qui concerne l'ensemble de la page Web.

lang="..."
dir="..."

align="..." : deprecated. Contrôle l'alignement ( left, center, right, justify )

+ les 10 événements intrinsèques ( onclick, onmouseover, onmouseout, etc... ) que nous verrons plus tard


Syntaxe 	<DIV ATTRIBUT= > ...texte encadré... </DIV> 	  	 
Syntaxe 	<DIV CLASS=ABSTRACT> ...texte encadré... </DIV> 	  	
Syntaxe 	<DIV ALIGN=left|center|right> ...texte encadré... </DIV>

type balise_multiple = opening * attribute * sup * text * closure;;
type balise_simple = opening * sup * text * closure;;
type balise_elementary = opening * sup;;

and text =
| String of word list
| Compound of text * balise * text
;;

*)
(*
let record_mw_list_of_record_html_list rec_htm_l =
  List.map record_mw_of_record_html rec_htm_l
;;


let record_mw_list_of_record_html_list rec_htm_l =
  let bod_l = body_extract_of_string_list rec_htm_l in
  List.map record_mw_of_record_html bod_l
;;

(* écrire le fichier mw *)
let write oc rec_mw_l =
  List.iter (fun r -> output_string oc (Format.sprintf "%s@." r)) rec_mw_l;
  output_string oc (Format.sprintf "@.")
;;

let rec_mw_l = record_mw_list_of_record_html_list rec_htm_l;; 

let nof_mw = "Essai_2.mw";;
let oc_mw = 
  open_write_of_string_of_string_of_file_name nam_cod "oc" nof_mw
;;
write oc_mw rec_mw_l;
close_out oc_mw;
;;
*)

