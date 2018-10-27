(** {3 Fournit une record_list a partir du nom d'un  fichier de données} *)

(** {6 Tools} *)


val is_body_head_of_string : string -> bool
;;

val is_body_end_of_string : string -> bool
;;

val body_extract_of_string_list : string list -> string list
;;

(** {6 Les fonctions de lecture} *)

val html_tag_of_scanning_in_channel : 
    Scanf.Scanning.in_channel -> 
      Html_lexeme_t.html_tag
;;

val html_lexeme_of_string : 
    string -> 
      Html_lexeme_t.html_lexeme
;;

(* write *)

(*
val record_mw_of_record_html : string -> string
;;
*)
