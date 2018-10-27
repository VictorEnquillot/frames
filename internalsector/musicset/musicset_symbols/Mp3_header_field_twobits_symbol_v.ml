(** {3 Mp3_header_field_twobits_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Mp3_header_field_twobits_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Mp3_header_field_twobits_symbol_t.Layer -> "layer"
  | Mp3_header_field_twobits_symbol_t.Frequency -> "frequency"
  | Mp3_header_field_twobits_symbol_t.Mode -> "mode"
  | Mp3_header_field_twobits_symbol_t.Mode_extension -> "mode_extension"
  | Mp3_header_field_twobits_symbol_t.Emphasis -> "emphasis"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Mp3_header_field_twobits_symbol_t.Layer -> ""
  | Mp3_header_field_twobits_symbol_t.Frequency -> ""
  | Mp3_header_field_twobits_symbol_t.Mode -> ""
  | Mp3_header_field_twobits_symbol_t.Mode_extension -> ""
  | Mp3_header_field_twobits_symbol_t.Emphasis -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mf2 =
  Format.sprintf "Mp3_header_field_twobits_symbol_t.%s" (String.capitalize (name sym_mf2))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mf2 =
  Format.sprintf "%s \"%s\"" (longname sym_mf2) (string_off sym_mf2)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_layer = function
  | Mp3_header_field_twobits_symbol_t.Layer -> true
  | _ -> false
;;

let is_frequency = function
  | Mp3_header_field_twobits_symbol_t.Frequency -> true
  | _ -> false
;;

let is_mode = function
  | Mp3_header_field_twobits_symbol_t.Mode -> true
  | _ -> false
;;

let is_mode_extension = function
  | Mp3_header_field_twobits_symbol_t.Mode_extension -> true
  | _ -> false
;;

let is_emphasis = function
  | Mp3_header_field_twobits_symbol_t.Emphasis -> true
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

let layer = Mp3_header_field_twobits_symbol_t.Layer;;

let frequency = Mp3_header_field_twobits_symbol_t.Frequency;;

let mode = Mp3_header_field_twobits_symbol_t.Mode;;

let mode_extension = Mp3_header_field_twobits_symbol_t.Mode_extension;;

let emphasis = Mp3_header_field_twobits_symbol_t.Emphasis;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "layer" -> layer
  | "frequency" -> frequency
  | "mode" -> mode
  | "mode_extension" -> mode_extension
  | "emphasis" -> emphasis
  | _ ->
  failwith "Not_a_topson_bare:Mp3_header_field_twobits_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Mp3_header_field_twobits_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Mp3_header_field_twobits_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Mp3_header_field_twobits_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Mp3_header_field_twobits_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Mp3_header_field_twobits_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_header_field_twobits subtype" nam s)
      "it does not exists"
      "Check file Mp3_header_field_twobits_symbol_v.ml"
    in
    failwith "Not_a_mp3_header_field_twobits_symbol:Mp3_header_field_twobits_symbol_v.ml:make"
;;


(** Mp3_header_field_twobits_symbol_v at 18:57:19 on 27 Jun 2013. created by version v2.3 of generator *)



