(** {3 Functionalities for Type for Html_lexeme} *)

let nam_cod = "html_lexeme_v.ml";;

(** {6 Upgrading} *)

let html_lexeme_of_html_tag htm_tag =
  Html_lexeme_t.Html_tag htm_tag
;;

let html_lexeme_of_html_attribute htm_attribute =
  Html_lexeme_t.Html_attribute htm_attribute
;;

let html_lexeme_of_html_attribute_parameter htm_attribute_parameter =
  Html_lexeme_t.Html_attribute_parameter htm_attribute_parameter
;;

(** {6 Making} *)

let make str = 
  let htm_tag = try html_lexeme_of_html_tag (Html_tag_v.make str)
  with Failure "Not_html_tag:html_tag_v.ml:make" ->
    
    let htm_att = try html_lexeme_of_html_attribute (Html_attribute_v.make str)
    with Failure "Not_html_attribute:html_attribute_v.ml:make" ->
    
      let htm_apa = try html_lexeme_of_html_attribute_parameter (Html_attribute_parameter_v.make str)
      with Failure "Not_html_attribute:html_attribute_parameter_v.ml:make" ->
	Tools_v.print_fatal_error nam_cod "make"
          "a valid string"
	  str
	  "Check"
      in
      htm_apa

    in
    htm_att

  in
 htm_tag
;;

