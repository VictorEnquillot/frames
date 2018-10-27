(** {3 The functionalities for a Symbol Formula for an HEADER field in a Pdb file record.} *)


let make () =
  [
  Header_fieldpdb_symbol_t.Empty_1;               (*  7-10 *)
  Header_fieldpdb_symbol_t.Chemical_species;      (* 11-50 *)
  Header_fieldpdb_symbol_t.Deposition_date;       (* 51-59 *)
  Header_fieldpdb_symbol_t.Empty_2;               (* 60-62 *)
  Header_fieldpdb_symbol_t.PdbID;                 (* 63-66 *)
  Header_fieldpdb_symbol_t.Empty_3;
 ]
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

let name frm_smb_hrp =
  List_v.name_with_separator Header_fieldpdb_symbol_v.name ":" frm_smb_hrp 
;;

let print ppf frm_smb_hrp =
  List_v.print Header_fieldpdb_symbol_v.print ppf frm_smb_hrp 
;;
