(** {3 A Symbol for a Block_onesinglebifork.} *)

(** {6 Modules.} *)

module Bss2s_t = Block_onesinglebiforksinglesingle_symbol_t
 (* block_onesinglebiforksinglesingleconjugated is a bare constructor no module can be defined *)

(** {6 Type.} *)

type block_onesinglebifork_symbol =
  | Block_onesinglebiforksinglesingle_symbol of Bss2s_t.block_onesinglebiforksinglesingle_symbol
  | Block_onesinglebiforksinglesingleconjugated
;;

(** created by ./do_entitysum_symbol_t_ml.sh block_onesinglebifork 12 January 2011. *)

