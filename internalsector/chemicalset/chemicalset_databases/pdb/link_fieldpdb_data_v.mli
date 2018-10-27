(** {3 The functionalities for a Symbol Formula for a LINK Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_link_fieldpdb_symbol :
  Link_fieldpdb_symbol_t.link_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_link_fieldpdb_symbol :
    Link_fieldpdb_symbol_t.link_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_link_fieldpdb_symbol :
    Link_fieldpdb_symbol_t.link_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Link_fieldpdb_symbol_t.link_fieldpdb_symbol
;;

val link_chain_idpdb_of_link_fieldpdb_symbol_of_recordpdb_string :
  Link_fieldpdb_symbol_t.link_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Link Lfs 18 May 2010. *)
