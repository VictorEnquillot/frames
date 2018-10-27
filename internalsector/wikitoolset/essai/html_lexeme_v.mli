(** {3 Functionalities for Type for Html_lexeme} *)

(** {6 Upgrading} *)

val html_lexeme_of_html_tag :
    Html_tag_t.html_tag ->
      Html_lexeme_t.html_lexeme
;;

val html_lexeme_of_html_attribute :
    Html_attribute_t.html_attribute ->
      Html_lexeme_t.html_lexeme
;;

val html_lexeme_of_html_attribute_parameter :
    Html_attribute_parameter_t.html_attribute_parameter ->
      Html_lexeme_t.html_lexeme
;;

(** {6 Making} *)

val make : string -> Html_lexeme_t.html_lexeme;;

