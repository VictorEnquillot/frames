(** {3 Music_symbol_t} *)


(** {6 Typing_for_symbol} *)

type music_symbol =
  | Mp3_data_symbol of Mp3_data_symbol_t.mp3_data_symbol
  | Mp3_frame_symbol of Mp3_frame_symbol_t.mp3_frame_symbol
  | Mp3_elementary_stream_symbol of Mp3_elementary_stream_symbol_t.mp3_elementary_stream_symbol
  | Mp3_file_symbol of Mp3_file_symbol_t.mp3_file_symbol
  | Mp3_header_symbol of Mp3_header_symbol_t.mp3_header_symbol
  | Mp3_layout_tag_symbol of Mp3_layout_tag_symbol_t.mp3_layout_tag_symbol
  | Tag_id3_symbol of Tag_id3_symbol_t.tag_id3_symbol
;;


(** Music_symbol_t at 18:57:27 on 27 Jun 2013. created by version v2.3 of generator *)



