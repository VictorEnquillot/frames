(** {3 The functionalities a Data for an Entry of the Pdb} *)

(** {6 Making.} *)

(** {6 Extracting.} *)

val string_off_entrypdb :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string
;;

(** {6 Converting.} *)

val name :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string
;;

val print : Format.formatter -> 
  Entrypdb_symbol_t.entrypdb_symbol ->
      unit
;;

val filename_of_entrypdb_symbol :
    Entrypdb_symbol_t.entrypdb_symbol ->
      Filename_p.filename
;;

val string_list_of_entrypdb_symbol :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string list
;;

val compare :
    Entrypdb_symbol_t.entrypdb_symbol ->
      Entrypdb_symbol_t.entrypdb_symbol ->
	int
;;


