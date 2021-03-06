(** {3 A Symbol for a Molecule_forked.} *)


(** {6 Modules.} *)

module Mf1s_t = Molecule_forked_oneforked_symbol_t
module Mf2s_t = Molecule_forked_twoforked_symbol_t
module Mf3s_t = Molecule_forked_threeforked_symbol_t
module Mfms_t = Molecule_forked_moreforked_symbol_t


(** {6 Typing.} *)

type molecule_forked_symbol =
  | Molecule_forked_oneforked_symbol of Mf1s_t.molecule_forked_oneforked_symbol
  | Molecule_forked_twoforked_symbol of Mf2s_t.molecule_forked_twoforked_symbol
  | Molecule_forked_threeforked_symbol of Mf3s_t.molecule_forked_threeforked_symbol
  | Molecule_forked_moreforked_symbol of Mfms_t.molecule_forked_moreforked_symbol
;;


(** created by ./generator molecule_forked t symbol at 19:13 25 Apr 2011. *)



