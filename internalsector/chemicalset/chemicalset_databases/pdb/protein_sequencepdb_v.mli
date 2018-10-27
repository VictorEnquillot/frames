(** {3 The functionalities for a Sequence for a Protein from SEQRES Pdb records.} *)

(** {6 Making.} *)

val make :
  Entrypdb_symbol_t.entrypdb_symbol ->
    Protein_sequencepdb_t.protein_sequencepdb
;;

(** {6 Converting.} *)

val name :
    Protein_sequencepdb_t.protein_sequencepdb ->
      string
;;

val print : Format.formatter ->
  Protein_sequencepdb_t.protein_sequencepdb ->
    unit
;;

(** {6 Extracting.} *)

val chain_sequencepdb_of_entrypdb_symbol_of_chain_idpdb :
  Entrypdb_symbol_t.entrypdb_symbol ->
    char ->
      Chain_sequencepdb_t.chain_sequencepdb
;;

(** {6 Querying.} *)

val has_of_chain_idpdb_of_chain_sequencepdb :
    char ->  (* *** TODO uppercase type chain_idpdb *)
      Chain_sequencepdb_t.chain_sequencepdb ->
	bool
;;
