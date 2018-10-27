(* $Id : Exp $ *)

open Make_test_v;;

testing "Model_recordpdb_v";;

(* toplevel #use "tmodel_recordpdb_v.ml";; *)

(** {9 ATOM.} *)
let mrf_arl = Model_fieldpdb_symbol_v.make 
Model_recordpdb_symbol_t.Usual
Recordpdb_symbol_t.ATOM
Fieldpdb_symbol_t.Record_label
;;

test_number 1 (
   Model_recordpdb_v.record_field_limits_pdb_of_model_fieldpdb_symbol 
   mrf_arl
=
(1, 6)
);;

let mrf_ae3 = Model_fieldpdb_symbol_v.make 
Model_recordpdb_symbol_t.Usual
Recordpdb_symbol_t.ATOM
Fieldpdb_symbol_t.Empty_3
;;

test_number 2 (
   Model_recordpdb_v.record_field_limits_pdb_of_model_fieldpdb_symbol 
   mrf_ae3
=
(28, 30)
);;

(** {9 HEADER.} *)

let mrf_hip = Model_fieldpdb_symbol_v.make 
Model_recordpdb_symbol_t.Usual
Recordpdb_symbol_t.HEADER
Fieldpdb_symbol_t.Id_pdb
;;

test_number 3 (
   Model_recordpdb_v.record_field_limits_pdb_of_model_fieldpdb_symbol 
   mrf_hip
=
(63, 66)
);;

(** {9 SEQRES.} *)

let mrf_srn = Model_fieldpdb_symbol_v.make 
Model_recordpdb_symbol_t.Usual
Recordpdb_symbol_t.SEQRES
Fieldpdb_symbol_t.Record_number
;;

test_number 4 (
   Model_recordpdb_v.record_field_limits_pdb_of_model_fieldpdb_symbol 
   mrf_srn
=
(9, 10)
);;


