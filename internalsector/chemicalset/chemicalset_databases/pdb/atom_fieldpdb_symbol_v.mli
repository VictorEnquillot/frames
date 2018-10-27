(** {3 The functionalities for a Symbol for a Field in a ATOM Record of a Pdb file.} *)

(** {6 Abbreviating.} *)

val atom_serial_number : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_name : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_alternate_location_id : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_residue_name : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_chain_id : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_residue_sequence_number : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_insertion_code : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_x : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_y : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_z : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_occupancy : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_b_factor : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_element_symbol : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;
val atom_charge : Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol;;

(** {6 Converting.} *)

val string_of_atom_fieldpdb_symbol :
    Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
      string
;;

val name :
  Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
      unit
;;

