(** {3 A Symbol for a Block_zerozero.} *)

(** {6 Modules.} *)

module Azes_t = Atom_zerotied_symbol_t
module Bzzds_t = Block_zerozero_diatomic_symbol_t
module Bzzts_t = Block_zerozero_triatomic_symbol_t
module Bzzqs_t = Block_zerozero_tetratomic_symbol_t
module Bzzps_t = Block_zerozero_pentatomic_symbol_t

(** {6 Type.} *)

type block_zerozero_symbol =
  | Atom_zerotied_symbol of Azes_t.atom_zerotied_symbol
  | Block_zerozero_diatomic_symbol of Bzzds_t.block_zerozero_diatomic_symbol
  | Block_zerozero_triatomic_symbol of Bzzts_t.block_zerozero_triatomic_symbol
  | Block_zerozero_tetratomic_symbol of Bzzqs_t.block_zerozero_tetratomic_symbol
  | Block_zerozero_pentatomic_symbol of Bzzps_t.block_zerozero_pentatomic_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh block_zerozero 12 January 2011. *)

