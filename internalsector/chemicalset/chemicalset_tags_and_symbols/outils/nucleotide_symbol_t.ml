(** {3 A Symbol for a Nucleotide.} *)


(** {6 Modules.} *)

module Ris_t = Ribonucleotide_symbol_t
module Des_t = Deoxyribonucleotide_symbol_t


(** {6 Typing.} *)

type nucleotide_symbol =
  | Ribonucleotide_symbol of Ris_t.ribonucleotide_symbol
  | Deoxyribonucleotide_symbol of Des_t.deoxyribonucleotide_symbol
;;


(** created by ./generator nucleotide t symbol at 19:13 25 Apr 2011. *)



