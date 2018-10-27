(** {3 The functionalities for a Symbol for a Field in a HETATM Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val hetatm_serial_number : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_symbol : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_alternate_location_id : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_residue_name : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_chain_id : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_residue_sequence_number : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_insertion_code : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_x : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_y : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_z : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_occupancy : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_b_factor : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatam_element_symbol : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;
val hetatm_charge : Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_hetatm_fieldpdb_symbol :
  Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
       string
;;

val name :
  Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
       string
;;

val print : Format.formatter ->
  Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
       unit
;;
