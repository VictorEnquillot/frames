(** {3 The functionalities for a Symbol for a Field in a HEADER Record of a Pdb file.} *)

val string_of_header_fieldpdb_symbol : 
    Header_fieldpdb_symbol_t.header_fieldpdb_symbol -> 
      string
;;

val name :
    Header_fieldpdb_symbol_t.header_fieldpdb_symbol -> 
      string
;;

val print : Format.formatter ->
  Header_fieldpdb_symbol_t.header_fieldpdb_symbol -> 
    unit
;;

val chemical_species : Header_fieldpdb_symbol_t.header_fieldpdb_symbol;;
val deposition_date : Header_fieldpdb_symbol_t.header_fieldpdb_symbol;;
val pdbid : Header_fieldpdb_symbol_t.header_fieldpdb_symbol;;
val empty_1 : Header_fieldpdb_symbol_t.header_fieldpdb_symbol;;
val empty_2 : Header_fieldpdb_symbol_t.header_fieldpdb_symbol;;
val empty_3 : Header_fieldpdb_symbol_t.header_fieldpdb_symbol;;
