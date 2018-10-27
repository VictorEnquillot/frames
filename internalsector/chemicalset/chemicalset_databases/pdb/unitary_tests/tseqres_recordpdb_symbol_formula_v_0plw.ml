(** {3 0plw Seqres_recordpdb_symbol_formula} *)

open Make_test_v;;

testing "0plw Seqres_recordpdb_symbol_formula_v";;

(* toplevel 
   #use "tseqres_recordpdb_symbol_formula_v_0plw.ml";; 
*)


let frm_smb_spr = Seqres_recordpdb_symbol_formula_v.make ();;

test_number 1 (
frm_smb_spr (* : Seqres_recordpdb_symbol_formula_v.Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol list *)
=
  [
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Empty_1;
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Seqres_record_serial_number;
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Empty_2;
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Seqres_chain_id;
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Empty_3;
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Seqres_sequence_length;
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Empty_4;
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Seqres_thirteen_names;
   Seqres_recordpdb_symbol_formula_t.Header_fieldpdb_symbol_t.Empty_5
 ]
);;

test_number 2 (
Seqres_recordpdb_symbol_formula_v.name frm_smb_spr (* : string *)
= 
"Empty_1Seqres_record_serial_numberEmpty_2Seqres_chain_idEmpty_3Seqres_sequence_lengthEmpty_4Seqres_thirteen_namesEmpty_5"
);;
