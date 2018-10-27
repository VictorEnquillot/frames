(** {3 The Key functionnalities for a Pack of a Pdb Entry} *)

(** {6 Making.} *)

val make :
    Clusterpdb_symbol_t.clusterpdb_symbol ->
      Entrypdb_symbol_t.entrypdb_symbol ->
	Clusterpdb_keypdb_t.clusterpdb_keypdb
;;

val clusterpdb_keypdb_of_recordpdb_string_of_entrypdb_symbol :
    string ->
      Entrypdb_symbol_t.entrypdb_symbol ->
	Clusterpdb_keypdb_t.clusterpdb_keypdb
;;

val clusterpdb_symbol_off_recordpdb_string :
    string ->
      Clusterpdb_symbol_t.clusterpdb_symbol
;;

val read : 
    Scanf.Scanning.scanbuf ->
      Clusterpdb_keypdb_t.clusterpdb_keypdb
;;

val clusterpdb_symbol_off_clusterpdb_keypdb :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      Clusterpdb_symbol_t.clusterpdb_symbol
;;

val entrypdb_symbol_off_clusterpdb_keypdb :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      Entrypdb_symbol_t.entrypdb_symbol
;;

(** {6 Querying.} *)

val has_of_clusterpdb_keypdb_of_recordpdb_type_string :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      string ->
	bool
;;

val compare :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      Clusterpdb_keypdb_t.clusterpdb_keypdb ->
	int
;;

(** {6 Converting.} *)

val name :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      string
;;

val print : Format.formatter ->
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      unit
;;

