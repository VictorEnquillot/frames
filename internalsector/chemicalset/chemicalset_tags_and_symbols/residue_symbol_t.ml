(** {3 A Symbol for a Residue.} *)

(** {6 Modules.} *)

module Rns_t = Residue_nterminal_symbol_t
module Rbs_t = Residue_buried_symbol_t

(** {6 Type.} *)

type residue_symbol =
  | Residue_nterminal_symbol of Rns_t.residue_nterminal_symbol
  | Residue_buried_symbol of Rbs_t.residue_buried_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh residue 12 January 2011. *)

