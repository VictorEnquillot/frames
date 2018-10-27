
(** {3 The functionalities for a Symbol for a Id3v1_tag.} *)

let nam_cod = "id3v1_tag_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v1_tag_symbol_t.Id3v1_tag_128_symbol sym_it1 ->
      Id3v1_tag_128_symbol_v.name sym_it1
  | Id3v1_tag_symbol_t.Id3v1_tag_227_symbol sym_it2 ->
      Id3v1_tag_227_symbol_v.name sym_it2
;;


(** {6 Upgrading} *)


let id3v1_tag_symbol_of_id3v1_tag_128_symbol sym_it1 = 
  Id3v1_tag_symbol_t.Id3v1_tag_128_symbol sym_it1
;;

let id3v1_tag_symbol_of_id3v1_tag_227_symbol sym_it2 = 
  Id3v1_tag_symbol_t.Id3v1_tag_227_symbol sym_it2
;;


(** {6 Abbreviating} *)


let header_3 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.header_3;;

let title_30 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.title_30;;

let artist_30 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.artist_30;;

let album_30 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.album_30;;

let year_4 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.year_4;;

let comment_28 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.comment_28;;

let comment_30 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.comment_30;;

let zero_byte_1 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.zero_byte_1;;

let track_1 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.track_1;;

let genre_1 = id3v1_tag_symbol_of_id3v1_tag_128_symbol Id3v1_tag_128_symbol_v.genre_1;;

let header_4 = id3v1_tag_symbol_of_id3v1_tag_227_symbol Id3v1_tag_227_symbol_v.header_4;;

let title_60 = id3v1_tag_symbol_of_id3v1_tag_227_symbol Id3v1_tag_227_symbol_v.title_60;;

let artist_60 = id3v1_tag_symbol_of_id3v1_tag_227_symbol Id3v1_tag_227_symbol_v.artist_60;;

let album_60 = id3v1_tag_symbol_of_id3v1_tag_227_symbol Id3v1_tag_227_symbol_v.album_60;;

let speed_1 = id3v1_tag_symbol_of_id3v1_tag_227_symbol Id3v1_tag_227_symbol_v.speed_1;;

let genre_30 = id3v1_tag_symbol_of_id3v1_tag_227_symbol Id3v1_tag_227_symbol_v.genre_30;;

let start_time_6 = id3v1_tag_symbol_of_id3v1_tag_227_symbol Id3v1_tag_227_symbol_v.start_time_6;;

let end_time_6 = id3v1_tag_symbol_of_id3v1_tag_227_symbol Id3v1_tag_227_symbol_v.end_time_6;;


(** {6 Making} *)


let make nam s =
  try id3v1_tag_symbol_of_id3v1_tag_128_symbol
      (Id3v1_tag_128_symbol_v.make nam s)
  with Failure "Not_Id3v1_tag_128_symbol:id3v1_tag_128_symbol_v:make" ->
  try id3v1_tag_symbol_of_id3v1_tag_227_symbol
      (Id3v1_tag_227_symbol_v.make nam s)
  with Failure "Not_Id3v1_tag_227_symbol:id3v1_tag_227_symbol_v:make" ->
    failwith "Not_Id3v1_tag_symbol:id3v1_tag_symbol_v:make"
;;


(** {6 Extracting} *)


let id3v1_tag_128_symbol_off_id3v1_tag_symbol = function
  | Id3v1_tag_symbol_t.Id3v1_tag_128_symbol sym_it1 -> sym_it1
  | sym_idt -> Error_messages_v.print_fatal_error
      nam_cod "id3v1_tag_128_symbol_off_id3v1_tag_symbol"
      "Id3v1_tag_128_symbol"
      (name sym_idt) "check"
;;

let id3v1_tag_227_symbol_off_id3v1_tag_symbol = function
  | Id3v1_tag_symbol_t.Id3v1_tag_227_symbol sym_it2 -> sym_it2
  | sym_idt -> Error_messages_v.print_fatal_error
      nam_cod "id3v1_tag_227_symbol_off_id3v1_tag_symbol"
      "Id3v1_tag_227_symbol"
      (name sym_idt) "check"
;;


(** {6 Querying} *)


let is_id3v1_tag_128_symbol_off_id3v1_tag_symbol = function
  | Id3v1_tag_symbol_t.Id3v1_tag_128_symbol _ -> true
  | _ -> false
;;

let is_id3v1_tag_227_symbol_off_id3v1_tag_symbol = function
  | Id3v1_tag_symbol_t.Id3v1_tag_227_symbol _ -> true
  | _ -> false
;;



(** created by ./generator id3v1_tag implementation symbol at 17:43 6 Jun 2012. *)



