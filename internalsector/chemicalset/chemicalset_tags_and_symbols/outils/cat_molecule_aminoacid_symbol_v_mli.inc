(** {6 Including. *)

val molecule_aminoacid_symbol_of_string :
  string ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;
	
val read :
  Scanf.Scanning.scanbuf ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;
