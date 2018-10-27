(** {3 A Symbol for a Ribonucleotide.} *)

(** {6 Modules.} *)

module Rpus_t = Ribonucleotide_purinic_symbol_t
module Rpys_t = Ribonucleotide_pyrimidinic_symbol_t

(** {6 Type.} *)

type ribonucleotide_symbol =
  | Ribonucleotide_purinic_symbol of Rpus_t.ribonucleotide_purinic_symbol
  | Ribonucleotide_pyrimidinic_symbol of Rpys_t.ribonucleotide_pyrimidinic_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh ribonucleotide 12 January 2011. *)

