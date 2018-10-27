(** {3 The functionalities for a Symbol Formula for a TER Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_ter_fieldpdb_symbol :
  Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_ter_fieldpdb_symbol :
    Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_ter_fieldpdb_symbol :
    Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol
;;

val ter_chain_idpdb_of_ter_fieldpdb_symbol_of_recordpdb_string :
  Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Ter Tfs 18 May 2010. *)
