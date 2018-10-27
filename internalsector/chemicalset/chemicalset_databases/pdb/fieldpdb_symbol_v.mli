(** {3 The functionalities for a Symbol for a Field in a Record of a Pdb file.} *)

val string_of_fieldpdb_symbol : 
    Fieldpdb_symbol_t.fieldpdb_symbol -> 
      string
;;

val name :
    Fieldpdb_symbol_t.fieldpdb_symbol -> 
      string
;;

val print : Format.formatter ->
  Fieldpdb_symbol_t.fieldpdb_symbol -> 
    unit
;;

