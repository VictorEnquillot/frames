(** {3 The functionalities for a Symbol for a Field in a CISPEP Record of a Pdb file.} *)


let string_of_cispep_fieldpdb_symbol = function
  | Cispep_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Cispep_fieldpdb_symbol_t.Cispep_serial_number -> "Cispep_serial_number"
  | Cispep_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Cispep_fieldpdb_symbol_t.Cispep_residue_name_1 -> "Cispep_residue_name_1"
  | Cispep_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Cispep_fieldpdb_symbol_t.Cispep_chain_idpdb_1 -> "Cispep_chain_idpdb_1"
  | Cispep_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Cispep_fieldpdb_symbol_t.Cispep_residue_sequence_number_1 -> "Cispep_residue_sequence_number_1"
  | Cispep_fieldpdb_symbol_t.Cispep_insertion_code_1 -> "Cispep_insertion_code_1"
  | Cispep_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Cispep_fieldpdb_symbol_t.Cispep_residue_name_2 -> "Cispep_residue_name_2"
  | Cispep_fieldpdb_symbol_t.Empty_6 -> "Empty_6"
  | Cispep_fieldpdb_symbol_t.Cispep_chain_idpdb_2 -> "Cispep_chain_idpdb_2"
  | Cispep_fieldpdb_symbol_t.Empty_7 -> "Empty_7"
  | Cispep_fieldpdb_symbol_t.Cispep_residue_sequence_number_2 -> "Cispep_residue_sequence_number_2"
  | Cispep_fieldpdb_symbol_t.Cispep_insertion_code_2 -> "Cispep_insertion_code_2"
  | Cispep_fieldpdb_symbol_t.Empty_8 -> "Empty_8"
  | Cispep_fieldpdb_symbol_t.Cispep_model_number -> "Cispep_model_number"
  | Cispep_fieldpdb_symbol_t.Empty_10 -> "Empty_10"
  | Cispep_fieldpdb_symbol_t.Cispep_angle_degree -> "Cispep_angle_degree"
  | Cispep_fieldpdb_symbol_t.Empty_11 -> "Empty_11"
;;

(** {6 Abbreviating.} *)

let cispep_serial_number = Cispep_fieldpdb_symbol_t.Cispep_serial_number;;
let cispep_residue_name_1 = Cispep_fieldpdb_symbol_t.Cispep_residue_name_1;;
let cispep_chain_idpdb_1 = Cispep_fieldpdb_symbol_t.Cispep_chain_idpdb_1;;
let cispep_residue_sequence_number_1 = Cispep_fieldpdb_symbol_t.Cispep_residue_sequence_number_1;;
let cispep_insertion_code_1 = Cispep_fieldpdb_symbol_t.Cispep_insertion_code_1;;
let cispep_residue_name_2 = Cispep_fieldpdb_symbol_t.Cispep_residue_name_2;;
let cispep_chain_idpdb_2 = Cispep_fieldpdb_symbol_t.Cispep_chain_idpdb_2;;
let cispep_residue_sequence_number_2 = Cispep_fieldpdb_symbol_t.Cispep_residue_sequence_number_2;;
let cispep_insertion_code_2 = Cispep_fieldpdb_symbol_t.Cispep_insertion_code_2;;
let cispep_model_number = Cispep_fieldpdb_symbol_t.Cispep_model_number;;
let cispep_angle_degree = Cispep_fieldpdb_symbol_t.Cispep_angle_degree;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_cispep_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_cispep_fieldpdb_symbol smb)
;;
