(** {3 A Symbol for a Nitrogenous_base.} *)

(** {6 Modules.} *)

module Pus_t = Purine_base_symbol_t
module Pys_t = Pyrimidine_base_symbol_t

(** {6 Type.} *)

type nitrogenous_base_symbol =
  | Purine_base_symbol of Pus_t.purine_base_symbol
  | Pyrimidine_base_symbol of Pys_t.pyrimidine_base_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh nitrogenous_base 12 January 2011. *)

