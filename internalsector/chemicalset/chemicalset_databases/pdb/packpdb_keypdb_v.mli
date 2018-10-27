(** {3 The Key functionnalities for a Pack of a Pdb Entry} *)

(** {6 Making.} *)

val make :
    Packpdb_markerpdb_t.packpdb_markerpdb ->
      Clusterpdb_keypdb_t.clusterpdb_keypdb ->
	Packpdb_keypdb_t.packpdb_keypdb
;;

val packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string ->
	Packpdb_keypdb_t.packpdb_keypdb
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Packpdb_keypdb_t.packpdb_keypdb
;;

(** {6 Extracting.} *)

val packpdb_symbol_off_packpdb_keypdb :
    Packpdb_keypdb_t.packpdb_keypdb ->
      Packpdb_symbol_t.packpdb_symbol
;;

val packpdb_markerpdb_off_packpdb_keypdb :
    Packpdb_keypdb_t.packpdb_keypdb ->
      Packpdb_markerpdb_t.packpdb_markerpdb
;;

val clusterpdb_keypdb_off_packpdb_keypdb :
      Packpdb_keypdb_t.packpdb_keypdb ->
	Clusterpdb_keypdb_t.clusterpdb_keypdb
;;

val entrypdb_symbol_off_packpdb_keypdb :
    Packpdb_keypdb_t.packpdb_keypdb ->
      Entrypdb_keypdb_t.entrypdb_keypdb
;;

val chain_idpdb_off_packpdb_keypdb :
    Packpdb_keypdb_t.packpdb_keypdb ->
      char
;;

(** {6 Querying.} *)

val has_same_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string ->
	string ->
	  bool
;;

val has_of_packpdb_keypdb_of_recordpdb_string :
    Packpdb_keypdb_t.packpdb_keypdb ->
      string ->
	bool
;;

val compare :
    Packpdb_keypdb_t.packpdb_keypdb ->
      Packpdb_keypdb_t.packpdb_keypdb ->
	int
;;

(** {6 Converting.} *)

val name :
    Packpdb_keypdb_t.packpdb_keypdb ->
      string
;;

val print : Format.formatter ->
    Packpdb_keypdb_t.packpdb_keypdb ->
      unit
;;

