

let make str =
  let stc = String.capitalize str in
  match stc with
  | "Href" -> Html_attribute_t.Href
  | "Class" -> Html_attribute_t.Class
  | _ -> failwith "Not_html_attribute:html_attribute_v.ml.make"
;;

