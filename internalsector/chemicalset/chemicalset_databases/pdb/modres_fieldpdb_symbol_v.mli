(** {3 The functionalities for a Symbol for a Field in a MODRES Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val modres_id : Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol;;
val modres_residue_name : Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol;;
val modres_chain_id : Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol;;
val modres_sequence_number : Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol;;
val modres_insertion_code : Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol;;
val modres_standard_residue_name : Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol;;
val modres_description : Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_modres_fieldpdb_symbol :
  Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol ->
       string
;;

val name :
  Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol ->
       unit
;;
