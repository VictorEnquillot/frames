(** {3 Tag_id3v1_128_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Tag_id3v1_128_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Tag_id3v1_128_symbol_t.Header_3 -> "header_3"
  | Tag_id3v1_128_symbol_t.Title_30 -> "title_30"
  | Tag_id3v1_128_symbol_t.Artist_30 -> "artist_30"
  | Tag_id3v1_128_symbol_t.Album_30 -> "album_30"
  | Tag_id3v1_128_symbol_t.Year_4 -> "year_4"
  | Tag_id3v1_128_symbol_t.Comment_28 -> "comment_28"
  | Tag_id3v1_128_symbol_t.Comment_30 -> "comment_30"
  | Tag_id3v1_128_symbol_t.Zero_byte_1 -> "zero_byte_1"
  | Tag_id3v1_128_symbol_t.Track_1 -> "track_1"
  | Tag_id3v1_128_symbol_t.Genre_1 -> "genre_1"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Tag_id3v1_128_symbol_t.Header_3 -> ""
  | Tag_id3v1_128_symbol_t.Title_30 -> ""
  | Tag_id3v1_128_symbol_t.Artist_30 -> ""
  | Tag_id3v1_128_symbol_t.Album_30 -> ""
  | Tag_id3v1_128_symbol_t.Year_4 -> ""
  | Tag_id3v1_128_symbol_t.Comment_28 -> ""
  | Tag_id3v1_128_symbol_t.Comment_30 -> ""
  | Tag_id3v1_128_symbol_t.Zero_byte_1 -> ""
  | Tag_id3v1_128_symbol_t.Track_1 -> ""
  | Tag_id3v1_128_symbol_t.Genre_1 -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ti1 =
  Format.sprintf "Tag_id3v1_128_symbol_t.%s" (String.capitalize (name sym_ti1))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ti1 =
  Format.sprintf "%s \"%s\"" (longname sym_ti1) (string_off sym_ti1)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_header_3 = function
  | Tag_id3v1_128_symbol_t.Header_3 -> true
  | _ -> false
;;

let is_title_30 = function
  | Tag_id3v1_128_symbol_t.Title_30 -> true
  | _ -> false
;;

let is_artist_30 = function
  | Tag_id3v1_128_symbol_t.Artist_30 -> true
  | _ -> false
;;

let is_album_30 = function
  | Tag_id3v1_128_symbol_t.Album_30 -> true
  | _ -> false
;;

let is_year_4 = function
  | Tag_id3v1_128_symbol_t.Year_4 -> true
  | _ -> false
;;

let is_comment_28 = function
  | Tag_id3v1_128_symbol_t.Comment_28 -> true
  | _ -> false
;;

let is_comment_30 = function
  | Tag_id3v1_128_symbol_t.Comment_30 -> true
  | _ -> false
;;

let is_zero_byte_1 = function
  | Tag_id3v1_128_symbol_t.Zero_byte_1 -> true
  | _ -> false
;;

let is_track_1 = function
  | Tag_id3v1_128_symbol_t.Track_1 -> true
  | _ -> false
;;

let is_genre_1 = function
  | Tag_id3v1_128_symbol_t.Genre_1 -> true
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

let header_3 = Tag_id3v1_128_symbol_t.Header_3;;

let title_30 = Tag_id3v1_128_symbol_t.Title_30;;

let artist_30 = Tag_id3v1_128_symbol_t.Artist_30;;

let album_30 = Tag_id3v1_128_symbol_t.Album_30;;

let year_4 = Tag_id3v1_128_symbol_t.Year_4;;

let comment_28 = Tag_id3v1_128_symbol_t.Comment_28;;

let comment_30 = Tag_id3v1_128_symbol_t.Comment_30;;

let zero_byte_1 = Tag_id3v1_128_symbol_t.Zero_byte_1;;

let track_1 = Tag_id3v1_128_symbol_t.Track_1;;

let genre_1 = Tag_id3v1_128_symbol_t.Genre_1;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "header_3" -> header_3
  | "title_30" -> title_30
  | "artist_30" -> artist_30
  | "album_30" -> album_30
  | "year_4" -> year_4
  | "comment_28" -> comment_28
  | "comment_30" -> comment_30
  | "zero_byte_1" -> zero_byte_1
  | "track_1" -> track_1
  | "genre_1" -> genre_1
  | _ ->
  failwith "Not_a_topson_bare:Tag_id3v1_128_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Tag_id3v1_128_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Tag_id3v1_128_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Tag_id3v1_128_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Tag_id3v1_128_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Tag_id3v1_128_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Tag_id3v1_128 subtype" nam s)
      "it does not exists"
      "Check file Tag_id3v1_128_symbol_v.ml"
    in
    failwith "Not_a_tag_id3v1_128_symbol:Tag_id3v1_128_symbol_v.ml:make"
;;


(** Tag_id3v1_128_symbol_v at 18:57:20 on 27 Jun 2013. created by version v2.3 of generator *)



