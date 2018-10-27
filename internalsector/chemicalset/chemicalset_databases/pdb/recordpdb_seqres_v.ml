(* $Id: Exp $ *)

(** {3 A SEQRES Record of a Pdb File} *)

(*
SEQRES   4 B   58  ALA LYS ARG ASN ASN PHE LYS SER ALA GLU ASP CYS MET  4PTI  73
SEQRES   5 B   58  ARG THR CYS GLY GLY ALA                              4PTI  74
SEQRES   1 B  374  SER THR ALA GLY LYS VAL ILE LYS CYS LYS ALA ALA VAL  6ADH 236

         1         2         3         4         5         6         7         8 
1   5    0  3 5    0    5    0    5    0    5    0    5    0    5    0    5    0
*)

(* adapt get_word to current Model and Record*)
let get_current_word str fld_lbl =
  let rcd_lbl = Recordpdb_symbol_t.SEQRES in
  let mdl_lbl = Provider_data_pdb_v.provide_model_label () in
  let mrf_lbl = Model_fieldpdb_symbol_v.make mdl_lbl rcd_lbl fld_lbl in
  Recordpdb_v.get_word str mrf_lbl
;;

let seqres_record_of_string str =

  Recordpdb_v.record_label_checked "SEQRES" str;
(*  Model_recordpdb_v.check_for_empty_character  current_model_label str; *)

  let rcd_nam_w = get_current_word str Fieldpdb_symbol_t.Record_label in
  let rcd_num_w = get_current_word str Fieldpdb_symbol_t.Record_number in
  let chn_lbl_w = get_current_word str Fieldpdb_symbol_t.Chain_index in
  let seq_len_w = get_current_word str Fieldpdb_symbol_t.Seqres_sequence_length in
  let trn_nam_w = get_current_word str Fieldpdb_symbol_t.Seqres_thirteen_names in
  {
   Recordpdb_seqres_t.record_label = 
   Recordpdb_symbol_v.recordpdb_symbol_of_name rcd_nam_w;
   Recordpdb_seqres_t.record_number = Tokenpdb_v.integer_4_of_string  rcd_num_w;
   Recordpdb_seqres_t.chain_index_pdb = 
   Polypeptide_identifier_v.chain_index_of_string  chn_lbl_w;
   Recordpdb_seqres_t.sequence_length = Tokenpdb_v.integer_4_of_string  seq_len_w;
   Recordpdb_seqres_t.thirteen_names = trn_nam_w; 
 }
;;

