(** {3 The functionalities for a Value for a TER Record of the Pdb file.} *)

val column_and_width_and_symbol_list : 
    unit ->
      (Ordinal_p.ordinal * int * Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol) list
;;
(** [let l = column_and_width_and_symbol_list ()]
     each element of l is triplet (c, w, s) :
      c is the starting column number (first is 1)
      w is the width of the field
      s the symbol of the field. *)

val data : 
    string -> 
       Ter_recordpdb_data_t.ter_recordpdb_data
;;

val ter_chain_idpdb_off_recordpdb_string :
    string ->
      char
;;
