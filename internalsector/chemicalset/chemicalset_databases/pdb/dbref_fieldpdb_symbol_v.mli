(** {3 The functionalities for a Symbol for a Field in an DBREF Record of a Pdb file.} *)

val string_of_dbref_fieldpdb_symbol : 
    Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol -> 
      string
;;

val name :
    Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol -> 
      string
;;

val print : Format.formatter ->
  Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol -> 
    unit
;;

