(** {3 The functionalities for a Symbol for a Field in a DBREF1 Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val dbref1_id : Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol;;
val dbref1_chain_id : Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol;;
val dbref1_pdb_sequence_segment_initial_sequence_number : Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol;;
val dbref1_pdb_sequence_segment_initial_insertion_code : Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol;;
val dbref1_pdb_sequence_segment_final_sequence_number : Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol;;
val dbref1_pdb_sequence_segment_final_insertion_code : Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol;;
val dbref1_sequence_database_name : Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol;;
val dbref1_sequence_database_identification_code : Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_dbref1_fieldpdb_symbol :
  Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol ->
       string
;;

val name :
  Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol ->
       unit
;;
