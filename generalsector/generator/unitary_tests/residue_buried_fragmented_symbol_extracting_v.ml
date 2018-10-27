(** {6 Extracting.} *)


let molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol = function
  | Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar -> smb_mar
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol"
     "Molecule_aminoacid_regular_symbol"
     (name s)
    "check"
;;


