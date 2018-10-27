(** {3 Type for an Html_lexeme} *)

type html_lexeme =
  | Html_tag of Html_tag_t.html_tag 
  | Html_attribute of Html_attribute_t.html_attribute 
  | Html_attribute_parameter of Html_attribute_parameter_t.html_attribute_parameter 
;;
(**

                html_lexeme
          /         |        \
         /          |         \
 Html_tag   Html_attribute  Html_attribute_parameter


*)
