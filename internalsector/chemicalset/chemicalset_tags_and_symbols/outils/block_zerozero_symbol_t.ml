(** {3 A Symbol for a Block_zerozero.} *)


(** {6 Modules.} *)

module A0s_t = Atom_zerotied_symbol_t
module B00ds_t = Block_zerozero_diatomic_symbol_t
module B00ts_t = Block_zerozero_triatomic_symbol_t
module B00qs_t = Block_zerozero_tetratomic_symbol_t
module B00cs_t = Block_zerozero_pentatomic_symbol_t


(** {6 Typing.} *)

type block_zerozero_symbol =
  | Atom_zerotied_symbol of A0s_t.atom_zerotied_symbol
  | Block_zerozero_diatomic_symbol of B00ds_t.block_zerozero_diatomic_symbol
  | Block_zerozero_triatomic_symbol of B00ts_t.block_zerozero_triatomic_symbol
  | Block_zerozero_tetratomic_symbol of B00qs_t.block_zerozero_tetratomic_symbol
  | Block_zerozero_pentatomic_symbol of B00cs_t.block_zerozero_pentatomic_symbol
;;


(** created by ./generator block_zerozero t symbol at 19:13 25 Apr 2011. *)



