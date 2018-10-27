(** {3 The functionalities for a Symbol Formula for a MODRES Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_modres_fieldpdb_symbol :
  Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_modres_fieldpdb_symbol :
    Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_modres_fieldpdb_symbol :
    Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol
;;

val modres_chain_idpdb_of_modres_fieldpdb_symbol_of_recordpdb_string :
  Modres_fieldpdb_symbol_t.modres_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Modres Mfs 18 May 2010. *)
