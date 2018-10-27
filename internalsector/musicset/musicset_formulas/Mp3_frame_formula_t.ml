(** {3 Mp3_frame_formula_t} *)


(** {6 Typing_for_formula} *)

type mp3_frame_formula =
  | Mp3_frame_audio of Mp3_header_tag_t.mp3_header_tag list
  | Mp3_frame_video of String_tag_t.string_tag list
  | Mp3_frame_closed_caption of String_tag_t.string_tag list
;;


(** Mp3_frame_formula_t at 18:37:30 on 27 Jun 2013. created by version v2.3 of generator *)



