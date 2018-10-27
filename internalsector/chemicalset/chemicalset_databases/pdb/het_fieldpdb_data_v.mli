(** {3 The functionalities for a Symbol Formula for a HET Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_het_fieldpdb_symbol :
  Het_fieldpdb_symbol_t.het_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_het_fieldpdb_symbol :
    Het_fieldpdb_symbol_t.het_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_het_fieldpdb_symbol :
    Het_fieldpdb_symbol_t.het_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Het_fieldpdb_symbol_t.het_fieldpdb_symbol
;;

val het_chain_idpdb_of_het_fieldpdb_symbol_of_recordpdb_string :
  Het_fieldpdb_symbol_t.het_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Het Hfs 18 May 2010. *)
