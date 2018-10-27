(** {3 The functionalities for a Symbol for a Field in a CISPEP Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val cispep_serial_number : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_residue_name_1 : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_chain_idpdb_1 : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_residue_sequence_number_1 : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_insertion_code_1 : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_residue_name_2 : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_chain_idpdb_2 : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_residue_sequence_number_2 : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_insertion_code_2 : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_model_number : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;
val cispep_angle_degree : Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_cispep_fieldpdb_symbol :
  Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol ->
       string
;;

val name :
  Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol ->
       unit
;;
