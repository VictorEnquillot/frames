
val column_and_width_of_fieldpdb_symbol :
    fieldpdb_symbol_t.fieldpdb_symbol ->
      (Ordinal_p.ordinal * int)
;;
(** [let (c, w) = column_and_width_of_fieldpdb_symbol ()]
     c is the starting column number (first is 1)
     w is the width of the field. *)

val column_and_width_and_symbol_of_fieldpdb_symbol :
    fieldpdb_symbol_t.fieldpdb_symbol ->
      (Ordinal_p.ordinal * int * fieldpdb_symbol_t.fieldpdb_symbol) 
;;
(** [let (c, w, s) = column_and_width_and_symbol_of_fieldpdb_symbol ()]
     c is the starting column number (first is 1)
     w is the width of the field
     s the symbol of the field. *)

val convert_string_field : 
    string -> 
      fieldpdb_symbol_t.fieldpdb_symbol ->
	string
;;
