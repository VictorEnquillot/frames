(** {3 The Key functionnalities for a Pdb Hetatm_record} *)

(** {6 Making.} *)

val make :
    Hetatm_recordpdb_markerpdb_t.hetatm_recordpdb_markerpdb ->
      Molecule_packpdb_keypdb_t.molecule_packpdb_keypdb ->
	Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb 
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb
;;

val hetatm_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string ->
	Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb
;;

val hetatm_recordpdb_markerpdb_off_hetatm_recordpdb_keypdb :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      Hetatm_recordpdb_markerpdb_t.hetatm_recordpdb_markerpdb
;;

val hetatm_name_off_hetatm_recordpdb_keypdb :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      string
;;

val molecule_packpdb_keypdb_off_hetatm_recordpdb_keypdb :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      Molecule_packpdb_keypdb_t.molecule_packpdb_keypdb
;;

val molecule_name_off_hetatm_recordpdb_keypdb :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      string
;;

val entrypdb_symbol_off_hetatm_recordpdb_keypdb :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      Entrypdb_symbol_t.entrypdb_symbol
;;

(** {6 Querying.} *)

val has_of_hetatm_recordpdb_keypdb_of_recordpdb_string :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      string ->
	bool
;;

val has_same_hetatm_recordpdb_keypdb_of_entrypdb_symbol_of_string_of_string :
      Entrypdb_symbol_t.entrypdb_symbol ->
	string ->
	  string ->
	    bool
;;

val compare :
    Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
      Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
	int
;;

(** {6 Converting.} *)

val name :
  Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
    string
;;

val print : Format.formatter ->
  Hetatm_recordpdb_keypdb_t.hetatm_recordpdb_keypdb ->
    unit 
;;


