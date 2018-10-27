(** {3 A Symbol for a Nitrogenous_base.} *)


(** {6 Modules.} *)

module Pus_t = Purine_base_symbol_t
module Pys_t = Pyrimidine_base_symbol_t


(** {6 Typing.} *)

type nitrogenous_base_symbol =
  | Purine_base_symbol of Pus_t.purine_base_symbol
  | Pyrimidine_base_symbol of Pys_t.pyrimidine_base_symbol
;;


(** created by ./generator nitrogenous_base t symbol at 19:13 25 Apr 2011. *)



