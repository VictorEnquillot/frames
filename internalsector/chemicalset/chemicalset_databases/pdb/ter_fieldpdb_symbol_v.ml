(** {3 The functionalities for a Symbol for an TER Field in a Record of a Pdb file.} *)

let nam_cod = "Ter_fieldpdb_symbol_v";;


let string_of_ter_fieldpdb_symbol = function 
  | Ter_fieldpdb_symbol_t.Ter_serial_number -> "Ter_serial_number"
  | Ter_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Ter_fieldpdb_symbol_t.Ter_residue_name -> "Ter_residue_name"
  | Ter_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Ter_fieldpdb_symbol_t.Ter_chain_id -> "Ter_chain_id"
  | Ter_fieldpdb_symbol_t.Ter_residue_sequence_number -> "Residuepdb_sequence_number"
  | Ter_fieldpdb_symbol_t.Ter_insertion_code -> "Insertion_code"
  | Ter_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
;;

let name smb =
  Format.sprintf "%s" (string_of_ter_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_ter_fieldpdb_symbol smb)
;;

let ter_serial_number = Ter_fieldpdb_symbol_t.Ter_serial_number;;
let ter_residue_name = Ter_fieldpdb_symbol_t.Ter_residue_name;;
let ter_chain_id = Ter_fieldpdb_symbol_t.Ter_chain_id;;
let ter_residue_sequence_number = Ter_fieldpdb_symbol_t.Ter_residue_sequence_number;;
let ter_insertion_code = Ter_fieldpdb_symbol_t.Ter_insertion_code;;
