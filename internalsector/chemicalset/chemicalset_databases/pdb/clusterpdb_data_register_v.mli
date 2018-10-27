(** {3 The Register of each Pack value by Pack Symbol of the Pdb} *)

val clear : unit -> unit;;

(** {6 Key.} *)

val store_of_entrypdb_symbol : 
    Entrypdb_symbol_t.entrypdb_symbol ->
      unit
;;

val clusterpdb_hkey_list : unit ->
  Clusterpdb_keypdb_t.clusterpdb_keypdb list
;;

val clusterpdb_hvalue_list : unit ->
  Clusterpdb_data_t.clusterpdb_data list
;;

val clusterpdb_hentry_list : unit ->
 (Clusterpdb_keypdb_t.clusterpdb_keypdb * Clusterpdb_data_t.clusterpdb_data) list
;;

val retrieve :
    Clusterpdb_keypdb_t.clusterpdb_keypdb ->
      Clusterpdb_data_t.clusterpdb_data
;;
