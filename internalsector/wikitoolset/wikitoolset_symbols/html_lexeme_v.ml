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
  let htm_tag = try 
    html_lexeme_of_html_tag (Html_tag_v.make str)
  with Failure "Not_html_tag:html_tag_v.ml:make" ->
    
    let htm_att = try 
      html_lexeme_of_html_attribute (Html_attribute_v.make str)
    with Failure "Not_html_attribute:html_attribute_v.ml:make" ->
    
      let htm_apa = html_lexeme_of_html_attribute_parameter 
	  (Html_attribute_parameter_v.make str)

      in
      htm_apa
	
    in
    htm_att
      
  in
  htm_tag
;;

(** {6 Naming} *)

let name = function
  | Html_lexeme_t.Html_tag htm_tag ->
      Html_tag_v.name htm_tag
  | Html_lexeme_t.Html_attribute htm_att ->
      Html_attribute_v.name htm_att
  | Html_lexeme_t.Html_attribute_parameter htm_apa ->
      Html_attribute_parameter_v.name htm_apa
;;


(** {6 Querying} *)

let is_html_tag_off_html_lexeme = function
  | Html_lexeme_t.Html_tag htm_tag -> true
  | _ -> false
;;

let is_html_attribute_off_html_lexeme = function
  | Html_lexeme_t.Html_attribute htm_att -> true
  | _ -> false
;;

let is_html_attribute_parameter_off_html_lexeme = function
  | Html_lexeme_t.Html_attribute_parameter htm_apa -> true
  | _ -> false
;;

(** {6  Extracting} *)

let html_tag_off_html_lexeme = function
  | Html_lexeme_t.Html_tag htm_tag -> htm_tag 
  | _ -> failwith "Not_html_tag"
;;

let html_attribute_off_html_lexeme = function
  | Html_lexeme_t.Html_attribute htm_att -> htm_att
  | _ -> failwith "Not_html_attribute"
;;

let html_attribute_parameter_off_html_lexeme = function
  | Html_lexeme_t.Html_attribute_parameter htm_apa -> htm_apa
  | _ -> failwith "Not_html_attribute_parameter"
;;
