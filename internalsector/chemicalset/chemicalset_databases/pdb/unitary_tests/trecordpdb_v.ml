(* $Id : Exp $ *)

open Make_test_v;;

testing "Recordpdb_v";;

(* toplevel #use "trecordpdb_v.ml";; *)

let str = 
"ATOM    762 2HA  GLY A   1      17.660  10.906  19.684  1.00  6.06           H  ";;

let pdb_rcd = Recordpdb_t.ATOM (str) ;; 
test_number 1 (
pdb_rcd 
=
  Recordpdb_t.ATOM
"ATOM    762 2HA  GLY A   1      17.660  10.906  19.684  1.00  6.06           H  "
);;

test_number 2 (
Recordpdb_v.recordpdb_symbol_of_recordpdb pdb_rcd
=
Recordpdb_symbol_t.ATOM
);;

test_number 3 (
Recordpdb_v.string_of_recordpdb pdb_rcd
=
str
);;

test_number 4 (
Recordpdb_v.name_of_recordpdb pdb_rcd 
= 
"ATOM"
);;

test_number 5 (
Recordpdb_v.recordpdb_of_string str
=
Recordpdb_t.ATOM
 "ATOM    762 2HA  GLY A   1      17.660  10.906  19.684  1.00  6.06           H  "
);;

test_number 6 (
Recordpdb_v.line_80_of_string "1234567890"
=
"1234567890                                                                      "
);;

test_number 7 (
Recordpdb_v.recordpdb_list_of_string_list [str; str]
=
[
Recordpdb_t.ATOM
  "ATOM    762 2HA  GLY A   1      17.660  10.906  19.684  1.00  6.06           H  ";
 Recordpdb_t.ATOM
  "ATOM    762 2HA  GLY A   1      17.660  10.906  19.684  1.00  6.06           H  "
]
);;

let mrf_arl = Model_fieldpdb_symbol_v.make 
Model_recordpdb_symbol_t.Usual
Recordpdb_symbol_t.ATOM
Fieldpdb_symbol_t.Record_label
;;

test_number 8 (
Recordpdb_v.get_word str mrf_arl
= 
"ATOM  "
);;
