(** {6 Querying.} *)


let is_molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol = function
  | Rbfs_t.Molecule_aminoacid_regular_symbol _ -> true
  | _ -> false
;;


