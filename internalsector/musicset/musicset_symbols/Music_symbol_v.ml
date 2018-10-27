(** {3 Music_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Music_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Music_symbol_t.Mp3_data_symbol sym_mda ->
    Mp3_data_symbol_v.name sym_mda
  | Music_symbol_t.Mp3_frame_symbol sym_mfr ->
    Mp3_frame_symbol_v.name sym_mfr
  | Music_symbol_t.Mp3_elementary_stream_symbol sym_mes ->
    Mp3_elementary_stream_symbol_v.name sym_mes
  | Music_symbol_t.Mp3_file_symbol sym_mfi ->
    Mp3_file_symbol_v.name sym_mfi
  | Music_symbol_t.Mp3_header_symbol sym_mhe ->
    Mp3_header_symbol_v.name sym_mhe
  | Music_symbol_t.Mp3_layout_tag_symbol sym_mlt ->
    Mp3_layout_tag_symbol_v.name sym_mlt
  | Music_symbol_t.Tag_id3_symbol sym_tid ->
    Tag_id3_symbol_v.name sym_tid
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Music_symbol_t.Mp3_data_symbol sym_mda ->
  Mp3_data_symbol_v.string_off sym_mda
  | Music_symbol_t.Mp3_frame_symbol sym_mfr ->
  Mp3_frame_symbol_v.string_off sym_mfr
  | Music_symbol_t.Mp3_elementary_stream_symbol sym_mes ->
  Mp3_elementary_stream_symbol_v.string_off sym_mes
  | Music_symbol_t.Mp3_file_symbol sym_mfi ->
  Mp3_file_symbol_v.string_off sym_mfi
  | Music_symbol_t.Mp3_header_symbol sym_mhe ->
  Mp3_header_symbol_v.string_off sym_mhe
  | Music_symbol_t.Mp3_layout_tag_symbol sym_mlt ->
  Mp3_layout_tag_symbol_v.string_off sym_mlt
  | Music_symbol_t.Tag_id3_symbol sym_tid ->
  Tag_id3_symbol_v.string_off sym_tid
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mus =
  Format.sprintf "Music_symbol_t.%s" (String.capitalize (name sym_mus))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mus =
  Format.sprintf "%s \"%s\"" (longname sym_mus) (string_off sym_mus)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let mp3_data_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_data_symbol sym_mda -> sym_mda
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_data_symbol_off_music_symbol"
      "Mp3_data_symbol"
      (name sym_mus) "check"
;;

let mp3_frame_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_frame_symbol sym_mfr -> sym_mfr
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_frame_symbol_off_music_symbol"
      "Mp3_frame_symbol"
      (name sym_mus) "check"
;;

let mp3_elementary_stream_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_elementary_stream_symbol sym_mes -> sym_mes
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_elementary_stream_symbol_off_music_symbol"
      "Mp3_elementary_stream_symbol"
      (name sym_mus) "check"
;;

let mp3_file_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_file_symbol sym_mfi -> sym_mfi
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_file_symbol_off_music_symbol"
      "Mp3_file_symbol"
      (name sym_mus) "check"
;;

let mp3_header_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_header_symbol sym_mhe -> sym_mhe
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_symbol_off_music_symbol"
      "Mp3_header_symbol"
      (name sym_mus) "check"
;;

let mp3_layout_tag_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_layout_tag_symbol sym_mlt -> sym_mlt
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_layout_tag_symbol_off_music_symbol"
      "Mp3_layout_tag_symbol"
      (name sym_mus) "check"
;;

let tag_id3_symbol_off_music_symbol = function
  | Music_symbol_t.Tag_id3_symbol sym_tid -> sym_tid
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "tag_id3_symbol_off_music_symbol"
      "Tag_id3_symbol"
      (name sym_mus) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let mp3_file_id3v1_symbol_off_music_symbol sym_mus = 
  let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
    Mp3_file_symbol_v.mp3_file_id3v1_symbol_off_mp3_file_symbol sym_mfi
;;

let mp3_file_id3v2_symbol_off_music_symbol sym_mus = 
  let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
    Mp3_file_symbol_v.mp3_file_id3v2_symbol_off_mp3_file_symbol sym_mfi
;;

let mp3_header_field_symbol_off_music_symbol sym_mus = 
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
    Mp3_header_symbol_v.mp3_header_field_symbol_off_mp3_header_symbol sym_mhe
;;

let mp3_header_field_onebit_symbol_off_music_symbol sym_mus = 
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
    Mp3_header_symbol_v.mp3_header_field_onebit_symbol_off_mp3_header_symbol sym_mhe
;;

let version_symbol_off_music_symbol sym_mus = 
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
    Mp3_header_symbol_v.version_symbol_off_mp3_header_symbol sym_mhe
;;

let mp3_header_field_twobits_symbol_off_music_symbol sym_mus = 
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
    Mp3_header_symbol_v.mp3_header_field_twobits_symbol_off_mp3_header_symbol sym_mhe
;;

let mp3_header_field_fourbits_symbol_off_music_symbol sym_mus = 
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
    Mp3_header_symbol_v.mp3_header_field_fourbits_symbol_off_mp3_header_symbol sym_mhe
;;

let mp3_header_field_elevenbits_symbol_off_music_symbol sym_mus = 
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
    Mp3_header_symbol_v.mp3_header_field_elevenbits_symbol_off_mp3_header_symbol sym_mhe
;;

let mp3_header_tag_symbol_off_music_symbol sym_mus = 
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
    Mp3_header_symbol_v.mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe
;;

let tag_id3v1_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v1_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v1_128_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v1_128_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v1_227_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v1_227_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v2_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v2_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v2_base_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v2_base_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v2_base_unique_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v2_base_unique_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v2_base_multiple_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v2_base_multiple_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v2_specific_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v2_specific_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v2_3_specific_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v2_3_specific_symbol_off_tag_id3_symbol sym_tid
;;

let tag_id3v2_4_specific_symbol_off_music_symbol sym_mus = 
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
    Tag_id3_symbol_v.tag_id3v2_4_specific_symbol_off_tag_id3_symbol sym_tid
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_mp3_data_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_data_symbol _ -> true
  | _ -> false
;;

let is_mp3_frame_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_frame_symbol _ -> true
  | _ -> false
;;

let is_mp3_elementary_stream_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_elementary_stream_symbol _ -> true
  | _ -> false
;;

let is_mp3_file_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_file_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_header_symbol _ -> true
  | _ -> false
;;

let is_mp3_layout_tag_symbol_off_music_symbol = function
  | Music_symbol_t.Mp3_layout_tag_symbol _ -> true
  | _ -> false
;;

let is_tag_id3_symbol_off_music_symbol = function
  | Music_symbol_t.Tag_id3_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_mp3_data_audio sym_mus =
  if not (is_mp3_data_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mda = mp3_data_symbol_off_music_symbol sym_mus in
      Mp3_data_symbol_v.is_mp3_data_audio sym_mda
    end
;;

let is_mp3_data_video sym_mus =
  if not (is_mp3_data_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mda = mp3_data_symbol_off_music_symbol sym_mus in
      Mp3_data_symbol_v.is_mp3_data_video sym_mda
    end
;;

let is_mp3_data_closed_caption sym_mus =
  if not (is_mp3_data_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mda = mp3_data_symbol_off_music_symbol sym_mus in
      Mp3_data_symbol_v.is_mp3_data_closed_caption sym_mda
    end
;;

let is_mp3_frame_audio sym_mus =
  if not (is_mp3_frame_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfr = mp3_frame_symbol_off_music_symbol sym_mus in
      Mp3_frame_symbol_v.is_mp3_frame_audio sym_mfr
    end
;;

let is_mp3_frame_video sym_mus =
  if not (is_mp3_frame_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfr = mp3_frame_symbol_off_music_symbol sym_mus in
      Mp3_frame_symbol_v.is_mp3_frame_video sym_mfr
    end
;;

let is_mp3_frame_closed_caption sym_mus =
  if not (is_mp3_frame_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfr = mp3_frame_symbol_off_music_symbol sym_mus in
      Mp3_frame_symbol_v.is_mp3_frame_closed_caption sym_mfr
    end
;;

let is_mp3_elementary_stream_audio sym_mus =
  if not (is_mp3_elementary_stream_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mes = mp3_elementary_stream_symbol_off_music_symbol sym_mus in
      Mp3_elementary_stream_symbol_v.is_mp3_elementary_stream_audio sym_mes
    end
;;

let is_mp3_elementary_stream_video sym_mus =
  if not (is_mp3_elementary_stream_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mes = mp3_elementary_stream_symbol_off_music_symbol sym_mus in
      Mp3_elementary_stream_symbol_v.is_mp3_elementary_stream_video sym_mes
    end
;;

let is_mp3_elementary_stream_closed_caption sym_mus =
  if not (is_mp3_elementary_stream_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mes = mp3_elementary_stream_symbol_off_music_symbol sym_mus in
      Mp3_elementary_stream_symbol_v.is_mp3_elementary_stream_closed_caption sym_mes
    end
;;

let is_mp3_file_id3v1_1 sym_mus =
  if not (is_mp3_file_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
      Mp3_file_symbol_v.is_mp3_file_id3v1_1 sym_mfi
    end
;;

let is_mp3_file_id3v1_2 sym_mus =
  if not (is_mp3_file_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
      Mp3_file_symbol_v.is_mp3_file_id3v1_2 sym_mfi
    end
;;

let is_mp3_file_id3v1_2_5 sym_mus =
  if not (is_mp3_file_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
      Mp3_file_symbol_v.is_mp3_file_id3v1_2_5 sym_mfi
    end
;;

let is_mp3_file_id3v2_1 sym_mus =
  if not (is_mp3_file_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
      Mp3_file_symbol_v.is_mp3_file_id3v2_1 sym_mfi
    end
;;

let is_mp3_file_id3v2_2 sym_mus =
  if not (is_mp3_file_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
      Mp3_file_symbol_v.is_mp3_file_id3v2_2 sym_mfi
    end
;;

let is_mp3_file_id3v2_2_5 sym_mus =
  if not (is_mp3_file_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
      Mp3_file_symbol_v.is_mp3_file_id3v2_2_5 sym_mfi
    end
;;

let is_version_1 sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_version_1 sym_mhe
    end
;;

let is_version_2 sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_version_2 sym_mhe
    end
;;

let is_version_2_5 sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_version_2_5 sym_mhe
    end
;;

let is_error_protection sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_error_protection sym_mhe
    end
;;

let is_pad_bit sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_pad_bit sym_mhe
    end
;;

let is_intensity_stereo sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_intensity_stereo sym_mhe
    end
;;

let is_ms_stereo sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_ms_stereo sym_mhe
    end
;;

let is_private_bit sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_private_bit sym_mhe
    end
;;

let is_copyright sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_copyright sym_mhe
    end
;;

let is_original sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_original sym_mhe
    end
;;

let is_layer sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_layer sym_mhe
    end
;;

let is_frequency sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_frequency sym_mhe
    end
;;

let is_mode sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mode sym_mhe
    end
;;

let is_mode_extension sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mode_extension sym_mhe
    end
;;

let is_emphasis sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_emphasis sym_mhe
    end
;;

let is_bit_rate sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_bit_rate sym_mhe
    end
;;

let is_sync_word sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_sync_word sym_mhe
    end
;;

let is_mp3_header_tag_onebit sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mp3_header_tag_onebit sym_mhe
    end
;;

let is_mp3_header_tag_twobits sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mp3_header_tag_twobits sym_mhe
    end
;;

let is_id3v2 sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_id3v2 sym_mhe
    end
;;

let is_mp3_header_tag_fourbits sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mp3_header_tag_fourbits sym_mhe
    end
;;

let is_mp3_header_tag_twelvebits sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mp3_header_tag_twelvebits sym_mhe
    end
;;

let is_mp3_header_1 sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mp3_header_1 sym_mhe
    end
;;

let is_mp3_header_2 sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mp3_header_2 sym_mhe
    end
;;

let is_mp3_header_2_5 sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
      Mp3_header_symbol_v.is_mp3_header_2_5 sym_mhe
    end
;;

let is_string_1 sym_mus =
  if not (is_mp3_layout_tag_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mlt = mp3_layout_tag_symbol_off_music_symbol sym_mus in
      Mp3_layout_tag_symbol_v.is_string_1 sym_mlt
    end
;;

let is_string_3 sym_mus =
  if not (is_mp3_layout_tag_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mlt = mp3_layout_tag_symbol_off_music_symbol sym_mus in
      Mp3_layout_tag_symbol_v.is_string_3 sym_mlt
    end
;;

let is_string_4 sym_mus =
  if not (is_mp3_layout_tag_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mlt = mp3_layout_tag_symbol_off_music_symbol sym_mus in
      Mp3_layout_tag_symbol_v.is_string_4 sym_mlt
    end
;;

let is_string_6 sym_mus =
  if not (is_mp3_layout_tag_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mlt = mp3_layout_tag_symbol_off_music_symbol sym_mus in
      Mp3_layout_tag_symbol_v.is_string_6 sym_mlt
    end
;;

let is_string_30 sym_mus =
  if not (is_mp3_layout_tag_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mlt = mp3_layout_tag_symbol_off_music_symbol sym_mus in
      Mp3_layout_tag_symbol_v.is_string_30 sym_mlt
    end
;;

let is_string_60 sym_mus =
  if not (is_mp3_layout_tag_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_mlt = mp3_layout_tag_symbol_off_music_symbol sym_mus in
      Mp3_layout_tag_symbol_v.is_string_60 sym_mlt
    end
;;

let is_tag_id3v1_0 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tag_id3v1_0 sym_tid
    end
;;

let is_tag_id3v1_1 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tag_id3v1_1 sym_tid
    end
;;

let is_tag_id3v1_extended sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tag_id3v1_extended sym_tid
    end
;;

let is_header_3 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_header_3 sym_tid
    end
;;

let is_title_30 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_title_30 sym_tid
    end
;;

let is_artist_30 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_artist_30 sym_tid
    end
;;

let is_album_30 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_album_30 sym_tid
    end
;;

let is_year_4 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_year_4 sym_tid
    end
;;

let is_comment_28 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_comment_28 sym_tid
    end
;;

let is_comment_30 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_comment_30 sym_tid
    end
;;

let is_zero_byte_1 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_zero_byte_1 sym_tid
    end
;;

let is_track_1 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_track_1 sym_tid
    end
;;

let is_genre_1 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_genre_1 sym_tid
    end
;;

let is_header_4 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_header_4 sym_tid
    end
;;

let is_title_60 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_title_60 sym_tid
    end
;;

let is_artist_60 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_artist_60 sym_tid
    end
;;

let is_album_60 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_album_60 sym_tid
    end
;;

let is_speed_1 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_speed_1 sym_tid
    end
;;

let is_genre_30 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_genre_30 sym_tid
    end
;;

let is_start_time_6 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_start_time_6 sym_tid
    end
;;

let is_end_time_6 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_end_time_6 sym_tid
    end
;;

let is_aenc sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_aenc sym_tid
    end
;;

let is_apic sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_apic sym_tid
    end
;;

let is_comm sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_comm sym_tid
    end
;;

let is_comr sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_comr sym_tid
    end
;;

let is_encr sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_encr sym_tid
    end
;;

let is_etco sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_etco sym_tid
    end
;;

let is_geob sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_geob sym_tid
    end
;;

let is_grid sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_grid sym_tid
    end
;;

let is_link sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_link sym_tid
    end
;;

let is_mcdi sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_mcdi sym_tid
    end
;;

let is_mllt sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_mllt sym_tid
    end
;;

let is_owne sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_owne sym_tid
    end
;;

let is_pcnt sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_pcnt sym_tid
    end
;;

let is_popm sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_popm sym_tid
    end
;;

let is_poss sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_poss sym_tid
    end
;;

let is_priv sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_priv sym_tid
    end
;;

let is_rbuf sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_rbuf sym_tid
    end
;;

let is_rvrb sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_rvrb sym_tid
    end
;;

let is_sylt sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_sylt sym_tid
    end
;;

let is_sytc sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_sytc sym_tid
    end
;;

let is_talb sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_talb sym_tid
    end
;;

let is_tbpm sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tbpm sym_tid
    end
;;

let is_tcon sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tcon sym_tid
    end
;;

let is_tcop sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tcop sym_tid
    end
;;

let is_tdly sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tdly sym_tid
    end
;;

let is_tenc sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tenc sym_tid
    end
;;

let is_tflt sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tflt sym_tid
    end
;;

let is_tit1 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tit1 sym_tid
    end
;;

let is_tit2 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tit2 sym_tid
    end
;;

let is_tit3 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tit3 sym_tid
    end
;;

let is_tkey sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tkey sym_tid
    end
;;

let is_tlan sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tlan sym_tid
    end
;;

let is_tlen sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tlen sym_tid
    end
;;

let is_tmed sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tmed sym_tid
    end
;;

let is_toal sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_toal sym_tid
    end
;;

let is_tofn sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tofn sym_tid
    end
;;

let is_town sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_town sym_tid
    end
;;

let is_tpe2 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tpe2 sym_tid
    end
;;

let is_tpe3 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tpe3 sym_tid
    end
;;

let is_tpe4 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tpe4 sym_tid
    end
;;

let is_tpos sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tpos sym_tid
    end
;;

let is_tpub sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tpub sym_tid
    end
;;

let is_trck sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_trck sym_tid
    end
;;

let is_trsn sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_trsn sym_tid
    end
;;

let is_trso sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_trso sym_tid
    end
;;

let is_tsrc sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tsrc sym_tid
    end
;;

let is_tsse sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tsse sym_tid
    end
;;

let is_txxx sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_txxx sym_tid
    end
;;

let is_ufid sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_ufid sym_tid
    end
;;

let is_user sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_user sym_tid
    end
;;

let is_uslt sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_uslt sym_tid
    end
;;

let is_wcom sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_wcom sym_tid
    end
;;

let is_wcop sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_wcop sym_tid
    end
;;

let is_woaf sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_woaf sym_tid
    end
;;

let is_woar sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_woar sym_tid
    end
;;

let is_woas sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_woas sym_tid
    end
;;

let is_wors sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_wors sym_tid
    end
;;

let is_wpay sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_wpay sym_tid
    end
;;

let is_wpub sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_wpub sym_tid
    end
;;

let is_wxxx sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_wxxx sym_tid
    end
;;

let is_tpe1 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tpe1 sym_tid
    end
;;

let is_tcom sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tcom sym_tid
    end
;;

let is_text sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_text sym_tid
    end
;;

let is_toly sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_toly sym_tid
    end
;;

let is_tope sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tope sym_tid
    end
;;

let is_equa sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_equa sym_tid
    end
;;

let is_ipls sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_ipls sym_tid
    end
;;

let is_rvad sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_rvad sym_tid
    end
;;

let is_tdat sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tdat sym_tid
    end
;;

let is_time sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_time sym_tid
    end
;;

let is_tory sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tory sym_tid
    end
;;

let is_trda sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_trda sym_tid
    end
;;

let is_tyer sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tyer sym_tid
    end
;;

let is_tsiz sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tsiz sym_tid
    end
;;

let is_aspi sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_aspi sym_tid
    end
;;

let is_equ2 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_equ2 sym_tid
    end
;;

let is_rva2 sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_rva2 sym_tid
    end
;;

let is_seek sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_seek sym_tid
    end
;;

let is_sign sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_sign sym_tid
    end
;;

let is_tden sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tden sym_tid
    end
;;

let is_tdor sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tdor sym_tid
    end
;;

let is_tdrc sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tdrc sym_tid
    end
;;

let is_tdrl sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tdrl sym_tid
    end
;;

let is_tdtg sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tdtg sym_tid
    end
;;

let is_tipl sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tipl sym_tid
    end
;;

let is_tmcl sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tmcl sym_tid
    end
;;

let is_tmoo sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tmoo sym_tid
    end
;;

let is_tpro sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tpro sym_tid
    end
;;

let is_tsoa sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tsoa sym_tid
    end
;;

let is_tsop sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tsop sym_tid
    end
;;

let is_tsot sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tsot sym_tid
    end
;;

let is_tsst sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
      let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
      Tag_id3_symbol_v.is_tsst sym_tid
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_mp3_file_id3v1_symbol_off_music_symbol sym_mus =
  if not (is_mp3_file_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
  Mp3_file_symbol_v.is_mp3_file_id3v1_symbol_off_mp3_file_symbol sym_mfi
    end
;;

let is_mp3_file_id3v2_symbol_off_music_symbol sym_mus =
  if not (is_mp3_file_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mfi = mp3_file_symbol_off_music_symbol sym_mus in
  Mp3_file_symbol_v.is_mp3_file_id3v2_symbol_off_mp3_file_symbol sym_mfi
    end
;;

let is_mp3_header_field_symbol_off_music_symbol sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
  Mp3_header_symbol_v.is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe
    end
;;

let is_mp3_header_field_onebit_symbol_off_music_symbol sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
  Mp3_header_symbol_v.is_mp3_header_field_onebit_symbol_off_mp3_header_symbol sym_mhe
    end
;;

let is_version_symbol_off_music_symbol sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
  Mp3_header_symbol_v.is_version_symbol_off_mp3_header_symbol sym_mhe
    end
;;

let is_mp3_header_field_twobits_symbol_off_music_symbol sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
  Mp3_header_symbol_v.is_mp3_header_field_twobits_symbol_off_mp3_header_symbol sym_mhe
    end
;;

let is_mp3_header_field_fourbits_symbol_off_music_symbol sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
  Mp3_header_symbol_v.is_mp3_header_field_fourbits_symbol_off_mp3_header_symbol sym_mhe
    end
;;

let is_mp3_header_field_elevenbits_symbol_off_music_symbol sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
  Mp3_header_symbol_v.is_mp3_header_field_elevenbits_symbol_off_mp3_header_symbol sym_mhe
    end
;;

let is_mp3_header_tag_symbol_off_music_symbol sym_mus =
  if not (is_mp3_header_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_mhe = mp3_header_symbol_off_music_symbol sym_mus in
  Mp3_header_symbol_v.is_mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe
    end
;;

let is_tag_id3v1_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v1_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v1_128_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v1_128_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v1_227_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v1_227_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v2_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v2_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v2_base_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v2_base_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v2_base_unique_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v2_base_unique_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v2_base_multiple_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v2_base_multiple_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v2_specific_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v2_specific_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v2_3_specific_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v2_3_specific_symbol_off_tag_id3_symbol sym_tid
    end
;;

let is_tag_id3v2_4_specific_symbol_off_music_symbol sym_mus =
  if not (is_tag_id3_symbol_off_music_symbol sym_mus)
  then false
  else
    begin
  let sym_tid = tag_id3_symbol_off_music_symbol sym_mus in
  Tag_id3_symbol_v.is_tag_id3v2_4_specific_symbol_off_tag_id3_symbol sym_tid
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let music_symbol_of_mp3_data_symbol sym_mda = 
  Music_symbol_t.Mp3_data_symbol sym_mda
;;

let music_symbol_of_mp3_frame_symbol sym_mfr = 
  Music_symbol_t.Mp3_frame_symbol sym_mfr
;;

let music_symbol_of_mp3_elementary_stream_symbol sym_mes = 
  Music_symbol_t.Mp3_elementary_stream_symbol sym_mes
;;

let music_symbol_of_mp3_file_symbol sym_mfi = 
  Music_symbol_t.Mp3_file_symbol sym_mfi
;;

let music_symbol_of_mp3_header_symbol sym_mhe = 
  Music_symbol_t.Mp3_header_symbol sym_mhe
;;

let music_symbol_of_mp3_layout_tag_symbol sym_mlt = 
  Music_symbol_t.Mp3_layout_tag_symbol sym_mlt
;;

let music_symbol_of_tag_id3_symbol sym_tid = 
  Music_symbol_t.Tag_id3_symbol sym_tid
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let music_symbol_of_mp3_file_id3v1_symbol sym_mfi = 
  let sym_mfi = Mp3_file_symbol_v.mp3_file_symbol_of_mp3_file_id3v1_symbol sym_mfi in
    music_symbol_of_mp3_file_symbol sym_mfi
;;

let music_symbol_of_mp3_file_id3v2_symbol sym_mfi = 
  let sym_mfi = Mp3_file_symbol_v.mp3_file_symbol_of_mp3_file_id3v2_symbol sym_mfi in
    music_symbol_of_mp3_file_symbol sym_mfi
;;

let music_symbol_of_mp3_header_field_symbol sym_mhf = 
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_symbol sym_mhf in
    music_symbol_of_mp3_header_symbol sym_mhe
;;

let music_symbol_of_mp3_header_field_onebit_symbol sym_mf1 = 
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_onebit_symbol sym_mf1 in
    music_symbol_of_mp3_header_symbol sym_mhe
;;

let music_symbol_of_version_symbol sym_ver = 
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_version_symbol sym_ver in
    music_symbol_of_mp3_header_symbol sym_mhe
;;

let music_symbol_of_mp3_header_field_twobits_symbol sym_mf2 = 
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_twobits_symbol sym_mf2 in
    music_symbol_of_mp3_header_symbol sym_mhe
;;

let music_symbol_of_mp3_header_field_fourbits_symbol sym_mf4 = 
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_fourbits_symbol sym_mf4 in
    music_symbol_of_mp3_header_symbol sym_mhe
;;

let music_symbol_of_mp3_header_field_elevenbits_symbol sym_mfe = 
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_field_elevenbits_symbol sym_mfe in
    music_symbol_of_mp3_header_symbol sym_mhe
;;

let music_symbol_of_mp3_header_tag_symbol sym_mht = 
  let sym_mhe = Mp3_header_symbol_v.mp3_header_symbol_of_mp3_header_tag_symbol sym_mht in
    music_symbol_of_mp3_header_symbol sym_mhe
;;

let music_symbol_of_tag_id3v1_symbol sym_tid = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v1_symbol sym_tid in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v1_128_symbol sym_ti1 = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v1_128_symbol sym_ti1 in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v1_227_symbol sym_ti2 = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v1_227_symbol sym_ti2 in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v2_symbol sym_tid = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_symbol sym_tid in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v2_base_symbol sym_tib = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_base_symbol sym_tib in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v2_base_unique_symbol sym_tbu = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_base_unique_symbol sym_tbu in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v2_base_multiple_symbol sym_tbm = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_base_multiple_symbol sym_tbm in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v2_specific_symbol sym_tis = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_specific_symbol sym_tis in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v2_3_specific_symbol sym_t3s = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_3_specific_symbol sym_t3s in
    music_symbol_of_tag_id3_symbol sym_tid
;;

let music_symbol_of_tag_id3v2_4_specific_symbol sym_t4s = 
  let sym_tid = Tag_id3_symbol_v.tag_id3_symbol_of_tag_id3v2_4_specific_symbol sym_t4s in
    music_symbol_of_tag_id3_symbol sym_tid
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let mp3_data_audio = music_symbol_of_mp3_data_symbol Mp3_data_symbol_v.mp3_data_audio;;

let mp3_data_video = music_symbol_of_mp3_data_symbol Mp3_data_symbol_v.mp3_data_video;;

let mp3_data_closed_caption = music_symbol_of_mp3_data_symbol Mp3_data_symbol_v.mp3_data_closed_caption;;

let mp3_frame_audio = music_symbol_of_mp3_frame_symbol Mp3_frame_symbol_v.mp3_frame_audio;;

let mp3_frame_video = music_symbol_of_mp3_frame_symbol Mp3_frame_symbol_v.mp3_frame_video;;

let mp3_frame_closed_caption = music_symbol_of_mp3_frame_symbol Mp3_frame_symbol_v.mp3_frame_closed_caption;;

let mp3_elementary_stream_audio = music_symbol_of_mp3_elementary_stream_symbol Mp3_elementary_stream_symbol_v.mp3_elementary_stream_audio;;

let mp3_elementary_stream_video = music_symbol_of_mp3_elementary_stream_symbol Mp3_elementary_stream_symbol_v.mp3_elementary_stream_video;;

let mp3_elementary_stream_closed_caption = music_symbol_of_mp3_elementary_stream_symbol Mp3_elementary_stream_symbol_v.mp3_elementary_stream_closed_caption;;

let mp3_file_id3v1_1 = music_symbol_of_mp3_file_symbol Mp3_file_symbol_v.mp3_file_id3v1_1;;

let mp3_file_id3v1_2 = music_symbol_of_mp3_file_symbol Mp3_file_symbol_v.mp3_file_id3v1_2;;

let mp3_file_id3v1_2_5 = music_symbol_of_mp3_file_symbol Mp3_file_symbol_v.mp3_file_id3v1_2_5;;

let mp3_file_id3v2_1 = music_symbol_of_mp3_file_symbol Mp3_file_symbol_v.mp3_file_id3v2_1;;

let mp3_file_id3v2_2 = music_symbol_of_mp3_file_symbol Mp3_file_symbol_v.mp3_file_id3v2_2;;

let mp3_file_id3v2_2_5 = music_symbol_of_mp3_file_symbol Mp3_file_symbol_v.mp3_file_id3v2_2_5;;

let version_1 = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.version_1;;

let version_2 = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.version_2;;

let version_2_5 = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.version_2_5;;

let error_protection = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.error_protection;;

let pad_bit = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.pad_bit;;

let intensity_stereo = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.intensity_stereo;;

let ms_stereo = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.ms_stereo;;

let private_bit = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.private_bit;;

let copyright = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.copyright;;

let original = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.original;;

let layer = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.layer;;

let frequency = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.frequency;;

let mode = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mode;;

let mode_extension = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mode_extension;;

let emphasis = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.emphasis;;

let bit_rate = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.bit_rate;;

let sync_word = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.sync_word;;

let mp3_header_tag_onebit = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_tag_onebit;;

let mp3_header_tag_twobits = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_tag_twobits;;

let id3v2 = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.id3v2;;

let mp3_header_tag_fourbits = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_tag_fourbits;;

let mp3_header_tag_twelvebits = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_tag_twelvebits;;

let mp3_header_1 = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_1;;

let mp3_header_2 = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_2;;

let mp3_header_2_5 = music_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_2_5;;

let string_1 = music_symbol_of_mp3_layout_tag_symbol Mp3_layout_tag_symbol_v.string_1;;

let string_3 = music_symbol_of_mp3_layout_tag_symbol Mp3_layout_tag_symbol_v.string_3;;

let string_4 = music_symbol_of_mp3_layout_tag_symbol Mp3_layout_tag_symbol_v.string_4;;

let string_6 = music_symbol_of_mp3_layout_tag_symbol Mp3_layout_tag_symbol_v.string_6;;

let string_30 = music_symbol_of_mp3_layout_tag_symbol Mp3_layout_tag_symbol_v.string_30;;

let string_60 = music_symbol_of_mp3_layout_tag_symbol Mp3_layout_tag_symbol_v.string_60;;

let tag_id3v1_0 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tag_id3v1_0;;

let tag_id3v1_1 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tag_id3v1_1;;

let tag_id3v1_extended = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tag_id3v1_extended;;

let header_3 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.header_3;;

let title_30 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.title_30;;

let artist_30 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.artist_30;;

let album_30 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.album_30;;

let year_4 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.year_4;;

let comment_28 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.comment_28;;

let comment_30 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.comment_30;;

let zero_byte_1 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.zero_byte_1;;

let track_1 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.track_1;;

let genre_1 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.genre_1;;

let header_4 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.header_4;;

let title_60 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.title_60;;

let artist_60 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.artist_60;;

let album_60 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.album_60;;

let speed_1 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.speed_1;;

let genre_30 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.genre_30;;

let start_time_6 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.start_time_6;;

let end_time_6 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.end_time_6;;

let aenc = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.aenc;;

let apic = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.apic;;

let comm = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.comm;;

let comr = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.comr;;

let encr = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.encr;;

let etco = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.etco;;

let geob = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.geob;;

let grid = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.grid;;

let link = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.link;;

let mcdi = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.mcdi;;

let mllt = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.mllt;;

let owne = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.owne;;

let pcnt = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.pcnt;;

let popm = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.popm;;

let poss = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.poss;;

let priv = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.priv;;

let rbuf = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.rbuf;;

let rvrb = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.rvrb;;

let sylt = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.sylt;;

let sytc = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.sytc;;

let talb = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.talb;;

let tbpm = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tbpm;;

let tcon = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tcon;;

let tcop = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tcop;;

let tdly = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tdly;;

let tenc = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tenc;;

let tflt = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tflt;;

let tit1 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tit1;;

let tit2 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tit2;;

let tit3 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tit3;;

let tkey = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tkey;;

let tlan = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tlan;;

let tlen = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tlen;;

let tmed = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tmed;;

let toal = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.toal;;

let tofn = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tofn;;

let town = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.town;;

let tpe2 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tpe2;;

let tpe3 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tpe3;;

let tpe4 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tpe4;;

let tpos = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tpos;;

let tpub = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tpub;;

let trck = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.trck;;

let trsn = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.trsn;;

let trso = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.trso;;

let tsrc = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tsrc;;

let tsse = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tsse;;

let txxx = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.txxx;;

let ufid = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.ufid;;

let user = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.user;;

let uslt = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.uslt;;

let wcom = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.wcom;;

let wcop = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.wcop;;

let woaf = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.woaf;;

let woar = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.woar;;

let woas = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.woas;;

let wors = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.wors;;

let wpay = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.wpay;;

let wpub = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.wpub;;

let wxxx = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.wxxx;;

let tpe1 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tpe1;;

let tcom = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tcom;;

let text = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.text;;

let toly = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.toly;;

let tope = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tope;;

let equa = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.equa;;

let ipls = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.ipls;;

let rvad = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.rvad;;

let tdat = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tdat;;

let time = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.time;;

let tory = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tory;;

let trda = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.trda;;

let tyer = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tyer;;

let tsiz = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tsiz;;

let aspi = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.aspi;;

let equ2 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.equ2;;

let rva2 = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.rva2;;

let seek = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.seek;;

let sign = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.sign;;

let tden = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tden;;

let tdor = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tdor;;

let tdrc = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tdrc;;

let tdrl = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tdrl;;

let tdtg = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tdtg;;

let tipl = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tipl;;

let tmcl = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tmcl;;

let tmoo = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tmoo;;

let tpro = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tpro;;

let tsoa = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tsoa;;

let tsop = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tsop;;

let tsot = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tsot;;

let tsst = music_symbol_of_tag_id3_symbol Tag_id3_symbol_v.tsst;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Music_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Music_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try music_symbol_of_mp3_data_symbol
      (Mp3_data_symbol_v.make nam s)
  with Failure "Not_a_mp3_data_symbol:Mp3_data_symbol_v.ml:make" ->
  try music_symbol_of_mp3_frame_symbol
      (Mp3_frame_symbol_v.make nam s)
  with Failure "Not_a_mp3_frame_symbol:Mp3_frame_symbol_v.ml:make" ->
  try music_symbol_of_mp3_elementary_stream_symbol
      (Mp3_elementary_stream_symbol_v.make nam s)
  with Failure "Not_a_mp3_elementary_stream_symbol:Mp3_elementary_stream_symbol_v.ml:make" ->
  try music_symbol_of_mp3_file_symbol
      (Mp3_file_symbol_v.make nam s)
  with Failure "Not_a_mp3_file_symbol:Mp3_file_symbol_v.ml:make" ->
  try music_symbol_of_mp3_header_symbol
      (Mp3_header_symbol_v.make nam s)
  with Failure "Not_a_mp3_header_symbol:Mp3_header_symbol_v.ml:make" ->
  try music_symbol_of_mp3_layout_tag_symbol
      (Mp3_layout_tag_symbol_v.make nam s)
  with Failure "Not_a_mp3_layout_tag_symbol:Mp3_layout_tag_symbol_v.ml:make" ->
  try music_symbol_of_tag_id3_symbol
      (Tag_id3_symbol_v.make nam s)
  with Failure "Not_a_tag_id3_symbol:Tag_id3_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Music_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Music_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Music_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Music_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Music subtype" nam s)
      "it does not exists"
      "Check file Music_symbol_v.ml"
    in
    failwith "Not_a_music_symbol:Music_symbol_v.ml:make"
;;


(** Music_symbol_v at 18:57:18 on 27 Jun 2013. created by version v2.3 of generator *)



