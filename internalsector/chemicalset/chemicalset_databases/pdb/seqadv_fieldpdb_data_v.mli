(** {3 The functionalities for a Symbol Formula for a SEQADV Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_seqadv_fieldpdb_symbol :
  Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_seqadv_fieldpdb_symbol :
    Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_seqadv_fieldpdb_symbol :
    Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol
;;

val seqadv_chain_idpdb_of_seqadv_fieldpdb_symbol_of_recordpdb_string :
  Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Seqadv Safs 18 May 2010. *)
