
val molecule_aminoacid_symbol_of_molecule_aminoacid_olc_symbol :
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol -> 
      Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;
 
val char_of_molecule_aminoacid_olc_symbol : 
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol -> 
  char
;;

val molecule_aminoacid_olc_symbol_of_char :
  char ->
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;
	
val molecule_aminoacid_olc_symbol_of_string :
  string ->
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;

val read : 
  Scanf.Scanning.scanbuf -> 
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;
