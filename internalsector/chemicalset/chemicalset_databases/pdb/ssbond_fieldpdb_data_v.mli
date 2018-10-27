(** {3 The functionalities for a Symbol Formula for a SSBOND Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_ssbond_fieldpdb_symbol :
  Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_ssbond_fieldpdb_symbol :
    Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_ssbond_fieldpdb_symbol :
    Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol
;;

val ssbond_chain_idpdb_of_ssbond_fieldpdb_symbol_of_recordpdb_string :
  Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Ssbond Sbfs 18 May 2010. *)
