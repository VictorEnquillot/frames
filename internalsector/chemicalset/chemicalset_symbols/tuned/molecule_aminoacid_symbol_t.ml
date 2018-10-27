(** {3 The Symbol for a Molecule_aminoacid.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type molecule_aminoacid_symbol =
  | Molecule_aminoacid_segmented_symbol of Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol
  | Molecule_aminoacid_fragmented_symbol of Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol
;;


(** created by ./generator molecule_aminoacid implementation symbol at 10:37 31 Jan 2012. *)



