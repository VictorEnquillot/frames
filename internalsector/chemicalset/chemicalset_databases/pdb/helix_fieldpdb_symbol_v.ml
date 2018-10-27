(** {3 The functionalities for a Symbol for a Field in a HELIX Record of a Pdb file.} *)


let string_of_helix_fieldpdb_symbol = function
  | Helix_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Helix_fieldpdb_symbol_t.Helix_serial_number -> "Helix_serial_number"
  | Helix_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Helix_fieldpdb_symbol_t.Helix_id -> "Helix_id"
  | Helix_fieldpdb_symbol_t.Helix_initial_residue_name -> "Helix_initial_residue_name"
  | Helix_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Helix_fieldpdb_symbol_t.Helix_initial_chain_id -> "Helix_initial_chain_id"
  | Helix_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Helix_fieldpdb_symbol_t.Helix_initial_residue_sequence_number -> "Helix_initial_residue_sequence_number"
  | Helix_fieldpdb_symbol_t.Helix_initial_residue_insertion_code -> "Helix_initial_residue_insertion_code"
  | Helix_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Helix_fieldpdb_symbol_t.Helix_final_residue_name -> "Helix_final_residue_name"
  | Helix_fieldpdb_symbol_t.Empty_6 -> "Empty_6"
  | Helix_fieldpdb_symbol_t.Helix_final_chain_id -> "Helix_final_chain_id"
  | Helix_fieldpdb_symbol_t.Empty_7 -> "Empty_7"
  | Helix_fieldpdb_symbol_t.Helix_final_residue_sequence_number -> "Helix_final_residue_sequence_number"
  | Helix_fieldpdb_symbol_t.Helix_final_residue_insertion_code -> "Helix_final_residue_insertion_code"
  | Helix_fieldpdb_symbol_t.Helix_class -> "Helix_class"
  | Helix_fieldpdb_symbol_t.Empty_8 -> "Empty_8"
  | Helix_fieldpdb_symbol_t.Helix_length -> "Helix_length"
  | Helix_fieldpdb_symbol_t.Empty_9 -> "Empty_9"
;;

(** {6 Abbreviating.} *)

let helix_serial_number = Helix_fieldpdb_symbol_t.Helix_serial_number;;
let helix_id = Helix_fieldpdb_symbol_t.Helix_id;;
let helix_initial_residue_name = Helix_fieldpdb_symbol_t.Helix_initial_residue_name;;
let helix_initial_chain_id = Helix_fieldpdb_symbol_t.Helix_initial_chain_id;;
let helix_initial_residue_sequence_number = Helix_fieldpdb_symbol_t.Helix_initial_residue_sequence_number;;
let helix_initial_residue_insertion_code = Helix_fieldpdb_symbol_t.Helix_initial_residue_insertion_code;;
let helix_final_residue_name = Helix_fieldpdb_symbol_t.Helix_final_residue_name;;
let helix_final_chain_id = Helix_fieldpdb_symbol_t.Helix_final_chain_id;;
let helix_final_residue_sequence_number = Helix_fieldpdb_symbol_t.Helix_final_residue_sequence_number;;
let helix_final_residue_insertion_code = Helix_fieldpdb_symbol_t.Helix_final_residue_insertion_code;;
let helix_class = Helix_fieldpdb_symbol_t.Helix_class;;
let helix_length = Helix_fieldpdb_symbol_t.Helix_length;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_helix_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_helix_fieldpdb_symbol smb)
;;
