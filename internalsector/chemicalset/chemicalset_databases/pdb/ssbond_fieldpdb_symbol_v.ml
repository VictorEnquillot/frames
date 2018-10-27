(** {3 The functionalities for a Symbol for a Field in a SSBOND Record of a Pdb file.} *)


let string_of_ssbond_fieldpdb_symbol = function
  | Ssbond_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Ssbond_fieldpdb_symbol_t.Ssbond_serial_number -> "Ssbond_serial_number"
  | Ssbond_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Ssbond_fieldpdb_symbol_t.Ssbond_residue_name_1 -> "Ssbond_residue_name_1"
  | Ssbond_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Ssbond_fieldpdb_symbol_t.Ssbond_chain_idpdb_1 -> "Ssbond_chain_idpdb_1"
  | Ssbond_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Ssbond_fieldpdb_symbol_t.Ssbond_residue_sequence_number_1 -> "Ssbond_residue_sequence_number_1"
  | Ssbond_fieldpdb_symbol_t.Ssbond_insertion_code_1 -> "Ssbond_insertion_code_1"
  | Ssbond_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Ssbond_fieldpdb_symbol_t.Ssbond_residue_name_2 -> "Ssbond_residue_name_2"
  | Ssbond_fieldpdb_symbol_t.Empty_6 -> "Empty_6"
  | Ssbond_fieldpdb_symbol_t.Ssbond_chain_idpdb_2 -> "Ssbond_chain_idpdb_2"
  | Ssbond_fieldpdb_symbol_t.Empty_7 -> "Empty_7"
  | Ssbond_fieldpdb_symbol_t.Ssbond_residue_sequence_number_2 -> "Ssbond_residue_sequence_number_2"
  | Ssbond_fieldpdb_symbol_t.Ssbond_insertion_code_2 -> "Ssbond_insertion_code_2"
  | Ssbond_fieldpdb_symbol_t.Empty_8 -> "Empty_8"
  | Ssbond_fieldpdb_symbol_t.Ssbond_symmetry_operator_1 -> "Ssbond_symmetry_operator_1"
  | Ssbond_fieldpdb_symbol_t.Empty_9 -> "Empty_9"
  | Ssbond_fieldpdb_symbol_t.Ssbond_symmetry_operator_2 -> "Ssbond_symmetry_operator_2"
  | Ssbond_fieldpdb_symbol_t.Empty_10 -> "Empty_10"
  | Ssbond_fieldpdb_symbol_t.SSbond_length -> "SSbond_length"
  | Ssbond_fieldpdb_symbol_t.Empty_11 -> "Empty_11"
;;

(** {6 Abbreviating.} *)

let ssbond_serial_number = Ssbond_fieldpdb_symbol_t.Ssbond_serial_number;;
let ssbond_residue_name_1 = Ssbond_fieldpdb_symbol_t.Ssbond_residue_name_1;;
let ssbond_chain_idpdb_1 = Ssbond_fieldpdb_symbol_t.Ssbond_chain_idpdb_1;;
let ssbond_residue_sequence_number_1 = Ssbond_fieldpdb_symbol_t.Ssbond_residue_sequence_number_1;;
let ssbond_insertion_code_1 = Ssbond_fieldpdb_symbol_t.Ssbond_insertion_code_1;;
let ssbond_residue_name_2 = Ssbond_fieldpdb_symbol_t.Ssbond_residue_name_2;;
let ssbond_chain_idpdb_2 = Ssbond_fieldpdb_symbol_t.Ssbond_chain_idpdb_2;;
let ssbond_residue_sequence_number_2 = Ssbond_fieldpdb_symbol_t.Ssbond_residue_sequence_number_2;;
let ssbond_insertion_code_2 = Ssbond_fieldpdb_symbol_t.Ssbond_insertion_code_2;;
let ssbond_symmetry_operator_1 = Ssbond_fieldpdb_symbol_t.Ssbond_symmetry_operator_1;;
let ssbond_symmetry_operator_2 = Ssbond_fieldpdb_symbol_t.Ssbond_symmetry_operator_2;;
let ssbond_length = Ssbond_fieldpdb_symbol_t.SSbond_length;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_ssbond_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_ssbond_fieldpdb_symbol smb)
;;
