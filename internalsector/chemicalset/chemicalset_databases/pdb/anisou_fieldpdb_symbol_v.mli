(** {3 The functionalities for a Symbol for a Field in a ANISOU Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val anisou_atom_serial_number : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_atom_name : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_atom_alternate_location_id : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_residue_symbol : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_chain_id : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_residue_sequence_number : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_insertion_code : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_u_1_1 : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_u_2_2 : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_u_3_3 : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_u_1_2 : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_u_1_3 : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_u_2_3 : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_element_symbol : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;
val anisou_atom_charge : Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_anisou_fieldpdb_symbol :
  Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol ->
       string
;;

val name :
  Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol ->
       unit
;;
