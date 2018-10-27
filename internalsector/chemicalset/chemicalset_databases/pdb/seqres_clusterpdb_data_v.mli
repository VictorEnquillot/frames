(** {3 The functionalities for a Cluster of SEQRES Pdb records.} *)

(** {6 Making.} *)

val make :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      Seqres_clusterpdb_data_t.seqres_clusterpdb_data
;;

(** {6 Extracting.} *)

val seqres_chain_idpdb_of_string_of_ordinal_of_int :
    string ->
      Ordinal_p.ordinal ->
	int ->
	  char
;;

val chain_idpdb_list_of_seqres_clusterpdb_data :
    Seqres_clusterpdb_data_t.seqres_clusterpdb_data ->
      char list
;;

val chain_idpdb_list_of_entrypdb_symbol :
    Entrypdb_symbol_t.entrypdb_symbol ->
      char list
;;
