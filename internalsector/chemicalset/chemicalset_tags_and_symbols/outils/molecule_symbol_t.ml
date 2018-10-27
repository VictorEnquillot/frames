(** {3 A Symbol for a Molecule.} *)


(** {6 Modules.} *)

module Mas_t = Molecule_aminoacid_symbol_t
module Mbs_t = Molecule_bridged_symbol_t
module Mds_t = Molecule_dendrimer_symbol_t
module Mfs_t = Molecule_forked_symbol_t
module Mls_t = Molecule_linear_symbol_t
module Mps_t = Molecule_polymer_symbol_t


(** {6 Typing.} *)

type molecule_symbol =
  | Molecule_aminoacid_symbol of Mas_t.molecule_aminoacid_symbol
  | Molecule_bridged_symbol of Mbs_t.molecule_bridged_symbol
  | Molecule_dendrimer_symbol of Mds_t.molecule_dendrimer_symbol
  | Molecule_forked_symbol of Mfs_t.molecule_forked_symbol
  | Molecule_linear_symbol of Mls_t.molecule_linear_symbol
  | Molecule_nucleoside
  | Molecule_polymer_symbol of Mps_t.molecule_polymer_symbol
;;


(** created by ./generator molecule t symbol at 19:13 25 Apr 2011. *)



