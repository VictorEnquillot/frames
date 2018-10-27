(** {3 The functionalities for a Symbol for a Field in a SHEET Record of a Pdb file.} *)


let string_of_sheet_fieldpdb_symbol = function
  | Sheet_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Sheet_fieldpdb_symbol_t.Sheet_strand_number -> "Sheet_strand_number"
  | Sheet_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Sheet_fieldpdb_symbol_t.Sheet_id -> "Sheet_id"
  | Sheet_fieldpdb_symbol_t.Sheet_strand_count -> "Sheet_strand_count"
  | Sheet_fieldpdb_symbol_t.Sheet_initial_residue_name -> "Sheet_initial_residue_name"
  | Sheet_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Sheet_fieldpdb_symbol_t.Sheet_initial_residue_chain_id -> "Sheet_initial_residue_chain_id"
  | Sheet_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Sheet_fieldpdb_symbol_t.Sheet_initial_residue_sequence_number -> "Sheet_initial_residue_sequence_number"
  | Sheet_fieldpdb_symbol_t.Sheet_initial_residue_insertion_code -> "Sheet_initial_residue_insertion_code"
  | Sheet_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Sheet_fieldpdb_symbol_t.Sheet_final_residue_name -> "Sheet_final_residue_name"
  | Sheet_fieldpdb_symbol_t.Empty_6 -> "Empty_6"
  | Sheet_fieldpdb_symbol_t.Sheet_final_residue_chain_id -> "Sheet_final_residue_chain_id"
  | Sheet_fieldpdb_symbol_t.Empty_7 -> "Empty_7"
  | Sheet_fieldpdb_symbol_t.Sheet_final_residue_sequence_number -> "Sheet_final_residue_sequence_number"
  | Sheet_fieldpdb_symbol_t.Sheet_final_residue_insertion_code -> "Sheet_final_residue_insertion_code"
  | Sheet_fieldpdb_symbol_t.Sheet_sense -> "Sheet_sense"
  | Sheet_fieldpdb_symbol_t.Empty_8 -> "Empty_8"
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_atom_name -> "Sheet_current_strand_atom_name"
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_name -> "Sheet_current_strand_residue_name"
  | Sheet_fieldpdb_symbol_t.Empty_9 -> "Empty_9"
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_chain_id -> "Sheet_current_strand_chain_id"
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_sequence_number -> "Sheet_current_strand_residue_sequence_number"
  | Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_inserion_code -> "Sheet_current_strand_residue_inserion_code"
  | Sheet_fieldpdb_symbol_t.Empty_10 -> "Empty_10"
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_atom_name -> "Sheet_previous_strand_atom_name"
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_name -> "Sheet_previous_strand_residue_name"
  | Sheet_fieldpdb_symbol_t.Empty_11 -> "Empty_11"
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_chain_id -> "Sheet_previous_strand_chain_id"
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_sequence_number -> "Sheet_previous_strand_residue_sequence_number"
  | Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_inserion_code -> "Sheet_previous_strand_residue_inserion_code"
  | Sheet_fieldpdb_symbol_t.Empty_12 -> "Empty_12"
;;

(** {6 Abbreviating.} *)

let sheet_strand_number = Sheet_fieldpdb_symbol_t.Sheet_strand_number;;
let sheet_id = Sheet_fieldpdb_symbol_t.Sheet_id;;
let sheet_strand_count = Sheet_fieldpdb_symbol_t.Sheet_strand_count;;
let sheet_initial_residue_name = Sheet_fieldpdb_symbol_t.Sheet_initial_residue_name;;
let sheet_initial_residue_chain_id = Sheet_fieldpdb_symbol_t.Sheet_initial_residue_chain_id;;
let sheet_initial_residue_sequence_number = Sheet_fieldpdb_symbol_t.Sheet_initial_residue_sequence_number;;
let sheet_initial_residue_insertion_code = Sheet_fieldpdb_symbol_t.Sheet_initial_residue_insertion_code;;
let sheet_final_residue_name = Sheet_fieldpdb_symbol_t.Sheet_final_residue_name;;
let sheet_final_residue_chain_id = Sheet_fieldpdb_symbol_t.Sheet_final_residue_chain_id;;
let sheet_final_residue_sequence_number = Sheet_fieldpdb_symbol_t.Sheet_final_residue_sequence_number;;
let sheet_final_residue_insertion_code = Sheet_fieldpdb_symbol_t.Sheet_final_residue_insertion_code;;
let sheet_sense = Sheet_fieldpdb_symbol_t.Sheet_sense;;
let sheet_current_strand_atom_name = Sheet_fieldpdb_symbol_t.Sheet_current_strand_atom_name;;
let sheet_current_strand_residue_name = Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_name;;
let sheet_current_strand_chain_id = Sheet_fieldpdb_symbol_t.Sheet_current_strand_chain_id;;
let sheet_current_strand_residue_sequence_number = Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_sequence_number;;
let sheet_current_strand_residue_inserion_code = Sheet_fieldpdb_symbol_t.Sheet_current_strand_residue_inserion_code;;
let sheet_previous_strand_atom_name = Sheet_fieldpdb_symbol_t.Sheet_previous_strand_atom_name;;
let sheet_previous_strand_residue_name = Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_name;;
let sheet_previous_strand_chain_id = Sheet_fieldpdb_symbol_t.Sheet_previous_strand_chain_id;;
let sheet_previous_strand_residue_sequence_number = Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_sequence_number;;
let sheet_previous_strand_residue_inserion_code = Sheet_fieldpdb_symbol_t.Sheet_previous_strand_residue_inserion_code;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_sheet_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_sheet_fieldpdb_symbol smb)
;;
