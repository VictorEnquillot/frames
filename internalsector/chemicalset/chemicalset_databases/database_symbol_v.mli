(** {3 The Symbols to define a Database for Molecules.} *)

val name : 
    Database_symbol_t.database_symbol ->
      string
;;

val print :
    Format.formatter ->
      Database_symbol_t.database_symbol ->
	unit
 ;;

