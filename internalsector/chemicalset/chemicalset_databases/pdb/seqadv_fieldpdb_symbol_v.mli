(** {3 The functionalities for a Symbol for a Field in a SEQADV Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val seqadv_id : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_residue_name : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_chain_id : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_sequence_number : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_insertion_code : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_database : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_sequence_databse_accession_number : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_sequence_databse_residue_name : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_sequence_databse_sequence_number : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;
val seqadv_conflict_description : Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_seqadv_fieldpdb_symbol :
  Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol ->
       string
;;

val name :
  Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol ->
       unit
;;
