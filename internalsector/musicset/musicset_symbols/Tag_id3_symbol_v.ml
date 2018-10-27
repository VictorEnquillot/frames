(** {3 Tag_id3_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Tag_id3_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Tag_id3_symbol_t.Tag_id3v1_symbol sym_tid ->
    Tag_id3v1_symbol_v.name sym_tid
  | Tag_id3_symbol_t.Tag_id3v2_symbol sym_tid ->
    Tag_id3v2_symbol_v.name sym_tid
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Tag_id3_symbol_t.Tag_id3v1_symbol sym_tid ->
  Tag_id3v1_symbol_v.string_off sym_tid
  | Tag_id3_symbol_t.Tag_id3v2_symbol sym_tid ->
  Tag_id3v2_symbol_v.string_off sym_tid
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_tid =
  Format.sprintf "Tag_id3_symbol_t.%s" (String.capitalize (name sym_tid))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_tid =
  Format.sprintf "%s \"%s\"" (longname sym_tid) (string_off sym_tid)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let tag_id3v1_symbol_off_tag_id3_symbol = function
  | Tag_id3_symbol_t.Tag_id3v1_symbol sym_tid -> sym_tid
  | sym_tid -> Error_messages_v.print_fatal_error
      nam_cod "tag_id3v1_symbol_off_tag_id3_symbol"
      "Tag_id3v1_symbol"
      (name sym_tid) "check"
;;

let tag_id3v2_symbol_off_tag_id3_symbol = function
  | Tag_id3_symbol_t.Tag_id3v2_symbol sym_tid -> sym_tid
  | sym_tid -> Error_messages_v.print_fatal_error
      nam_cod "tag_id3v2_symbol_off_tag_id3_symbol"
      "Tag_id3v2_symbol"
      (name sym_tid) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let tag_id3v1_128_symbol_off_tag_id3_symbol sym_tid = 
  let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
    Tag_id3v1_symbol_v.tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid
;;

let tag_id3v1_227_symbol_off_tag_id3_symbol sym_tid = 
  let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
    Tag_id3v1_symbol_v.tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid
;;

let tag_id3v2_base_symbol_off_tag_id3_symbol sym_tid = 
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
    Tag_id3v2_symbol_v.tag_id3v2_base_symbol_off_tag_id3v2_symbol sym_tid
;;

let tag_id3v2_base_unique_symbol_off_tag_id3_symbol sym_tid = 
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
    Tag_id3v2_symbol_v.tag_id3v2_base_unique_symbol_off_tag_id3v2_symbol sym_tid
;;

let tag_id3v2_base_multiple_symbol_off_tag_id3_symbol sym_tid = 
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
    Tag_id3v2_symbol_v.tag_id3v2_base_multiple_symbol_off_tag_id3v2_symbol sym_tid
;;

let tag_id3v2_specific_symbol_off_tag_id3_symbol sym_tid = 
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
    Tag_id3v2_symbol_v.tag_id3v2_specific_symbol_off_tag_id3v2_symbol sym_tid
;;

let tag_id3v2_3_specific_symbol_off_tag_id3_symbol sym_tid = 
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
    Tag_id3v2_symbol_v.tag_id3v2_3_specific_symbol_off_tag_id3v2_symbol sym_tid
;;

let tag_id3v2_4_specific_symbol_off_tag_id3_symbol sym_tid = 
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
    Tag_id3v2_symbol_v.tag_id3v2_4_specific_symbol_off_tag_id3v2_symbol sym_tid
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_tag_id3v1_symbol_off_tag_id3_symbol = function
  | Tag_id3_symbol_t.Tag_id3v1_symbol _ -> true
  | _ -> false
;;

let is_tag_id3v2_symbol_off_tag_id3_symbol = function
  | Tag_id3_symbol_t.Tag_id3v2_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_tag_id3v1_0 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_tag_id3v1_0 sym_tid
    end
;;

let is_tag_id3v1_1 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_tag_id3v1_1 sym_tid
    end
;;

let is_tag_id3v1_extended sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_tag_id3v1_extended sym_tid
    end
;;

let is_header_3 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_header_3 sym_tid
    end
;;

let is_title_30 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_title_30 sym_tid
    end
;;

let is_artist_30 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_artist_30 sym_tid
    end
;;

let is_album_30 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_album_30 sym_tid
    end
;;

let is_year_4 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_year_4 sym_tid
    end
;;

let is_comment_28 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_comment_28 sym_tid
    end
;;

let is_comment_30 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_comment_30 sym_tid
    end
;;

let is_zero_byte_1 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_zero_byte_1 sym_tid
    end
;;

let is_track_1 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_track_1 sym_tid
    end
;;

let is_genre_1 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_genre_1 sym_tid
    end
;;

let is_header_4 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_header_4 sym_tid
    end
;;

let is_title_60 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_title_60 sym_tid
    end
;;

let is_artist_60 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_artist_60 sym_tid
    end
;;

let is_album_60 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_album_60 sym_tid
    end
;;

let is_speed_1 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_speed_1 sym_tid
    end
;;

let is_genre_30 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_genre_30 sym_tid
    end
;;

let is_start_time_6 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_start_time_6 sym_tid
    end
;;

let is_end_time_6 sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v1_symbol_v.is_end_time_6 sym_tid
    end
;;

let is_aenc sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_aenc sym_tid
    end
;;

let is_apic sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_apic sym_tid
    end
;;

let is_comm sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_comm sym_tid
    end
;;

let is_comr sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_comr sym_tid
    end
;;

let is_encr sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_encr sym_tid
    end
;;

let is_etco sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_etco sym_tid
    end
;;

let is_geob sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_geob sym_tid
    end
;;

let is_grid sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_grid sym_tid
    end
;;

let is_link sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_link sym_tid
    end
;;

let is_mcdi sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_mcdi sym_tid
    end
;;

let is_mllt sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_mllt sym_tid
    end
;;

let is_owne sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_owne sym_tid
    end
;;

let is_pcnt sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_pcnt sym_tid
    end
;;

let is_popm sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_popm sym_tid
    end
;;

let is_poss sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_poss sym_tid
    end
;;

let is_priv sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_priv sym_tid
    end
;;

let is_rbuf sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_rbuf sym_tid
    end
;;

let is_rvrb sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_rvrb sym_tid
    end
;;

let is_sylt sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_sylt sym_tid
    end
;;

let is_sytc sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_sytc sym_tid
    end
;;

let is_talb sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_talb sym_tid
    end
;;

let is_tbpm sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tbpm sym_tid
    end
;;

let is_tcon sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tcon sym_tid
    end
;;

let is_tcop sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tcop sym_tid
    end
;;

let is_tdly sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tdly sym_tid
    end
;;

let is_tenc sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tenc sym_tid
    end
;;

let is_tflt sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tflt sym_tid
    end
;;

let is_tit1 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tit1 sym_tid
    end
;;

let is_tit2 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tit2 sym_tid
    end
;;

let is_tit3 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tit3 sym_tid
    end
;;

let is_tkey sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tkey sym_tid
    end
;;

let is_tlan sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tlan sym_tid
    end
;;

let is_tlen sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tlen sym_tid
    end
;;

let is_tmed sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tmed sym_tid
    end
;;

let is_toal sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_toal sym_tid
    end
;;

let is_tofn sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tofn sym_tid
    end
;;

let is_town sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_town sym_tid
    end
;;

let is_tpe2 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tpe2 sym_tid
    end
;;

let is_tpe3 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tpe3 sym_tid
    end
;;

let is_tpe4 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tpe4 sym_tid
    end
;;

let is_tpos sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tpos sym_tid
    end
;;

let is_tpub sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tpub sym_tid
    end
;;

let is_trck sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_trck sym_tid
    end
;;

let is_trsn sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_trsn sym_tid
    end
;;

let is_trso sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_trso sym_tid
    end
;;

let is_tsrc sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tsrc sym_tid
    end
;;

let is_tsse sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tsse sym_tid
    end
;;

let is_txxx sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_txxx sym_tid
    end
;;

let is_ufid sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_ufid sym_tid
    end
;;

let is_user sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_user sym_tid
    end
;;

let is_uslt sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_uslt sym_tid
    end
;;

let is_wcom sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_wcom sym_tid
    end
;;

let is_wcop sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_wcop sym_tid
    end
;;

let is_woaf sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_woaf sym_tid
    end
;;

let is_woar sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_woar sym_tid
    end
;;

let is_woas sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_woas sym_tid
    end
;;

let is_wors sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_wors sym_tid
    end
;;

let is_wpay sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_wpay sym_tid
    end
;;

let is_wpub sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_wpub sym_tid
    end
;;

let is_wxxx sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_wxxx sym_tid
    end
;;

let is_tpe1 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tpe1 sym_tid
    end
;;

let is_tcom sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tcom sym_tid
    end
;;

let is_text sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_text sym_tid
    end
;;

let is_toly sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_toly sym_tid
    end
;;

let is_tope sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tope sym_tid
    end
;;

let is_equa sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_equa sym_tid
    end
;;

let is_ipls sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_ipls sym_tid
    end
;;

let is_rvad sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_rvad sym_tid
    end
;;

let is_tdat sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tdat sym_tid
    end
;;

let is_time sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_time sym_tid
    end
;;

let is_tory sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tory sym_tid
    end
;;

let is_trda sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_trda sym_tid
    end
;;

let is_tyer sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tyer sym_tid
    end
;;

let is_tsiz sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tsiz sym_tid
    end
;;

let is_aspi sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_aspi sym_tid
    end
;;

let is_equ2 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_equ2 sym_tid
    end
;;

let is_rva2 sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_rva2 sym_tid
    end
;;

let is_seek sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_seek sym_tid
    end
;;

let is_sign sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_sign sym_tid
    end
;;

let is_tden sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tden sym_tid
    end
;;

let is_tdor sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tdor sym_tid
    end
;;

let is_tdrc sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tdrc sym_tid
    end
;;

let is_tdrl sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tdrl sym_tid
    end
;;

let is_tdtg sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tdtg sym_tid
    end
;;

let is_tipl sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tipl sym_tid
    end
;;

let is_tmcl sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tmcl sym_tid
    end
;;

let is_tmoo sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tmoo sym_tid
    end
;;

let is_tpro sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tpro sym_tid
    end
;;

let is_tsoa sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tsoa sym_tid
    end
;;

let is_tsop sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tsop sym_tid
    end
;;

let is_tsot sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tsot sym_tid
    end
;;

let is_tsst sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
      let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
      Tag_id3v2_symbol_v.is_tsst sym_tid
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_tag_id3v1_128_symbol_off_tag_id3_symbol sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
  let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
  Tag_id3v1_symbol_v.is_tag_id3v1_128_symbol_off_tag_id3v1_symbol sym_tid
    end
;;

let is_tag_id3v1_227_symbol_off_tag_id3_symbol sym_tid =
  if not (is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
  let sym_tid = tag_id3v1_symbol_off_tag_id3_symbol sym_tid in
  Tag_id3v1_symbol_v.is_tag_id3v1_227_symbol_off_tag_id3v1_symbol sym_tid
    end
;;

let is_tag_id3v2_base_symbol_off_tag_id3_symbol sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
  Tag_id3v2_symbol_v.is_tag_id3v2_base_symbol_off_tag_id3v2_symbol sym_tid
    end
;;

let is_tag_id3v2_base_unique_symbol_off_tag_id3_symbol sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
  Tag_id3v2_symbol_v.is_tag_id3v2_base_unique_symbol_off_tag_id3v2_symbol sym_tid
    end
;;

let is_tag_id3v2_base_multiple_symbol_off_tag_id3_symbol sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
  Tag_id3v2_symbol_v.is_tag_id3v2_base_multiple_symbol_off_tag_id3v2_symbol sym_tid
    end
;;

let is_tag_id3v2_specific_symbol_off_tag_id3_symbol sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
  Tag_id3v2_symbol_v.is_tag_id3v2_specific_symbol_off_tag_id3v2_symbol sym_tid
    end
;;

let is_tag_id3v2_3_specific_symbol_off_tag_id3_symbol sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
  Tag_id3v2_symbol_v.is_tag_id3v2_3_specific_symbol_off_tag_id3v2_symbol sym_tid
    end
;;

let is_tag_id3v2_4_specific_symbol_off_tag_id3_symbol sym_tid =
  if not (is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid)
  then false
  else
    begin
  let sym_tid = tag_id3v2_symbol_off_tag_id3_symbol sym_tid in
  Tag_id3v2_symbol_v.is_tag_id3v2_4_specific_symbol_off_tag_id3v2_symbol sym_tid
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let tag_id3_symbol_of_tag_id3v1_symbol sym_tid = 
  Tag_id3_symbol_t.Tag_id3v1_symbol sym_tid
;;

let tag_id3_symbol_of_tag_id3v2_symbol sym_tid = 
  Tag_id3_symbol_t.Tag_id3v2_symbol sym_tid
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let tag_id3_symbol_of_tag_id3v1_128_symbol sym_ti1 = 
  let sym_tid = Tag_id3v1_symbol_v.tag_id3v1_symbol_of_tag_id3v1_128_symbol sym_ti1 in
    tag_id3_symbol_of_tag_id3v1_symbol sym_tid
;;

let tag_id3_symbol_of_tag_id3v1_227_symbol sym_ti2 = 
  let sym_tid = Tag_id3v1_symbol_v.tag_id3v1_symbol_of_tag_id3v1_227_symbol sym_ti2 in
    tag_id3_symbol_of_tag_id3v1_symbol sym_tid
;;

let tag_id3_symbol_of_tag_id3v2_base_symbol sym_tib = 
  let sym_tid = Tag_id3v2_symbol_v.tag_id3v2_symbol_of_tag_id3v2_base_symbol sym_tib in
    tag_id3_symbol_of_tag_id3v2_symbol sym_tid
;;

let tag_id3_symbol_of_tag_id3v2_base_unique_symbol sym_tbu = 
  let sym_tid = Tag_id3v2_symbol_v.tag_id3v2_symbol_of_tag_id3v2_base_unique_symbol sym_tbu in
    tag_id3_symbol_of_tag_id3v2_symbol sym_tid
;;

let tag_id3_symbol_of_tag_id3v2_base_multiple_symbol sym_tbm = 
  let sym_tid = Tag_id3v2_symbol_v.tag_id3v2_symbol_of_tag_id3v2_base_multiple_symbol sym_tbm in
    tag_id3_symbol_of_tag_id3v2_symbol sym_tid
;;

let tag_id3_symbol_of_tag_id3v2_specific_symbol sym_tis = 
  let sym_tid = Tag_id3v2_symbol_v.tag_id3v2_symbol_of_tag_id3v2_specific_symbol sym_tis in
    tag_id3_symbol_of_tag_id3v2_symbol sym_tid
;;

let tag_id3_symbol_of_tag_id3v2_3_specific_symbol sym_t3s = 
  let sym_tid = Tag_id3v2_symbol_v.tag_id3v2_symbol_of_tag_id3v2_3_specific_symbol sym_t3s in
    tag_id3_symbol_of_tag_id3v2_symbol sym_tid
;;

let tag_id3_symbol_of_tag_id3v2_4_specific_symbol sym_t4s = 
  let sym_tid = Tag_id3v2_symbol_v.tag_id3v2_symbol_of_tag_id3v2_4_specific_symbol sym_t4s in
    tag_id3_symbol_of_tag_id3v2_symbol sym_tid
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let tag_id3v1_0 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.tag_id3v1_0;;

let tag_id3v1_1 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.tag_id3v1_1;;

let tag_id3v1_extended = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.tag_id3v1_extended;;

let header_3 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.header_3;;

let title_30 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.title_30;;

let artist_30 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.artist_30;;

let album_30 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.album_30;;

let year_4 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.year_4;;

let comment_28 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.comment_28;;

let comment_30 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.comment_30;;

let zero_byte_1 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.zero_byte_1;;

let track_1 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.track_1;;

let genre_1 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.genre_1;;

let header_4 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.header_4;;

let title_60 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.title_60;;

let artist_60 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.artist_60;;

let album_60 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.album_60;;

let speed_1 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.speed_1;;

let genre_30 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.genre_30;;

let start_time_6 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.start_time_6;;

let end_time_6 = tag_id3_symbol_of_tag_id3v1_symbol Tag_id3v1_symbol_v.end_time_6;;

let aenc = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.aenc;;

let apic = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.apic;;

let comm = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.comm;;

let comr = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.comr;;

let encr = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.encr;;

let etco = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.etco;;

let geob = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.geob;;

let grid = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.grid;;

let link = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.link;;

let mcdi = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.mcdi;;

let mllt = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.mllt;;

let owne = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.owne;;

let pcnt = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.pcnt;;

let popm = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.popm;;

let poss = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.poss;;

let priv = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.priv;;

let rbuf = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.rbuf;;

let rvrb = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.rvrb;;

let sylt = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.sylt;;

let sytc = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.sytc;;

let talb = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.talb;;

let tbpm = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tbpm;;

let tcon = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tcon;;

let tcop = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tcop;;

let tdly = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tdly;;

let tenc = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tenc;;

let tflt = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tflt;;

let tit1 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tit1;;

let tit2 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tit2;;

let tit3 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tit3;;

let tkey = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tkey;;

let tlan = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tlan;;

let tlen = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tlen;;

let tmed = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tmed;;

let toal = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.toal;;

let tofn = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tofn;;

let town = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.town;;

let tpe2 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tpe2;;

let tpe3 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tpe3;;

let tpe4 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tpe4;;

let tpos = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tpos;;

let tpub = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tpub;;

let trck = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.trck;;

let trsn = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.trsn;;

let trso = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.trso;;

let tsrc = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tsrc;;

let tsse = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tsse;;

let txxx = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.txxx;;

let ufid = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.ufid;;

let user = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.user;;

let uslt = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.uslt;;

let wcom = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.wcom;;

let wcop = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.wcop;;

let woaf = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.woaf;;

let woar = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.woar;;

let woas = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.woas;;

let wors = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.wors;;

let wpay = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.wpay;;

let wpub = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.wpub;;

let wxxx = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.wxxx;;

let tpe1 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tpe1;;

let tcom = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tcom;;

let text = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.text;;

let toly = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.toly;;

let tope = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tope;;

let equa = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.equa;;

let ipls = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.ipls;;

let rvad = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.rvad;;

let tdat = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tdat;;

let time = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.time;;

let tory = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tory;;

let trda = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.trda;;

let tyer = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tyer;;

let tsiz = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tsiz;;

let aspi = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.aspi;;

let equ2 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.equ2;;

let rva2 = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.rva2;;

let seek = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.seek;;

let sign = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.sign;;

let tden = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tden;;

let tdor = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tdor;;

let tdrc = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tdrc;;

let tdrl = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tdrl;;

let tdtg = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tdtg;;

let tipl = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tipl;;

let tmcl = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tmcl;;

let tmoo = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tmoo;;

let tpro = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tpro;;

let tsoa = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tsoa;;

let tsop = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tsop;;

let tsot = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tsot;;

let tsst = tag_id3_symbol_of_tag_id3v2_symbol Tag_id3v2_symbol_v.tsst;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Tag_id3_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Tag_id3_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try tag_id3_symbol_of_tag_id3v1_symbol
      (Tag_id3v1_symbol_v.make nam s)
  with Failure "Not_a_tag_id3v1_symbol:Tag_id3v1_symbol_v.ml:make" ->
  try tag_id3_symbol_of_tag_id3v2_symbol
      (Tag_id3v2_symbol_v.make nam s)
  with Failure "Not_a_tag_id3v2_symbol:Tag_id3v2_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Tag_id3_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Tag_id3_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Tag_id3_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Tag_id3_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Tag_id3 subtype" nam s)
      "it does not exists"
      "Check file Tag_id3_symbol_v.ml"
    in
    failwith "Not_a_tag_id3_symbol:Tag_id3_symbol_v.ml:make"
;;


(** Tag_id3_symbol_v at 18:57:20 on 27 Jun 2013. created by version v2.3 of generator *)



