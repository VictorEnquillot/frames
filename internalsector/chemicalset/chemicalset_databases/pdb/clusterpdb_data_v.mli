(** {3 The functionalities for a Data for a Pack of the Pdb} *)

val make : 
    Entrypdb_symbol_t.entrypdb_symbol ->
      string list ->
	Clusterpdb_data_t.clusterpdb_data
;;

val clusterpdb_data_list_off_entrypdb_symbol :
    Entrypdb_symbol_t.entrypdb_symbol ->
    Clusterpdb_data_t.clusterpdb_data list
;;

val clusterpdb_symbol_off_clusterpdb_data :
    Clusterpdb_data_t.clusterpdb_data ->
      Clusterpdb_symbol_t.clusterpdb_symbol
;;

val clusterpdb_keypdb_off_clusterpdb_data :
    Clusterpdb_data_t.clusterpdb_data ->
      Clusterpdb_keypdb_t.clusterpdb_keypdb
;;

val entrypdb_symbol_off_clusterpdb_data :
    Clusterpdb_data_t.clusterpdb_data ->
      Entrypdb_symbol_t.entrypdb_symbol
;;

val string_list_off_clusterpdb_data :
    Clusterpdb_data_t.clusterpdb_data ->
      string list
;;

val has_of_clusterpdb_keypdb_of_clusterpdb_data :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      Clusterpdb_data_t.clusterpdb_data ->
	bool
;;

val retrieve :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      Clusterpdb_data_t.clusterpdb_data
;;

val string_list_off_clusterpdb_keypdb :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      string list
;;

(** {6 Converting.} *)
