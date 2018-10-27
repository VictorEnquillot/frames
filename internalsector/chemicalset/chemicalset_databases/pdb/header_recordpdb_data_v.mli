(** {3 The functionalities for a Value for a HEADER Record of the Pdb file.} *)

val column_and_width_and_symbol_list : 
    unit ->
      (Ordinal_p.ordinal * Ordinal_p.ordinal * Header_fieldpdb_symbol_t.header_fieldpdb_symbol) list
;;
(** [let l = column_and_width_and_symbol_list ()]
     each elemne
t of l is triplet (c, w, s) :
      c is the starting column number (first is 1)
      w is the width of the field
      s the symbol of the field. *)

val value : 
    string -> 
       Header_recordpdb_data_t.header_recordpdb_data
;;
