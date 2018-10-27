(** {3 The functionalities for a Sequence for a Protein from SEQRES Pdb records.} *)

(** {6 Making.} *)

val make :
    char ->
      Residuepdb_symbol_t.residuepdb_symbol list ->
	Chain_sequencepdb_t.chain_sequencepdb
;;

val chain_sequencepdb_of_packpdb_keypdb :
    Packpdb_keypdb_t.packpdb_keypdb ->
	Chain_sequencepdb_t.chain_sequencepdb
;;

(** {6 Extracting.} *)

val chain_idpdb_off_chain_sequencepdb :
    Chain_sequencepdb_t.chain_sequencepdb ->
      char
;;

val residuepdb_symbol_list_off_chain_sequencepdb :
    Chain_sequencepdb_t.chain_sequencepdb ->
      Residuepdb_symbol_t.residuepdb_symbol list
;;

(** {6 Converting.} *)

val name : 
    Chain_sequencepdb_t.chain_sequencepdb ->
      string
;;

val print : Format.formatter -> 
  Chain_sequencepdb_t.chain_sequencepdb ->
    unit
;;
