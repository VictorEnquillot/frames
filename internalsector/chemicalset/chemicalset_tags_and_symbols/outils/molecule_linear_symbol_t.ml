(** {3 A Symbol for a Molecule_linear.} *)


(** {6 Modules.} *)

module Mlms_t = Molecule_linear_monoatomic_symbol_t
module Mlds_t = Molecule_linear_diatomic_symbol_t
module Mlts_t = Molecule_linear_triatomic_symbol_t
module Mlqs_t = Molecule_linear_tetratomic_symbol_t
module Mlcs_t = Molecule_linear_pentatomic_symbol_t
module Mlps_t = Molecule_linear_polyatomic_symbol_t


(** {6 Typing.} *)

type molecule_linear_symbol =
  | Molecule_linear_monoatomic_symbol of Mlms_t.molecule_linear_monoatomic_symbol
  | Molecule_linear_diatomic_symbol of Mlds_t.molecule_linear_diatomic_symbol
  | Molecule_linear_triatomic_symbol of Mlts_t.molecule_linear_triatomic_symbol
  | Molecule_linear_tetratomic_symbol of Mlqs_t.molecule_linear_tetratomic_symbol
  | Molecule_linear_pentatomic_symbol of Mlcs_t.molecule_linear_pentatomic_symbol
  | Molecule_linear_polyatomic_symbol of Mlps_t.molecule_linear_polyatomic_symbol
;;


(** created by ./generator molecule_linear t symbol at 19:13 25 Apr 2011. *)



