(** {3 Tag_id3v2_base_multiple_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Tag_id3v2_base_multiple_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Tag_id3v2_base_multiple_symbol_t.Tpe1 -> "tpe1"
  | Tag_id3v2_base_multiple_symbol_t.Tcom -> "tcom"
  | Tag_id3v2_base_multiple_symbol_t.Text -> "text"
  | Tag_id3v2_base_multiple_symbol_t.Toly -> "toly"
  | Tag_id3v2_base_multiple_symbol_t.Tope -> "tope"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Tag_id3v2_base_multiple_symbol_t.Tpe1 -> ""
  | Tag_id3v2_base_multiple_symbol_t.Tcom -> ""
  | Tag_id3v2_base_multiple_symbol_t.Text -> ""
  | Tag_id3v2_base_multiple_symbol_t.Toly -> ""
  | Tag_id3v2_base_multiple_symbol_t.Tope -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_tbm =
  Format.sprintf "Tag_id3v2_base_multiple_symbol_t.%s" (String.capitalize (name sym_tbm))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_tbm =
  Format.sprintf "%s \"%s\"" (longname sym_tbm) (string_off sym_tbm)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_tpe1 = function
  | Tag_id3v2_base_multiple_symbol_t.Tpe1 -> true
  | _ -> false
;;

let is_tcom = function
  | Tag_id3v2_base_multiple_symbol_t.Tcom -> true
  | _ -> false
;;

let is_text = function
  | Tag_id3v2_base_multiple_symbol_t.Text -> true
  | _ -> false
;;

let is_toly = function
  | Tag_id3v2_base_multiple_symbol_t.Toly -> true
  | _ -> false
;;

let is_tope = function
  | Tag_id3v2_base_multiple_symbol_t.Tope -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let tpe1 = Tag_id3v2_base_multiple_symbol_t.Tpe1;;

let tcom = Tag_id3v2_base_multiple_symbol_t.Tcom;;

let text = Tag_id3v2_base_multiple_symbol_t.Text;;

let toly = Tag_id3v2_base_multiple_symbol_t.Toly;;

let tope = Tag_id3v2_base_multiple_symbol_t.Tope;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "tpe1" -> tpe1
  | "tcom" -> tcom
  | "text" -> text
  | "toly" -> toly
  | "tope" -> tope
  | _ ->
  failwith "Not_a_topson_bare:Tag_id3v2_base_multiple_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Tag_id3v2_base_multiple_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Tag_id3v2_base_multiple_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Tag_id3v2_base_multiple_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Tag_id3v2_base_multiple_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Tag_id3v2_base_multiple_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Tag_id3v2_base_multiple subtype" nam s)
      "it does not exists"
      "Check file Tag_id3v2_base_multiple_symbol_v.ml"
    in
    failwith "Not_a_tag_id3v2_base_multiple_symbol:Tag_id3v2_base_multiple_symbol_v.ml:make"
;;


(** Tag_id3v2_base_multiple_symbol_v at 18:57:22 on 27 Jun 2013. created by version v2.3 of generator *)



