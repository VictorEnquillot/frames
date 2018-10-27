(** {3 Mp3_data_formula_t} *)


(** {6 Typing_for_formula} *)

type mp3_data_formula =
  | Mp3_data_audio of String_tag_t.string_tag list
  | Mp3_data_video of String_tag_t.string_tag list
  | Mp3_data_closed_caption of String_tag_t.string_tag list
;;


(** Mp3_data_formula_t at 18:19:53 on 27 Jun 2013. created by version v2.3 of generator *)



