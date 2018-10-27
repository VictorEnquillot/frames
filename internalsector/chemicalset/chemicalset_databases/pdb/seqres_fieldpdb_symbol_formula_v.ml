(** {3 The functionalities for a Symbol Formula for an SEQRES field in a Pdb file record.} *)


let make () =
  [
   Seqres_fieldpdb_symbol_v.empty_1;
   Seqres_fieldpdb_symbol_v.record_serial_number;
   Seqres_fieldpdb_symbol_v.empty_2;
   Seqres_fieldpdb_symbol_v.chain_id;
   Seqres_fieldpdb_symbol_v.empty_3;
   Seqres_fieldpdb_symbol_v.sequence_length;
   Seqres_fieldpdb_symbol_v.empty_4;
   Seqres_fieldpdb_symbol_v.empty_5;
   Seqres_fieldpdb_symbol_v.thirteen_names;
 ]
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

let name frm_smb_arp =
  Lst_v.name Seqres_fieldpdb_symbol_v.name frm_smb_arp 
;;

let print ppf frm_smb_arp =
  Lst_v.print ppf Seqres_fieldpdb_symbol_v.print frm_smb_arp 
;;
