(** {3 Mp3_elementary_stream_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Mp3_elementary_stream_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_audio -> "mp3_elementary_stream_audio"
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_video -> "mp3_elementary_stream_video"
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_closed_caption -> "mp3_elementary_stream_closed_caption"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_audio -> ""
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_video -> ""
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_closed_caption -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mes =
  Format.sprintf "Mp3_elementary_stream_symbol_t.%s" (String.capitalize (name sym_mes))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mes =
  Format.sprintf "%s \"%s\"" (longname sym_mes) (string_off sym_mes)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_mp3_elementary_stream_audio = function
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_audio -> true
  | _ -> false
;;

let is_mp3_elementary_stream_video = function
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_video -> true
  | _ -> false
;;

let is_mp3_elementary_stream_closed_caption = function
  | Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_closed_caption -> true
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

let mp3_elementary_stream_audio = Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_audio;;

let mp3_elementary_stream_video = Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_video;;

let mp3_elementary_stream_closed_caption = Mp3_elementary_stream_symbol_t.Mp3_elementary_stream_closed_caption;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "mp3_elementary_stream_audio" -> mp3_elementary_stream_audio
  | "mp3_elementary_stream_video" -> mp3_elementary_stream_video
  | "mp3_elementary_stream_closed_caption" -> mp3_elementary_stream_closed_caption
  | _ ->
  failwith "Not_a_topson_bare:Mp3_elementary_stream_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Mp3_elementary_stream_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Mp3_elementary_stream_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Mp3_elementary_stream_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Mp3_elementary_stream_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Mp3_elementary_stream_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_elementary_stream subtype" nam s)
      "it does not exists"
      "Check file Mp3_elementary_stream_symbol_v.ml"
    in
    failwith "Not_a_mp3_elementary_stream_symbol:Mp3_elementary_stream_symbol_v.ml:make"
;;


(** Mp3_elementary_stream_symbol_v at 18:57:18 on 27 Jun 2013. created by version v2.3 of generator *)



