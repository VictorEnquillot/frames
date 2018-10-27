(* $Id : Exp $ *)

open Make_test_v;;

testing "Model_recordpdb_symbol_v";;

(* toplevel #use "tmodel_recordpdb_symbol_v.ml";; *)

let str = Model_recordpdb_symbol_v.string_of_model_recordpdb_symbol 
 Model_recordpdb_symbol_t.Usual;;


test_number 1 (
str
=
"Usual"
);;
