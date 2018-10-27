(** {3 A Symbol for a Ribonucleotide.} *)


(** {6 Modules.} *)

module Rpus_t = Ribonucleotide_purinic_symbol_t
module Rps_t = Ribonucleotide_pyrimidinic_symbol_t


(** {6 Typing.} *)

type ribonucleotide_symbol =
  | Ribonucleotide_purinic_symbol of Rpus_t.ribonucleotide_purinic_symbol
  | Ribonucleotide_pyrimidinic_symbol of Rps_t.ribonucleotide_pyrimidinic_symbol
;;


(** created by ./generator ribonucleotide t symbol at 19:13 25 Apr 2011. *)



