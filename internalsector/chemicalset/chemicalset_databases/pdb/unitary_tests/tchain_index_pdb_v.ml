(* $Id : Exp $ *)

open Make_test_v;;

testing "Recordpdb_symbol_v";;

(* toplevel #use "trecordpdb_symbol_v.ml";; *)

let str = "HEADER    PLANT PROTEIN                           02-MAR-00   1EJG";; 

let lbl = Recordpdb_symbol_v.recordpdb_symbol_of_name str;;

test_number 1 (
lbl 
=
Recordpdb_symbol_t.HEADER
);;

test_number 2 (
 Recordpdb_symbol_v.name_of_recordpdb_symbol lbl
=
"HEADER"
);;
