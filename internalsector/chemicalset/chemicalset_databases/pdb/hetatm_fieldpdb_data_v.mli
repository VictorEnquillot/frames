(** {3 The functionalities for a Symbol Formula for a HETATM Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_hetatm_fieldpdb_symbol :
  Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_hetatm_fieldpdb_symbol :
    Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_hetatm_fieldpdb_symbol :
    Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
      Ordinal_p.ordinal * int * Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol
;;

val hetatm_chain_id_of_hetatm_fieldpdb_symbol_of_recordpdb_string :
    Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
      string ->
	char
;;

val char_of_hetatm_fieldpdb_symbol_of_recordpdb_string :
  Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
    string ->
      char
;;

val float_of_hetatm_fieldpdb_symbol_of_recordpdb_string :
    Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
      string ->
	float
;;

val int_of_hetatm_fieldpdb_symbol_of_recordpdb_string :
    Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
      string ->
	int
;;

val string_of_hetatm_fieldpdb_symbol_of_recordpdb_string :
  Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol ->
    string ->
      string
;;

(** {9 Fields.} *)

val hetatm_molecule_name_off_recordpdb_string :
    string ->
      string
;;

val hetatm_name_off_recordpdb_string :
    string ->
      string
;;

val hetatm_charge_off_recordpdb_string :
    string ->
      string
;;

val hetatm_molecule_number_off_recordpdb_string :
    string ->
      int
;;

val hetatm_serial_number_off_recordpdb_string :
    string ->
      int
;;

val hetatm_alternate_location_id_off_recordpdb_string :
    string ->
      char
;;

val hetatm_insertion_code_off_recordpdb_string :
    string ->
      char
;;

val hetatm_x_off_recordpdb_string :
    string ->
      float
;;

val hetatm_y_off_recordpdb_string :
    string ->
      float
;;

val hetatm_z_off_recordpdb_string :
    string ->
      float
;;

val hetatm_occupancy_off_recordpdb_string :
    string ->
      float
;;

val hetatm_b_factor_off_recordpdb_string :
    string ->
      float
;;

(** created by ./do_some_fieldpdp_data_v Hetatm Hfs 18 May 2010. *)
(** created by ./do_some_fieldpdp_data_v Hetatm 01 November 2010. *)
