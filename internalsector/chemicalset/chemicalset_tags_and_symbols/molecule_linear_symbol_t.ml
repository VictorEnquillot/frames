(** {3 A Symbol for a Molecule_linear.} *)

(** {6 Modules.} *)

module Mlms_t = Molecule_linear_monoatomic_symbol_t
module Ml2s_t = Molecule_linear_diatomic_symbol_t
module Ml3s_t = Molecule_linear_triatomic_symbol_t
module Ml4s_t = Molecule_linear_tetratomic_symbol_t
module Ml5s_t = Molecule_linear_pentatomic_symbol_t
module Mlps_t = Molecule_linear_polyatomic_symbol_t

(** {6 Type.} *)

type molecule_linear_symbol =
  | Molecule_linear_monoatomic_symbol of Mlms_t.molecule_linear_monoatomic_symbol
  | Molecule_linear_diatomic_symbol of Ml2s_t.molecule_linear_diatomic_symbol
  | Molecule_linear_triatomic_symbol of Ml3s_t.molecule_linear_triatomic_symbol
  | Molecule_linear_tetratomic_symbol of Ml4s_t.molecule_linear_tetratomic_symbol
  | Molecule_linear_pentatomic_symbol of Ml5s_t.molecule_linear_pentatomic_symbol
  | Molecule_linear_polyatomic_symbol of Mlps_t.molecule_linear_polyatomic_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh molecule_linear 12 January 2011. *)

