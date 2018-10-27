(** {3 The functionalities for a Symbol Formula for a HELIX Record of a Pdb file.} *)

(** {6 Making.} *)

val column_pair_of_helix_fieldpdb_symbol :
  Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol ->
    Ordinal_p.ordinal * Ordinal_p.ordinal
;;

val column_and_width_of_helix_fieldpdb_symbol :
    Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol ->
    Ordinal_p.ordinal * int
;;

val column_and_width_and_symbol_of_helix_fieldpdb_symbol :
    Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol ->
    Ordinal_p.ordinal * int * Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol
;;

val helix_chain_idpdb_of_helix_fieldpdb_symbol_of_recordpdb_string :
  Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol ->
    string ->
      char
;;

(** created by ./do_some_fieldpdp_data_v Helix Hlfs 18 May 2010. *)
