(** {3 Mp3_layout_tag_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Mp3_layout_tag_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Mp3_layout_tag_symbol_t.String_1 -> "string_1"
  | Mp3_layout_tag_symbol_t.String_3 -> "string_3"
  | Mp3_layout_tag_symbol_t.String_4 -> "string_4"
  | Mp3_layout_tag_symbol_t.String_6 -> "string_6"
  | Mp3_layout_tag_symbol_t.String_30 -> "string_30"
  | Mp3_layout_tag_symbol_t.String_60 -> "string_60"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Mp3_layout_tag_symbol_t.String_1 -> ""
  | Mp3_layout_tag_symbol_t.String_3 -> ""
  | Mp3_layout_tag_symbol_t.String_4 -> ""
  | Mp3_layout_tag_symbol_t.String_6 -> ""
  | Mp3_layout_tag_symbol_t.String_30 -> ""
  | Mp3_layout_tag_symbol_t.String_60 -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mlt =
  Format.sprintf "Mp3_layout_tag_symbol_t.%s" (String.capitalize (name sym_mlt))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mlt =
  Format.sprintf "%s \"%s\"" (longname sym_mlt) (string_off sym_mlt)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_string_1 = function
  | Mp3_layout_tag_symbol_t.String_1 -> true
  | _ -> false
;;

let is_string_3 = function
  | Mp3_layout_tag_symbol_t.String_3 -> true
  | _ -> false
;;

let is_string_4 = function
  | Mp3_layout_tag_symbol_t.String_4 -> true
  | _ -> false
;;

let is_string_6 = function
  | Mp3_layout_tag_symbol_t.String_6 -> true
  | _ -> false
;;

let is_string_30 = function
  | Mp3_layout_tag_symbol_t.String_30 -> true
  | _ -> false
;;

let is_string_60 = function
  | Mp3_layout_tag_symbol_t.String_60 -> true
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

let string_1 = Mp3_layout_tag_symbol_t.String_1;;

let string_3 = Mp3_layout_tag_symbol_t.String_3;;

let string_4 = Mp3_layout_tag_symbol_t.String_4;;

let string_6 = Mp3_layout_tag_symbol_t.String_6;;

let string_30 = Mp3_layout_tag_symbol_t.String_30;;

let string_60 = Mp3_layout_tag_symbol_t.String_60;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "string_1" -> string_1
  | "string_3" -> string_3
  | "string_4" -> string_4
  | "string_6" -> string_6
  | "string_30" -> string_30
  | "string_60" -> string_60
  | _ ->
  failwith "Not_a_topson_bare:Mp3_layout_tag_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Mp3_layout_tag_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Mp3_layout_tag_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Mp3_layout_tag_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Mp3_layout_tag_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Mp3_layout_tag_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_layout_tag subtype" nam s)
      "it does not exists"
      "Check file Mp3_layout_tag_symbol_v.ml"
    in
    failwith "Not_a_mp3_layout_tag_symbol:Mp3_layout_tag_symbol_v.ml:make"
;;


(** Mp3_layout_tag_symbol_v at 18:57:19 on 27 Jun 2013. created by version v2.3 of generator *)



