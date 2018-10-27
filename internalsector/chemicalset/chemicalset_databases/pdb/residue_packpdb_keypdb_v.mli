(** {3 The Key functionnalities for a Residue_pack of a Pdb Entry} *)

(** {6 Making.} *)

val make :
    Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb ->
      Packpdb_keypdb_t.packpdb_keypdb ->
	Residue_packpdb_keypdb_t.residue_packpdb_keypdb
;;

val residue_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string ->
	Residue_packpdb_keypdb_t.residue_packpdb_keypdb
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Residue_packpdb_keypdb_t.residue_packpdb_keypdb
;;

(** {6 Extracting.} *)

val residue_packpdb_markerpdb_off_residue_packpdb_keypdb :
    Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
      Residue_packpdb_markerpdb_t.residue_packpdb_markerpdb
;;

val packpdb_keypdb_off_residue_packpdb_keypdb :
      Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
	Packpdb_keypdb_t.packpdb_keypdb
;;

val residue_name_off_residue_packpdb_keypdb :
      Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
	string
;;

val clusterpdb_keypdb_off_residue_packpdb_keypdb :
      Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
	Clusterpdb_keypdb_t.clusterpdb_keypdb
;;

val entrypdb_symbol_off_residue_packpdb_keypdb :
    Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
      Entrypdb_keypdb_t.entrypdb_keypdb
;;

(** {6 Querying.} *)

val has_same_residue_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string ->
	string ->
	  bool
;;

val has_of_residue_packpdb_keypdb_of_recordpdb_string :
    Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
      string ->
	bool
;;

val compare :
    Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
      Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
	int
;;

(** {6 Converting.} *)

val name :
    Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
      string
;;

val print : Format.formatter ->
    Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
      unit
;;

