(** {3 The functionalities for a Symbol for a Field in a DBREF2 Record of a Pdb file.} *)


let string_of_dbref2_fieldpdb_symbol = function
  | Dbref2_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Dbref2_fieldpdb_symbol_t.Dbref2_id -> "Dbref2_id"
  | Dbref2_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Dbref2_fieldpdb_symbol_t.Dbref2_chain_id -> "Dbref2_chain_id"
  | Dbref2_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Dbref2_fieldpdb_symbol_t.Dbref2_sequence_database_accession_code -> "Dbref2_sequence_database_accession_code"
  | Dbref2_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Dbref2_fieldpdb_symbol_t.Dbref2_pdb_sequence_segment_initial_sequence_number -> "Dbref2_pdb_sequence_segment_initial_sequence_number"
  | Dbref2_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Dbref2_fieldpdb_symbol_t.Dbref2_pdb_sequence_segment_final_sequence_number -> "Dbref2_pdb_sequence_segment_final_sequence_number"
  | Dbref2_fieldpdb_symbol_t.Empty_8 -> "Empty_8"
;;

(** {6 Abbreviating.} *)

let dbref2_id = Dbref2_fieldpdb_symbol_t.Dbref2_id;;
let dbref2_chain_id = Dbref2_fieldpdb_symbol_t.Dbref2_chain_id;;
let dbref2_sequence_database_accession_code = Dbref2_fieldpdb_symbol_t.Dbref2_sequence_database_accession_code;;
let dbref2_pdb_sequence_segment_initial_sequence_number = Dbref2_fieldpdb_symbol_t.Dbref2_pdb_sequence_segment_initial_sequence_number;;
let dbref2_pdb_sequence_segment_final_sequence_number = Dbref2_fieldpdb_symbol_t.Dbref2_pdb_sequence_segment_final_sequence_number;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_dbref2_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_dbref2_fieldpdb_symbol smb)
;;
