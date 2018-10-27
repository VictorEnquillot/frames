(** {3 The functionalities for a Data for a Residue_pack of the Pdb} *)

(** {6 Making.} *)

val make :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string list ->
	Residue_packpdb_data_t.residue_packpdb_data
;;

val residue_packpdb_data_list_off_packpdb_data :
    Packpdb_data_t.packpdb_data ->
      Residue_packpdb_data_t.residue_packpdb_data list
;;

(** {6 Extracting.} *)

val residue_packpdb_keypdb_off_residue_packpdb_data :
      Residue_packpdb_data_t.residue_packpdb_data ->
	Residue_packpdb_keypdb_t.residue_packpdb_keypdb 
;;

val residue_name_off_residue_packpdb_data :
    Residue_packpdb_data_t.residue_packpdb_data ->
     string
;;

val entrypdb_symbol_off_residue_packpdb_data :
    Residue_packpdb_data_t.residue_packpdb_data ->
      Entrypdb_symbol_t.entrypdb_symbol 
;;

val string_list_off_residue_packpdb_data :
    Residue_packpdb_data_t.residue_packpdb_data ->
      string list
;;

val residue_name_of_residuepdb_symbol :
   Residuepdb_symbol_t.residuepdb_symbol ->
     string
;;

val residuepdb_symbol_of_residue_name : 
    string ->
      Residuepdb_symbol_t.residuepdb_symbol 
;;

val residuepdb_symbol_off_residue_packpdb_data :
    Residue_packpdb_data_t.residue_packpdb_data ->
      Residuepdb_symbol_t.residuepdb_symbol 
;;

val residue_packpdb_keypdb_list_off_clusterpdb_data :
    Clusterpdb_data_t.clusterpdb_data ->
      Residue_packpdb_keypdb_t.residue_packpdb_keypdb list
;;

val residue_packpdb_data_list_off_clusterpdb_data :
    Clusterpdb_data_t.clusterpdb_data ->
      Residue_packpdb_data_t.residue_packpdb_data list
;;

(** {6 Querying.} *)

val has_of_residue_packpdb_keypdb_of_residue_packpdb_data :
    Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
      Residue_packpdb_data_t.residue_packpdb_data ->
	bool
;;

(** {6 Retrieving.} *)

val retrieve :
    Residue_packpdb_keypdb_t.residue_packpdb_keypdb ->
      Residue_packpdb_data_t.residue_packpdb_data
;;

val name :
    Residue_packpdb_data_t.residue_packpdb_data ->
      string
;;

val print : Format.formatter ->
  Residue_packpdb_data_t.residue_packpdb_data ->
    unit
;;
