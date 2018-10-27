(** {3 Type for Html tree} *)

(* 
            html_lexeme
      /         |           \
  html_tag  html_attribut  string

*)

type html_tree =
  | Empty_node
  | Html_node of Html_attribute_t.html_attribute list * html_tree list 
  | Head_node of Html_attribute_t.html_attribute list * html_tree list 
  | Body_node of Html_attribute_t.html_attribute list * html_tree list 
  | Tag_node of Html_tag_t.html_tag * Html_attribute_t.html_attribute list * html_tree list
  | String_node of string 
;;

(*
type html_tree =
  | Empty_node
  | Tag_node of html_tag * html_attribute list * html_tree list
  | String_node of string 
;;
*)
