(** {3 Functionalities for Type for Html tree} *)

let nam_cod = "html_tree_v.ml";;

(** {6 Making} *)

let make_html_node att_l htm_tl =
  Html_tree_t.Html_node (att_l, htm_tl) 
;;

let make_head_node att_l htm_tl =
  Html_tree_t.Head_node (att_l, htm_tl)  
;;

let make_body_node att_l htm_tl =
  Html_tree_t.Body_node (att_l, htm_tl)  
;;

let make_tag_node htm_tag att_l htm_tl =
  Html_tree_t.Tag_node (htm_tag, att_l, htm_tl)
;;

let make_string_node str_l =
  Html_tree_t.String_node str_l
;;

(** {6 Abbreviating} *)

let empty_node = Html_tree_t.Empty_node;;
