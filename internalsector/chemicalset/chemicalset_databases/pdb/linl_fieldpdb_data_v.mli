(** {3 The functionalities for a Symbol Formula for a LINL Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_linl_fieldpdb_symbol :
  Linl_fieldpdb_symbol_t.linl_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_linl_fieldpdb_symbol :
    Linl_fieldpdb_symbol_t.linl_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_linl_fieldpdb_symbol :
    Linl_fieldpdb_symbol_t.linl_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Linl_fieldpdb_symbol_t.linl_fieldpdb_symbol
;;

val linl_chain_idpdb_of_linl_fieldpdb_symbol_of_recordpdb_string :
  Linl_fieldpdb_symbol_t.linl_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Linl Lfs 18 May 2010. *)
