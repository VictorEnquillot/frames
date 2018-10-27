(** {3 The functionalities for a Symbol Formula for an SEQRES field in a Pdb file record.} *)


let make () =
  [
  Seqres_fieldpdb_symbol_t.Empty_1;               (*  7- 7 *)
  Seqres_fieldpdb_symbol_t.Seqres_record_serial_number;  (*  8-10 *)
  Seqres_fieldpdb_symbol_t.Empty_2;               (* 11-11 *)
  Seqres_fieldpdb_symbol_t.Seqres_chain_id;        (* 12-12 *)
  Seqres_fieldpdb_symbol_t.Empty_3;               (* 13-13 *)
  Seqres_fieldpdb_symbol_t.Seqres_sequence_length;       (* 14-17 *)
  Seqres_fieldpdb_symbol_t.Empty_4;               (* 18-19 *)
  Seqres_fieldpdb_symbol_t.Seqres_thirteen_names;        (* 20-70 *) (*** TODO a list ? *)
  Seqres_fieldpdb_symbol_t.Empty_5;               (* 71-80 *)
]
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

let name frm_smb_srp =
  List_v.name Seqres_fieldpdb_symbol_v.name frm_smb_srp 
;;

let print ppf frm_smb_srp =
  List_v.print Seqres_fieldpdb_symbol_v.print ppf frm_smb_srp 
;;
