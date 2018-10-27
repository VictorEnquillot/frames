(** {3 A Value for a field in a HEADER Pdb file record.} *)

val column_and_width_of_header_fieldpdb_symbol :
    Header_fieldpdb_symbol_t.header_fieldpdb_symbol ->
      (Ordinal_p.ordinal * Ordinal_p.ordinal)
;;
(** [let (c, l) = column_and_width_of_header_fieldpdb_symbol s]
    c is the starting column number (first is 1)
    l is the width of the field
     s the symbol of the field. *)

val column_and_width_and_symbol_of_header_fieldpdb_symbol :
    Header_fieldpdb_symbol_t.header_fieldpdb_symbol ->
      (Ordinal_p.ordinal * Ordinal_p.ordinal * Header_fieldpdb_symbol_t.header_fieldpdb_symbol) 
;;
(** [let (c, l, s) = column_and_width_and_symbol_of_header_fieldpdb_symbol ()]
     c is the starting column number (first is 1)
     l is the width of the field
     s the symbol of the field. *)

val data_of_string_of_header_fieldpdb_symbol :
    string ->
      Header_fieldpdb_symbol_t.header_fieldpdb_symbol -> 
	Header_fieldpdb_data_t.header_fieldpdb_data
;;

