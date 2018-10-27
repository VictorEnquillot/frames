(** {3 A Symbol for a Atom_onetied.} *)


(** {6 Modules.} *)

module A1cs_t = Atom_onetied_conjugated_symbol_t
module A1ds_t = Atom_onetied_double_symbol_t
module A1ss_t = Atom_onetied_single_symbol_t
module A1ts_t = Atom_onetied_triple_symbol_t


(** {6 Typing.} *)

type atom_onetied_symbol =
  | Atom_onetied_conjugated_symbol of A1cs_t.atom_onetied_conjugated_symbol
  | Atom_onetied_double_symbol of A1ds_t.atom_onetied_double_symbol
  | Atom_onetied_single_symbol of A1ss_t.atom_onetied_single_symbol
  | Atom_onetied_triple_symbol of A1ts_t.atom_onetied_triple_symbol
;;


(** created by ./generator atom_onetied t symbol at 19:13 25 Apr 2011. *)



