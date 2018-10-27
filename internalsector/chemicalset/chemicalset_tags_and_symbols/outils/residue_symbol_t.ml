(** {3 A Symbol for a Residue.} *)


(** {6 Modules.} *)

module Rns_t = Residue_nterminal_symbol_t
module Rbs_t = Residue_buried_symbol_t


(** {6 Typing.} *)

type residue_symbol =
  | Residue_nterminal_symbol of Rns_t.residue_nterminal_symbol
  | Residue_buried_symbol of Rbs_t.residue_buried_symbol
;;


(** created by ./generator residue t symbol at 19:13 25 Apr 2011. *)



