(** {3 The functionalities for a Symbol for a Field in a HELIX Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val helix_serial_number : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_id : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_initial_residue_name : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_initial_chain_id : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_initial_residue_sequence_number : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_initial_residue_insertion_code : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_final_residue_name : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_final_chain_id : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_final_residue_sequence_number : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_final_residue_insertion_code : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_class : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;
val helix_length : Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_helix_fieldpdb_symbol :
  Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol ->
       string
;;

val name :
  Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol ->
       unit
;;
