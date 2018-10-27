(** {3 The functionalities for a Symbol for a Field in a DBREF2 Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val dbref2_id : Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol;;
val dbref2_chain_id : Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol;;
val dbref2_sequence_database_accession_code : Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol;;
val dbref2_pdb_sequence_segment_initial_sequence_number : Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol;;
val dbref2_pdb_sequence_segment_final_sequence_number : Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_dbref2_fieldpdb_symbol :
  Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol ->
       string
;;

val name :
  Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol ->
       unit
;;
