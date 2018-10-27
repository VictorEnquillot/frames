(** {3 Functionalities for Type for Html_tag} *)

let nam_cod = "html_tag_v.ml";;

(** {6 Making functions} *)

let make str = 
  let stc = String.capitalize str in
  match stc with
  | "A" -> Html_tag_t.A
  | "B" -> Html_tag_t.B
  | "Center" -> Html_tag_t.Center
  | "Empty" -> Html_tag_t.Empty_tag   (* Empty element : <br> *)
  | "Div" -> Html_tag_t.Div
  | "Em" -> Html_tag_t.Em
  | "Font" -> Html_tag_t.Font
  | "Hn" -> Html_tag_t.Hn
  | "I" -> Html_tag_t.I
  | "Img" -> Html_tag_t.Img 
  | "P" -> Html_tag_t.P
  | "S" -> Html_tag_t.S
  | "Span" -> Html_tag_t.Span
  | "U" -> Html_tag_t.U
  | _ -> failwith "Not_html_tag:html_tag_v.ml:make" 
;;

let name = function 
  | Html_tag_t.A -> "A"
  | Html_tag_t.B -> "B"
  | Html_tag_t.Center -> "Center"
  | Html_tag_t.Empty_tag -> "Empty"
  | Html_tag_t.Div -> "Div"
  | Html_tag_t.Em -> "Em"
  | Html_tag_t.Font -> "Font"
  | Html_tag_t.Hn -> "Hn"
  | Html_tag_t.I -> "I"
  | Html_tag_t.Img -> "Img"
  | Html_tag_t.P -> "P"
  | Html_tag_t.S -> "S"
  | Html_tag_t.Span -> "Span"
  | Html_tag_t.U -> "U"
;;
