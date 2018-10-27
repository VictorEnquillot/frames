(** {3 The functionalities a Data for an Entry of the Pdb} *)

(** {6 Making.} *)

val make :
    Entrypdb_symbol_t.entrypdb_symbol ->
      Entrypdb_data_t.entrypdb_data
;;

(** {6 Extracting.} *)

val string_list_off_entrypdb_data : 
  Entrypdb_data_t.entrypdb_data ->
    string list
;;

val string_list_off_entrypdb_symbol :
    Entrypdb_symbol_t.entrypdb_symbol ->
      string list
;;

val entrypdb_symbol_off_entrypdb_data :
    Entrypdb_data_t.entrypdb_data ->
      Entrypdb_symbol_t.entrypdb_symbol 
;;
