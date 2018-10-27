(** {3 The Key functionnalities for a Pdb Atom_record} *)

(** {6 Making.} *)

val make :
    Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb ->
      Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
	Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb 
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb
;;

val atom_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string ->
	Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb
;;

val atom_recordpdb_markerpdb_off_atom_recordpdb_keypdb :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      Atom_recordpdb_markerpdb_t.atom_recordpdb_markerpdb
;;

val atom_name_off_atom_recordpdb_keypdb :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      string
;;

val residue_packpdb_keypdb_off_atom_recordpdb_keypdb :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      Residue_packpdb_keypdb_t.residue_packpdb_keypdb
;;

val residue_name_off_atom_recordpdb_keypdb :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      string
;;

val entrypdb_symbol_off_atom_recordpdb_keypdb :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      Entrypdb_symbol_t.entrypdb_symbol
;;

(** {6 Querying.} *)

val has_of_atom_recordpdb_keypdb_of_recordpdb_string :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      string ->
	bool
;;

val has_same_atom_recordpdb_keypdb_of_entrypdb_symbol_of_string_of_string :
      Entrypdb_symbol_t.entrypdb_symbol ->
	string ->
	  string ->
	    bool
;;

val compare :
    Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
      Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
	int
;;

(** {6 Converting.} *)

val name :
  Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
    string
;;

val print : Format.formatter ->
  Atom_recordpdb_keypdb_t.atom_recordpdb_keypdb ->
    unit 
;;


