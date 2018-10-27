(** {3 Tag_id3v1_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Tag_id3v1_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Tag_id3v1_symbol_t.Tag_id3v1_128_symbol sym_ti1 ->
    Tag_id3v1_128_symbol_v.name sym_ti1
  | Tag_id3v1_symbol_t.Tag_id3v1_227_symbol sym_ti2 ->
    Tag_id3v1_227_symbol_v.name sym_ti2
  | Tag_id3v1_symbol_t.Tag_id3v1_0 -> "tag_id3v1_0"
  | Tag_id3v1_symbol_t.Tag_id3v1_1 -> "tag_id3v1_1"
  | Tag_id3v1_symbol_t.Tag_id3v1_extended -> "tag_id3v1_extended"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Tag_id3v1_symbol_t.Tag_id3v1_128_symbol sym_ti1 ->
  Tag_id3v1_128_symbol_v.string_off sym_ti1
  | Tag_id3v1_symbol_t.Tag_id3v1_227_symbol sym_ti2 ->
  Tag_id3v1_227_symbol_v.string_off sym_ti2
  | Tag_id3v1_symbol_t.Tag_id3v1_0 -> ""
  | Tag_id3v1_symbol_t.Tag_id3v1_1 -> ""
  | Tag_id3v1_symbol_t.Tag_id3v1_extended -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_tid =
  Format.sprintf "Tag_id3v1_symbol_t.%s" (String.capitalize (name sym_tid))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_tid =
  Format.sprintf "%s \"%s\"" (longname sym_tid) (string_off sym_tid)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let tag_id3v1_128_symbol_off_tag_id3v1_symbol = function
  | Tag_id3v1_symbol_t.Tag_id3v1_128_symbol sym_ti1 -> sym_ti1
  | sym_tid -> Error_messages_v.print_fatal_error
      nam_cod "tag_id3v1_128_symbol_off_tag_id3v1_symbol"
      "Tag_id3v1_128_symbol"
      (name sym_tid) "check"
;;

let tag_id3v1_227_symbol_off_tag_id3v1_symbol = function
  | Tag_id3v1_symbol_t.Tag_id3v1_227_symbol sym_ti2 -> sym_ti2
  | sym_tid -> Error_messages_v.print_fatal_error
      nam_cod "tag_id3v1_227_symbol_off_tag_id3v1_symbol"
      "Tag_id3v1_227_symbol"
      (name sym_tid) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_tag_id3v1_0 = function
  | Tag_id3v1_symbol_t.Tag_id3v1_0 -> true
  | _ -> false
;;

let is_tag_id3v1_1 = function
  | Tag_id3v1_symbol_t.Tag_id3v1_1 -> true
  | _ -> false
;;

let is_tag_id3v1_extended = function
  | Tag_id3v1_symbol_t.Tag_id3v1_extended -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_tag_id3v1_128_symbol_off_tag_id3v1_symbol = function
  | Tag_id3v1_symbol_t.Tag_id3v1_128_symbol _ -> true
  | _ -> false
;;

let is_tag_id3v1_227_symbol_off_tag_id3v1_symbol = function
  | Tag_id3v1_symbol_t.Tag_id3v1_227_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_header_3 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_header_3 sym_ti1
    end
;;

let is_title_30 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_title_30 sym_ti1
    end
;;

let is_artist_30 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_artist_30 sym_ti1
    end
;;

let is_album_30 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_album_30 sym_ti1
    end
;;

let is_year_4 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_year_4 sym_ti1
    end
;;

let is_comment_28 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_comment_28 sym_ti1
    end
;;

let is_comment_30 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_comment_30 sym_ti1
    end
;;

let is_zero_byte_1 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_zero_byte_1 sym_ti1
    end
;;

let is_track_1 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_track_1 sym_ti1
    end
;;

let is_genre_1 sym_tid =
  if not (is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti1 = tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_128_symbol_v.is_genre_1 sym_ti1
    end
;;

let is_header_4 sym_tid =
  if not (is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti2 = tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_227_symbol_v.is_header_4 sym_ti2
    end
;;

let is_title_60 sym_tid =
  if not (is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti2 = tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_227_symbol_v.is_title_60 sym_ti2
    end
;;

let is_artist_60 sym_tid =
  if not (is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti2 = tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_227_symbol_v.is_artist_60 sym_ti2
    end
;;

let is_album_60 sym_tid =
  if not (is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti2 = tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_227_symbol_v.is_album_60 sym_ti2
    end
;;

let is_speed_1 sym_tid =
  if not (is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti2 = tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_227_symbol_v.is_speed_1 sym_ti2
    end
;;

let is_genre_30 sym_tid =
  if not (is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti2 = tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_227_symbol_v.is_genre_30 sym_ti2
    end
;;

let is_start_time_6 sym_tid =
  if not (is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti2 = tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_227_symbol_v.is_start_time_6 sym_ti2
    end
;;

let is_end_time_6 sym_tid =
  if not (is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid)
  then false
  else
    begin
      let sym_ti2 = tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid in
      Tag_id3v1_227_symbol_v.is_end_time_6 sym_ti2
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let tag_id3v1_symbol_of_tag_id3v1_128_symbol sym_ti1 = 
  Tag_id3v1_symbol_t.Tag_id3v1_128_symbol sym_ti1
;;

let tag_id3v1_symbol_of_tag_id3v1_227_symbol sym_ti2 = 
  Tag_id3v1_symbol_t.Tag_id3v1_227_symbol sym_ti2
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let tag_id3v1_0 = Tag_id3v1_symbol_t.Tag_id3v1_0;;

let tag_id3v1_1 = Tag_id3v1_symbol_t.Tag_id3v1_1;;

let tag_id3v1_extended = Tag_id3v1_symbol_t.Tag_id3v1_extended;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let header_3 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.header_3;;

let title_30 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.title_30;;

let artist_30 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.artist_30;;

let album_30 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.album_30;;

let year_4 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.year_4;;

let comment_28 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.comment_28;;

let comment_30 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.comment_30;;

let zero_byte_1 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.zero_byte_1;;

let track_1 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.track_1;;

let genre_1 = tag_id3v1_symbol_of_tag_id3v1_128_symbol Tag_id3v1_128_symbol_v.genre_1;;

let header_4 = tag_id3v1_symbol_of_tag_id3v1_227_symbol Tag_id3v1_227_symbol_v.header_4;;

let title_60 = tag_id3v1_symbol_of_tag_id3v1_227_symbol Tag_id3v1_227_symbol_v.title_60;;

let artist_60 = tag_id3v1_symbol_of_tag_id3v1_227_symbol Tag_id3v1_227_symbol_v.artist_60;;

let album_60 = tag_id3v1_symbol_of_tag_id3v1_227_symbol Tag_id3v1_227_symbol_v.album_60;;

let speed_1 = tag_id3v1_symbol_of_tag_id3v1_227_symbol Tag_id3v1_227_symbol_v.speed_1;;

let genre_30 = tag_id3v1_symbol_of_tag_id3v1_227_symbol Tag_id3v1_227_symbol_v.genre_30;;

let start_time_6 = tag_id3v1_symbol_of_tag_id3v1_227_symbol Tag_id3v1_227_symbol_v.start_time_6;;

let end_time_6 = tag_id3v1_symbol_of_tag_id3v1_227_symbol Tag_id3v1_227_symbol_v.end_time_6;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "tag_id3v1_0" -> tag_id3v1_0
  | "tag_id3v1_1" -> tag_id3v1_1
  | "tag_id3v1_extended" -> tag_id3v1_extended
  | _ ->
  failwith "Not_a_topson_bare:Tag_id3v1_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Tag_id3v1_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try tag_id3v1_symbol_of_tag_id3v1_128_symbol
      (Tag_id3v1_128_symbol_v.make nam s)
  with Failure "Not_a_tag_id3v1_128_symbol:Tag_id3v1_128_symbol_v.ml:make" ->
  try tag_id3v1_symbol_of_tag_id3v1_227_symbol
      (Tag_id3v1_227_symbol_v.make nam s)
  with Failure "Not_a_tag_id3v1_227_symbol:Tag_id3v1_227_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Tag_id3v1_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Tag_id3v1_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Tag_id3v1_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Tag_id3v1_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Tag_id3v1 subtype" nam s)
      "it does not exists"
      "Check file Tag_id3v1_symbol_v.ml"
    in
    failwith "Not_a_tag_id3v1_symbol:Tag_id3v1_symbol_v.ml:make"
;;


(** Tag_id3v1_symbol_v at 19:18:5 on 1 Jul 2013. created by version v2.3 of generator *)



