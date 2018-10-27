(** {3 The functionalities for a Symbol for a Field in a HET Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val het_id : Het_fieldpdb_symbol_t.het_fieldpdb_symbol;;
val het_chain_id : Het_fieldpdb_symbol_t.het_fieldpdb_symbol;;
val het_sequence_number : Het_fieldpdb_symbol_t.het_fieldpdb_symbol;;
val het_insertion_code : Het_fieldpdb_symbol_t.het_fieldpdb_symbol;;
val het_hetatm_record_number : Het_fieldpdb_symbol_t.het_fieldpdb_symbol;;
val het_description : Het_fieldpdb_symbol_t.het_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_het_fieldpdb_symbol :
  Het_fieldpdb_symbol_t.het_fieldpdb_symbol ->
       string
;;

val name :
  Het_fieldpdb_symbol_t.het_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Het_fieldpdb_symbol_t.het_fieldpdb_symbol ->
       unit
;;
