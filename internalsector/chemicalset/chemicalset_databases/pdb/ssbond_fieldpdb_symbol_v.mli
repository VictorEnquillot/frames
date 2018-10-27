(** {3 The functionalities for a Symbol for a Field in a SSBOND Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val ssbond_serial_number : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_residue_name_1 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_chain_idpdb_1 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_residue_sequence_number_1 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_insertion_code_1 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_residue_name_2 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_chain_idpdb_2 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_residue_sequence_number_2 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_insertion_code_2 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_symmetry_operator_1 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_symmetry_operator_2 : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;
val ssbond_length : Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_ssbond_fieldpdb_symbol :
  Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol ->
       string
;;

val name :
  Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol ->
       unit
;;
