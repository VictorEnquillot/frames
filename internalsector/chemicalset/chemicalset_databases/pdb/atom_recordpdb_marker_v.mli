(** {3 The Marker functionnalities for a Atom of a Pdb Record.} *)

(** {6 Making.} *)

val make :
    Atom_symbol_t.atom_symbol ->
      int ->
	char ->
	  Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb
;;

val read : Scanf.Scanning.scanbuf ->
  Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb
;;

val atom_recordpdb_markerpdb_off_recordpdb_string :
    string ->
      Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb
;;

(** {6 Converting.} *)

val name :
    Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb ->
      string
;;

val print : Format.formatter ->
  Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb ->
    unit
;;

val compare :
    Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb ->
      Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb ->
	int
;;

(** {6 Extracting.} *)

val atom_symbol_off_atom_recordpdb_markerpdb :
      Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb ->
    Atom_symbol_t.atom_symbol
;;

val atom_sequence_number_off_atom_recordpdb_markerpdb :
      Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb ->
	int
;;

(** {6 Querying.} *)

val has_of_atom_recordpdb_markerpdb_of_string :
    Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb ->
      string ->
	bool
;;

val has_same_atom_recordpdb_markerpdb_of_string_of_string :
    string -> 
      string ->
	bool 
;;

