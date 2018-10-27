(** {3 The functionalities for Data for a SEQRES Pdb Pack.} *)

(** {6 Making.} *)

val make :
    Packpdb_keypdb_t.packpdb_keypdb ->
      Seqres_packpdb_data_t.seqres_packpdb_data
;;

(** {6 Extracting.} *)

val residuepdb_symbol_list_off_seqres_recorpdb_string :
    string ->
      Ordinal_p.ordinal ->
	int ->
	  Residuepdb_symbol_t.residuepdb_symbol list
;;

val residuepdb_symbol_list_off_seqres_packpdb_data :
    Seqres_packpdb_data_t.seqres_packpdb_data ->
      Residuepdb_symbol_t.residuepdb_symbol list
;;

val residuepdb_symbol_list_off_packpdb_keypdb :
    Packpdb_keypdb_t.packpdb_keypdb ->
      Residuepdb_symbol_t.residuepdb_symbol list
;;
