
val column_and_width_of_fieldpdb_symbol :
    (Fieldpdb_symbol_t.fieldpdb_symbol -> (Ordinal_p.ordinal * Ordinal_p.ordinal)) ->
      Fieldpdb_symbol_t.fieldpdb_symbol ->
	(Ordinal_p.ordinal * int)
;;
(** [let (c, w) = column_and_width_of_fieldpdb_symbol ()]
     c is the starting column number (first is 1)
     w is the width of the field. *)

val column_and_width_and_symbol_of_fieldpdb_symbol :
    (Fieldpdb_symbol_t.fieldpdb_symbol -> (Ordinal_p.ordinal * Ordinal_p.ordinal)) ->
      Fieldpdb_symbol_t.fieldpdb_symbol ->
	(Ordinal_p.ordinal * int * Fieldpdb_symbol_t.fieldpdb_symbol) 
;;
(** [let (c, w, s) = column_and_width_and_symbol_of_fieldpdb_symbol ()]
     c is the starting column number (first is 1)
     w is the width of the field
     s the symbol of the field. *)

val convert_char_field :
     (Ordinal_p.ordinal * int) -> 
       string -> 
	 char
;;

val convert_float_field :
    (Ordinal_p.ordinal * int) -> 
      string -> 
	  float
;;

val convert_int_field :
     (Ordinal_p.ordinal * int) -> 
       string -> 
	 int
;;

val convert_string_field :
    (Ordinal_p.ordinal * int) -> 
      string -> 
	  string
;;

val has_same_firstsixcharacters_of_string_of_string : 
    string ->
      string ->
	bool
;;
