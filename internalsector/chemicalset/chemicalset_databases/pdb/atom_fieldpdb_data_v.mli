(** {3 The functionalities for a Symbol Formula for a ATOM Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_atom_fieldpdb_symbol :
  Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_atom_fieldpdb_symbol :
    Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_atom_fieldpdb_symbol :
    Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol
;;

val char_of_atom_fieldpdb_symbol_of_recordpdb_string :
  Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
    string ->
      char
;;

val float_of_atom_fieldpdb_symbol_of_recordpdb_string :
  Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
    string ->
      float
;;

val int_of_atom_fieldpdb_symbol_of_recordpdb_string :
  Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
    string ->
      int
;;

val string_of_atom_fieldpdb_symbol_of_recordpdb_string :
  Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol ->
    string ->
      string
;;

(** {9 Fields.} *)

val atom_residue_name_off_recordpdb_string :
    string ->
      string
;;

val atom_name_off_recordpdb_string :
    string ->
      string
;;

val atom_charge_off_recordpdb_string :
    string ->
      string
;;

val atom_residue_sequence_number_off_recordpdb_string :
    string ->
      int
;;

val atom_serial_number_off_recordpdb_string :
    string ->
      int
;;

val atom_alternate_location_id_off_recordpdb_string :
    string ->
      char
;;

val atom_insertion_code_off_recordpdb_string :
    string ->
      char
;;

val atom_x_off_recordpdb_string :
    string ->
      float
;;

val atom_y_off_recordpdb_string :
    string ->
      float
;;

val atom_z_off_recordpdb_string :
    string ->
      float
;;

val atom_occupancy_off_recordpdb_string :
    string ->
      float
;;

val atom_b_factor_off_recordpdb_string :
    string ->
      float
;;

(** created by ./do_some_fieldpdp_data_v Atom Atfs 18 May 2010. *)
