(** {3 The functionalities a Data for an Entry of the Pdb} *)

(** {6 Extracting.} *)

val string_off_entrypdb :
    Entrypdb_keypdb_t.entrypdb_keypdb ->
      string
;;

(** {6 Converting.} *)

val name :
    Entrypdb_keypdb_t.entrypdb_keypdb ->
      string
;;

val print : Format.formatter -> 
  Entrypdb_keypdb_t.entrypdb_keypdb ->
      unit
;;

val filename_of_entrypdb_keypdb :
    Entrypdb_keypdb_t.entrypdb_keypdb ->
      Filename_p.filename
;;

val compare :
    Entrypdb_keypdb_t.entrypdb_keypdb ->
      Entrypdb_keypdb_t.entrypdb_keypdb ->
	int
;;

