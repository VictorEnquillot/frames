(** {3 The functionalities for a Symbol Formula for a SEQRES Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_seqres_fieldpdb_symbol :
  Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_seqres_fieldpdb_symbol :
    Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_seqres_fieldpdb_symbol :
    Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol
;;

val seqres_chain_idpdb_of_seqres_fieldpdb_symbol_of_recordpdb_string :
  Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Seqres Sqfs 18 May 2010. *)
