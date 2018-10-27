(** {3 The functionalities for a Symbol Formula for an TER field in a Pdb file record.} *)


let make () =
  [
   Ter_fieldpdb_symbol_v.ter_serial_number;
   Ter_fieldpdb_symbol_v.empty_1;
   Ter_fieldpdb_symbol_v.residue_name;
   Ter_fieldpdb_symbol_v.empty_2;
   Ter_fieldpdb_symbol_v.ter_chain_id;
   Ter_fieldpdb_symbol_v.residue_sequence_number;
   Ter_fieldpdb_symbol_v.insertion_code;
   Ter_fieldpdb_symbol_v.empty_3;
 ]
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

let name frm_smb_arp =
  List_v.name Ter_fieldpdb_symbol_v.name frm_smb_arp 
;;

let print ppf frm_smb_arp =
  List_v.print Ter_fieldpdb_symbol_v.print ppf frm_smb_arp 
;;
