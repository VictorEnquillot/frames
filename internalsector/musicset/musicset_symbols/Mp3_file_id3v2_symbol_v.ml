(** {3 Mp3_file_id3v2_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Mp3_file_id3v2_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_1 -> "mp3_file_id3v2_1"
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_2 -> "mp3_file_id3v2_2"
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_2_5 -> "mp3_file_id3v2_2_5"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_1 -> ""
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_2 -> ""
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_2_5 -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mfi =
  Format.sprintf "Mp3_file_id3v2_symbol_t.%s" (String.capitalize (name sym_mfi))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mfi =
  Format.sprintf "%s \"%s\"" (longname sym_mfi) (string_off sym_mfi)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_mp3_file_id3v2_1 = function
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_1 -> true
  | _ -> false
;;

let is_mp3_file_id3v2_2 = function
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_2 -> true
  | _ -> false
;;

let is_mp3_file_id3v2_2_5 = function
  | Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_2_5 -> true
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

let mp3_file_id3v2_1 = Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_1;;

let mp3_file_id3v2_2 = Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_2;;

let mp3_file_id3v2_2_5 = Mp3_file_id3v2_symbol_t.Mp3_file_id3v2_2_5;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "mp3_file_id3v2_1" -> mp3_file_id3v2_1
  | "mp3_file_id3v2_2" -> mp3_file_id3v2_2
  | "mp3_file_id3v2_2_5" -> mp3_file_id3v2_2_5
  | _ ->
  failwith "Not_a_topson_bare:Mp3_file_id3v2_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Mp3_file_id3v2_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Mp3_file_id3v2_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Mp3_file_id3v2_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Mp3_file_id3v2_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Mp3_file_id3v2_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_file_id3v2 subtype" nam s)
      "it does not exists"
      "Check file Mp3_file_id3v2_symbol_v.ml"
    in
    failwith "Not_a_mp3_file_id3v2_symbol:Mp3_file_id3v2_symbol_v.ml:make"
;;


(** Mp3_file_id3v2_symbol_v at 18:57:18 on 27 Jun 2013. created by version v2.3 of generator *)



