(** {3 The functionalities for a Symbol Formula for a CISPEP Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_cispep_fieldpdb_symbol :
  Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_cispep_fieldpdb_symbol :
    Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_cispep_fieldpdb_symbol :
    Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol
;;

val cispep_chain_idpdb_of_cispep_fieldpdb_symbol_of_recordpdb_string :
  Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Cispep Cifs 18 May 2010. *)
