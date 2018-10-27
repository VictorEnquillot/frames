(* $Id : Exp $ *)

open Make_test_v;;

testing "Model_fieldpdb_symbol_v";;

(* toplevel #use "tmodel_fieldpdb_symbol_v.ml";; *)

let mrf_arl = Model_fieldpdb_symbol_v.make 
Model_recordpdb_symbol_t.Usual
Recordpdb_symbol_t.ATOM
Fieldpdb_symbol_t.Record_label
;;

test_number 1 (
mrf_arl
  =  
{
Model_fieldpdb_symbol_t.field_label =
  Fieldpdb_symbol_t.Record_label;
  Model_fieldpdb_symbol_t.record_label = Recordpdb_symbol_t.ATOM;
  Model_fieldpdb_symbol_t.model_label =
  Model_recordpdb_symbol_t.Usual
}
);;

let mrf_hip = Model_fieldpdb_symbol_v.make 
Model_recordpdb_symbol_t.Usual
Recordpdb_symbol_t.HEADER
Fieldpdb_symbol_t.Id_pdb
;;

test_number 2 (
mrf_hip
  =  
{
Model_fieldpdb_symbol_t.field_label =
  Fieldpdb_symbol_t.Id_pdb;
  Model_fieldpdb_symbol_t.record_label = Recordpdb_symbol_t.HEADER;
  Model_fieldpdb_symbol_t.model_label =
  Model_recordpdb_symbol_t.Usual
}
);;

let mrf_srn = Model_fieldpdb_symbol_v.make 
Model_recordpdb_symbol_t.Usual
Recordpdb_symbol_t.SEQRES
Fieldpdb_symbol_t.Record_number
;;

test_number 3 (
mrf_srn
  =  
{
Model_fieldpdb_symbol_t.field_label =
  Fieldpdb_symbol_t.Record_number;
  Model_fieldpdb_symbol_t.record_label = Recordpdb_symbol_t.SEQRES;
  Model_fieldpdb_symbol_t.model_label =
  Model_recordpdb_symbol_t.Usual
}
);;
