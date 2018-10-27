(** {3 The functionalities for a Data for a Pack of the Pdb} *)

(** {6 Making.} *)

val make :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string list ->
	Packpdb_data_t.packpdb_data
;;

(** {6 Extracting.} *)

val packpdb_data_list_off_clusterpdb_data :
    Clusterpdb_data_t.clusterpdb_data ->
      Packpdb_data_t.packpdb_data list
;;

val packpdb_keypdb_list_off_clusterpdb_data :
    Clusterpdb_data_t.clusterpdb_data ->
      Packpdb_keypdb_t.packpdb_keypdb list
;;

val string_list_off_packpdb_data :
    Packpdb_data_t.packpdb_data ->
      string list
;;

val packpdb_symbol_off_packpdb_data :
    Packpdb_data_t.packpdb_data ->
      Packpdb_symbol_t.packpdb_symbol
;;

val packpdb_keypdb_off_packpdb_data :
    Packpdb_data_t.packpdb_data ->
      Packpdb_keypdb_t.packpdb_keypdb
;;

val entrypdb_symbol_off_packpdb_data :
    Packpdb_data_t.packpdb_data ->
      Entrypdb_symbol_t.entrypdb_symbol
;;

(** {6 Querying.} *)

val has_of_packpdb_keypdb_of_packpdb_data :
    Packpdb_keypdb_t.packpdb_keypdb ->
      Packpdb_data_t.packpdb_data ->
	bool	
;;

(** {6 Retrieving.} *)

val retrieve :
    Packpdb_keypdb_t.packpdb_keypdb ->
      Packpdb_data_t.packpdb_data
;;
