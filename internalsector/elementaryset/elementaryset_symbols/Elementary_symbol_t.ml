(** {3 Elementary_symbol_t} *)


(** {6 Typing_for_symbol} *)

type elementary_symbol =
  | Elementary_body_symbol of Elementary_body_symbol_t.elementary_body_symbol
  | Elementary_context_symbol of Elementary_context_symbol_t.elementary_context_symbol
  | Elementary_fence_symbol of Elementary_fence_symbol_t.elementary_fence_symbol
;;


(** Elementary_symbol_t at 9:52:5 on 27 Sep 2016. created by version v2.4 of generator *)



