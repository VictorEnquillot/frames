(** {3 Mp3_elementary_stream_formula_t} *)


(** {6 Typing_for_formula} *)

type mp3_elementary_stream_formula =
  | Mp3_elementary_stream_audio of Mp3_frame_tag_t.mp3_frame_tag list
  | Mp3_elementary_stream_video of String_tag_t.string_tag list
  | Mp3_elementary_stream_closed_caption of String_tag_t.string_tag list
;;


(** Mp3_elementary_stream_formula_t at 18:45:56 on 27 Jun 2013. created by version v2.3 of generator *)



