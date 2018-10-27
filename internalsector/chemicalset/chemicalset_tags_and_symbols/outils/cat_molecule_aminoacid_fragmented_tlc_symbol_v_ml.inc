module Mafs_t = Molecule_aminoacid_fragmented_symbol_t

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_tlc_symbol = function
  | Mafts_t.Pro -> 
      Mafs_t.Proline
  | Mafts_t.Molecule_aminoacid_regular_tlc_symbol smb_atr -> 
      Mafs_t.Molecule_aminoacid_regular_symbol
	(Marts_v.molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_atr)
;;

