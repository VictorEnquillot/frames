(** {3 A Symbol for a Nucleotide.} *)

(** {6 Modules.} *)

module Rncs_t = Ribonucleotide_symbol_t
module Dncs_t = Deoxyribonucleotide_symbol_t

(** {6 Type.} *)

type nucleotide_symbol =
  | Ribonucleotide_symbol of Rncs_t.ribonucleotide_symbol
  | Deoxyribonucleotide_symbol of Dncs_t.deoxyribonucleotide_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh nucleotide 12 January 2011. *)

