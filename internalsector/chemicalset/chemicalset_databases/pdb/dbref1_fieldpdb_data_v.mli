(** {3 The functionalities for a Symbol Formula for a DBREF1 Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_dbref1_fieldpdb_symbol :
  Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_dbref1_fieldpdb_symbol :
    Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_dbref1_fieldpdb_symbol :
    Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol
;;

val dbref1_chain_idpdb_of_dbref1_fieldpdb_symbol_of_recordpdb_string :
  Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Dbref1 D1fs 18 May 2010. *)
