(** {3 The functionalities for a Symbol for a Field in a MODRES Record of a Pdb file.} *)


let string_of_modres_fieldpdb_symbol = function
  | Modres_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Modres_fieldpdb_symbol_t.Modres_id -> "Modres_id"
  | Modres_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Modres_fieldpdb_symbol_t.Modres_residue_name -> "Modres_residue_name"
  | Modres_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Modres_fieldpdb_symbol_t.Modres_chain_id -> "Modres_chain_id"
  | Modres_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Modres_fieldpdb_symbol_t.Modres_sequence_number -> "Modres_sequence_number"
  | Modres_fieldpdb_symbol_t.Modres_insertion_code -> "Modres_insertion_code"
  | Modres_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Modres_fieldpdb_symbol_t.Modres_standard_residue_name -> "Modres_standard_residue_name"
  | Modres_fieldpdb_symbol_t.Empty_6 -> "Empty_6"
  | Modres_fieldpdb_symbol_t.Modres_description -> "Modres_description"
  | Modres_fieldpdb_symbol_t.Empty_7 -> "Empty_7"
;;

(** {6 Abbreviating.} *)

let modres_id = Modres_fieldpdb_symbol_t.Modres_id;;
let modres_residue_name = Modres_fieldpdb_symbol_t.Modres_residue_name;;
let modres_chain_id = Modres_fieldpdb_symbol_t.Modres_chain_id;;
let modres_sequence_number = Modres_fieldpdb_symbol_t.Modres_sequence_number;;
let modres_insertion_code = Modres_fieldpdb_symbol_t.Modres_insertion_code;;
let modres_standard_residue_name = Modres_fieldpdb_symbol_t.Modres_standard_residue_name;;
let modres_description = Modres_fieldpdb_symbol_t.Modres_description;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_modres_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_modres_fieldpdb_symbol smb)
;;
