(** {3 Lit in_channel caractère par caractère et produit une "html_lexeme list"} *)

val html_lexeme_list_of_in_channel : 
    in_channel ->  
      Html_lexeme_t.html_lexeme list
;;

val html_tag_of_in_channel : 
    in_channel ->  
      Html_tag_t.html_tag
;;

val html_attribute_of_in_channel : 
    in_channel ->  
      Html_attribute_t.html_attribute
;;

