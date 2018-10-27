(** {3 The functionalities for a Symbol for a Field in a SEQRES Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val seqres_record_serial_number : Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol;;
val seqres_chain_id : Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol;;
val seqres_sequence_length : Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol;;
val seqres_thirteen_names : Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_seqres_fieldpdb_symbol :
  Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol ->
       string
;;

val name :
  Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol ->
       unit
;;
