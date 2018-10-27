(** {3 Tag_id3v1_227_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Tag_id3v1_227_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Tag_id3v1_227_symbol_t.Header_4 -> "header_4"
  | Tag_id3v1_227_symbol_t.Title_60 -> "title_60"
  | Tag_id3v1_227_symbol_t.Artist_60 -> "artist_60"
  | Tag_id3v1_227_symbol_t.Album_60 -> "album_60"
  | Tag_id3v1_227_symbol_t.Speed_1 -> "speed_1"
  | Tag_id3v1_227_symbol_t.Genre_30 -> "genre_30"
  | Tag_id3v1_227_symbol_t.Start_time_6 -> "start_time_6"
  | Tag_id3v1_227_symbol_t.End_time_6 -> "end_time_6"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Tag_id3v1_227_symbol_t.Header_4 -> ""
  | Tag_id3v1_227_symbol_t.Title_60 -> ""
  | Tag_id3v1_227_symbol_t.Artist_60 -> ""
  | Tag_id3v1_227_symbol_t.Album_60 -> ""
  | Tag_id3v1_227_symbol_t.Speed_1 -> ""
  | Tag_id3v1_227_symbol_t.Genre_30 -> ""
  | Tag_id3v1_227_symbol_t.Start_time_6 -> ""
  | Tag_id3v1_227_symbol_t.End_time_6 -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ti2 =
  Format.sprintf "Tag_id3v1_227_symbol_t.%s" (String.capitalize (name sym_ti2))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ti2 =
  Format.sprintf "%s \"%s\"" (longname sym_ti2) (string_off sym_ti2)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_header_4 = function
  | Tag_id3v1_227_symbol_t.Header_4 -> true
  | _ -> false
;;

let is_title_60 = function
  | Tag_id3v1_227_symbol_t.Title_60 -> true
  | _ -> false
;;

let is_artist_60 = function
  | Tag_id3v1_227_symbol_t.Artist_60 -> true
  | _ -> false
;;

let is_album_60 = function
  | Tag_id3v1_227_symbol_t.Album_60 -> true
  | _ -> false
;;

let is_speed_1 = function
  | Tag_id3v1_227_symbol_t.Speed_1 -> true
  | _ -> false
;;

let is_genre_30 = function
  | Tag_id3v1_227_symbol_t.Genre_30 -> true
  | _ -> false
;;

let is_start_time_6 = function
  | Tag_id3v1_227_symbol_t.Start_time_6 -> true
  | _ -> false
;;

let is_end_time_6 = function
  | Tag_id3v1_227_symbol_t.End_time_6 -> true
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

let header_4 = Tag_id3v1_227_symbol_t.Header_4;;

let title_60 = Tag_id3v1_227_symbol_t.Title_60;;

let artist_60 = Tag_id3v1_227_symbol_t.Artist_60;;

let album_60 = Tag_id3v1_227_symbol_t.Album_60;;

let speed_1 = Tag_id3v1_227_symbol_t.Speed_1;;

let genre_30 = Tag_id3v1_227_symbol_t.Genre_30;;

let start_time_6 = Tag_id3v1_227_symbol_t.Start_time_6;;

let end_time_6 = Tag_id3v1_227_symbol_t.End_time_6;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "header_4" -> header_4
  | "title_60" -> title_60
  | "artist_60" -> artist_60
  | "album_60" -> album_60
  | "speed_1" -> speed_1
  | "genre_30" -> genre_30
  | "start_time_6" -> start_time_6
  | "end_time_6" -> end_time_6
  | _ ->
  failwith "Not_a_topson_bare:Tag_id3v1_227_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Tag_id3v1_227_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Tag_id3v1_227_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Tag_id3v1_227_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Tag_id3v1_227_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Tag_id3v1_227_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Tag_id3v1_227 subtype" nam s)
      "it does not exists"
      "Check file Tag_id3v1_227_symbol_v.ml"
    in
    failwith "Not_a_tag_id3v1_227_symbol:Tag_id3v1_227_symbol_v.ml:make"
;;


(** Tag_id3v1_227_symbol_v at 18:57:21 on 27 Jun 2013. created by version v2.3 of generator *)



