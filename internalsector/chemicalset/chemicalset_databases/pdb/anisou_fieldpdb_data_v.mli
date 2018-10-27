(** {3 The functionalities for a Symbol Formula for a ANISOU Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_anisou_fieldpdb_symbol :
  Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_anisou_fieldpdb_symbol :
    Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_anisou_fieldpdb_symbol :
    Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol
;;

val anisou_chain_idpdb_of_anisou_fieldpdb_symbol_of_recordpdb_string :
  Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Anisou Anfs 18 May 2010. *)
