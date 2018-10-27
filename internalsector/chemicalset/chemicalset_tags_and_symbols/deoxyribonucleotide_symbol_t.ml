(** {3 A Symbol for a Deoxyribonucleotide.} *)

(** {6 Modules.} *)

module Dpus_t = Deoxyribonucleotide_purinic_symbol_t
module Dpys_t = Deoxyribonucleotide_pyrimidinic_symbol_t

(** {6 Type.} *)

type deoxyribonucleotide_symbol =
  | Deoxyribonucleotide_purinic_symbol of Dpus_t.deoxyribonucleotide_purinic_symbol
  | Deoxyribonucleotide_pyrimidinic_symbol of Dpys_t.deoxyribonucleotide_pyrimidinic_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh deoxyribonucleotide 12 January 2011. *)

