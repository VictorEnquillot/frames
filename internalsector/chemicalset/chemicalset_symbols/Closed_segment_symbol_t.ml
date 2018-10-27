(** {3 Closed_segment_symbol_t} *)


(** {6 Typing_for_symbol} *)

type closed_segment_symbol =
  | Closed_segment_anion_symbol of Closed_segment_anion_symbol_t.closed_segment_anion_symbol
  | Closed_segment_cation_symbol of Closed_segment_cation_symbol_t.closed_segment_cation_symbol
  | Closed_segment_neutral_symbol of Closed_segment_neutral_symbol_t.closed_segment_neutral_symbol
;;


(** Closed_segment_symbol_t at 12:27:38 on 24 Jun 2013. created by version v2.3 of generator *)



