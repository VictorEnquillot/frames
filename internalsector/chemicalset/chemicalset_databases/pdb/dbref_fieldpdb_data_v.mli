(** {3 The functionalities for a Symbol Formula for a DBREF Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_dbref_fieldpdb_symbol :
  Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_dbref_fieldpdb_symbol :
    Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_dbref_fieldpdb_symbol :
    Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol
;;

val dbref_chain_idpdb_of_dbref_fieldpdb_symbol_of_recordpdb_string :
  Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Dbref Dfs 18 May 2010. *)
