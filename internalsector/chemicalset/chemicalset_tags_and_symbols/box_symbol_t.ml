(** {3 A Symbol for a Box.} *)

(** {6 Modules.} *)

 (* With a String constructor no module can be defined *)
module Prs_t = Protein_symbol_t

(** {6 Type.} *)

type box_symbol =
  | String of string
  | Protein_symbol of Prs_t.protein_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh box 12 January 2011. *)

