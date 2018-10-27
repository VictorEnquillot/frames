module Mafs_t = Molecule_aminoacid_fragmented_symbol_t

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_olc_symbol = function
  | Mafos_t.P -> 
      Mafs_t.Proline
  | Mafos_t.Molecule_aminoacid_regular_olc_symbol smb_aor -> 
      Mafs_t.Molecule_aminoacid_regular_symbol
	(Maros_v.molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor)
;;

