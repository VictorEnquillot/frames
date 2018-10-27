(* $Id : Exp $ *)

open Make_test_v;;

testing "Model_recordpdb_v";;

(* toplevel #use "tmodel_recordpdb_v.ml";; *)

let lim_lbl =
  Record_field_model_atom_pdb_v.record_field_limits_pdb_of_record_field_pdb
    Fieldpdb_symbol_t.Record_label 
    Model_recordpdb_symbol_t.Usual ;;

test_number 1 (
lim_lbl
=
(1, 6)
);;

let lim_em3 =
  Record_field_model_atom_pdb_v.record_field_limits_pdb_of_record_field_pdb
    Fieldpdb_symbol_t.Empty_3
    Model_recordpdb_symbol_t.Usual ;;

test_number 2 (
lim_em3
=
(28, 30)
);;

