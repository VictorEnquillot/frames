(** {3 The functionalities for a Data for a Record of the Pdb} *)

(** {6 Reading.} *)

val string_of_recordpdb_data :
    Recordpdb_data_t.recordpdb_data ->
      string
;;

val recordpdb_symbol_off_recordpdb_data :
    Recordpdb_data_t.recordpdb_data ->
      Recordpdb_symbol_t.recordpdb_symbol
;;

