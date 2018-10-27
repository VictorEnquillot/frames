(** {3 The functionalities for a Symbol for a Field in an TER Record of a Pdb file.} *)

val string_of_ter_fieldpdb_symbol : 
    Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol -> 
      string
;;

val name :
    Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol -> 
      string
;;

val print : Format.formatter ->
  Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol -> 
    unit
;;

val ter_serial_number : Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol;;
val ter_residue_name : Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol;;
val ter_chain_id : Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol;;
val ter_residue_sequence_number : Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol;;
val ter_insertion_code : Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol;;
