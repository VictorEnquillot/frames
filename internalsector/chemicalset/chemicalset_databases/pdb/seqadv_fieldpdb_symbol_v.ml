(** {3 The functionalities for a Symbol for a Field in a SEQADV Record of a Pdb file.} *)


let string_of_seqadv_fieldpdb_symbol = function
  | Seqadv_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Seqadv_fieldpdb_symbol_t.Seqadv_id -> "Seqadv_id"
  | Seqadv_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Seqadv_fieldpdb_symbol_t.Seqadv_residue_name -> "Seqadv_residue_name"
  | Seqadv_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Seqadv_fieldpdb_symbol_t.Seqadv_chain_id -> "Seqadv_chain_id"
  | Seqadv_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Seqadv_fieldpdb_symbol_t.Seqadv_sequence_number -> "Seqadv_sequence_number"
  | Seqadv_fieldpdb_symbol_t.Seqadv_insertion_code -> "Seqadv_insertion_code"
  | Seqadv_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Seqadv_fieldpdb_symbol_t.Seqadv_database -> "Seqadv_database"
  | Seqadv_fieldpdb_symbol_t.Empty_6 -> "Empty_6"
  | Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_accession_number -> "Seqadv_sequence_databse_accession_number"
  | Seqadv_fieldpdb_symbol_t.Empty_7 -> "Empty_7"
  | Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_residue_name -> "Seqadv_sequence_databse_residue_name"
  | Seqadv_fieldpdb_symbol_t.Empty_8 -> "Empty_8"
  | Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_sequence_number -> "Seqadv_sequence_databse_sequence_number"
  | Seqadv_fieldpdb_symbol_t.Empty_9 -> "Empty_9"
  | Seqadv_fieldpdb_symbol_t.Seqadv_conflict_description -> "Seqadv_conflict_description"
  | Seqadv_fieldpdb_symbol_t.Empty_10 -> "Empty_10"
;;

(** {6 Abbreviating.} *)

let seqadv_id = Seqadv_fieldpdb_symbol_t.Seqadv_id;;
let seqadv_residue_name = Seqadv_fieldpdb_symbol_t.Seqadv_residue_name;;
let seqadv_chain_id = Seqadv_fieldpdb_symbol_t.Seqadv_chain_id;;
let seqadv_sequence_number = Seqadv_fieldpdb_symbol_t.Seqadv_sequence_number;;
let seqadv_insertion_code = Seqadv_fieldpdb_symbol_t.Seqadv_insertion_code;;
let seqadv_database = Seqadv_fieldpdb_symbol_t.Seqadv_database;;
let seqadv_sequence_databse_accession_number = Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_accession_number;;
let seqadv_sequence_databse_residue_name = Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_residue_name;;
let seqadv_sequence_databse_sequence_number = Seqadv_fieldpdb_symbol_t.Seqadv_sequence_databse_sequence_number;;
let seqadv_conflict_description = Seqadv_fieldpdb_symbol_t.Seqadv_conflict_description;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_seqadv_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_seqadv_fieldpdb_symbol smb)
;;
