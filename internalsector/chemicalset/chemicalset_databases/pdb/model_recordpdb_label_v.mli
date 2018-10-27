(* $Id : Exp $ *)

val string_of_model_recordpdb_symbol : 
  Model_recordpdb_symbol_t.model_recordpdb_symbol -> string
;;

val print : Format.formatter -> 
  Model_recordpdb_symbol_t.model_recordpdb_symbol -> unit
;;
