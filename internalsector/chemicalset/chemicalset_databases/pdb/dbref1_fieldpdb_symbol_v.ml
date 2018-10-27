(** {3 The functionalities for a Symbol for a Field in a DBREF1 Record of a Pdb file.} *)


let string_of_dbref1_fieldpdb_symbol = function
  | Dbref1_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Dbref1_fieldpdb_symbol_t.Dbref1_id -> "Dbref1_id"
  | Dbref1_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Dbref1_fieldpdb_symbol_t.Dbref1_chain_id -> "Dbref1_chain_id"
  | Dbref1_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_initial_sequence_number -> "Dbref1_pdb_sequence_segment_initial_sequence_number"
  | Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_initial_insertion_code -> "Dbref1_pdb_sequence_segment_initial_insertion_code"
  | Dbref1_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_final_sequence_number -> "Dbref1_pdb_sequence_segment_final_sequence_number"
  | Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_final_insertion_code -> "Dbref1_pdb_sequence_segment_final_insertion_code"
  | Dbref1_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Dbref1_fieldpdb_symbol_t.Dbref1_sequence_database_name -> "Dbref1_sequence_database_name"
  | Dbref1_fieldpdb_symbol_t.Empty_6 -> "Empty_6"
  | Dbref1_fieldpdb_symbol_t.Dbref1_sequence_database_identification_code -> "Dbref1_sequence_database_identification_code"
  | Dbref1_fieldpdb_symbol_t.Empty_7 -> "Empty_7"
;;

(** {6 Abbreviating.} *)

let dbref1_id = Dbref1_fieldpdb_symbol_t.Dbref1_id;;
let dbref1_chain_id = Dbref1_fieldpdb_symbol_t.Dbref1_chain_id;;
let dbref1_pdb_sequence_segment_initial_sequence_number = Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_initial_sequence_number;;
let dbref1_pdb_sequence_segment_initial_insertion_code = Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_initial_insertion_code;;
let dbref1_pdb_sequence_segment_final_sequence_number = Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_final_sequence_number;;
let dbref1_pdb_sequence_segment_final_insertion_code = Dbref1_fieldpdb_symbol_t.Dbref1_pdb_sequence_segment_final_insertion_code;;
let dbref1_sequence_database_name = Dbref1_fieldpdb_symbol_t.Dbref1_sequence_database_name;;
let dbref1_sequence_database_identification_code = Dbref1_fieldpdb_symbol_t.Dbref1_sequence_database_identification_code;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_dbref1_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_dbref1_fieldpdb_symbol smb)
;;
