(* $Id Exp $ *)

val make : Model_recordpdb_symbol_t.model_recordpdb_symbol ->
  Recordpdb_symbol_t.recordpdb_symbol ->
    Fieldpdb_symbol_t.fieldpdb_symbol ->
      Model_fieldpdb_symbol_t.model_fieldpdb_symbol 
;;

val print : Format.formatter ->
      Model_fieldpdb_symbol_t.model_fieldpdb_symbol -> unit
;;
