(* $Id : Exp $ *)

open Make_test_v;;

testing "Fieldpdb_symbol_v";;

(* toplevel #use "tfieldpdb_symbol_v.ml";; *)

let str = 
  Fieldpdb_symbol_v.string_of_fieldpdb_symbol 
    Fieldpdb_symbol_t.Record_label;;

test_number 1 (
str 
=
"Record_label"
);;

