val molecule_aminoacid_symbol_of_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

val molecule_aminoacid_tlc_symbol_of_string :
  string ->
    Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol
;;
	
val read :
  Scanf.Scanning.scanbuf ->
    Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol
;;