(** {3 The functionalities for a Symbol for a Field in a ANISOU Record of a Pdb file.} *)


let string_of_anisou_fieldpdb_symbol = function
  | Anisou_fieldpdb_symbol_t.Anisou_atom_serial_number -> "Anisou_atom_serial_number"
  | Anisou_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Anisou_fieldpdb_symbol_t.Anisou_atom_name -> "Anisou_atom_name"
  | Anisou_fieldpdb_symbol_t.Anisou_atom_alternate_location_id -> "Anisou_atom_alternate_location_id"
  | Anisou_fieldpdb_symbol_t.Anisou_residue_symbol -> "Anisou_residue_symbol"
  | Anisou_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Anisou_fieldpdb_symbol_t.Anisou_chain_id -> "Anisou_chain_id"
  | Anisou_fieldpdb_symbol_t.Anisou_residue_sequence_number -> "Anisou_residue_sequence_number"
  | Anisou_fieldpdb_symbol_t.Anisou_insertion_code -> "Anisou_insertion_code"
  | Anisou_fieldpdb_symbol_t.Anisou_u_1_1 -> "Anisou_u_1_1"
  | Anisou_fieldpdb_symbol_t.Anisou_u_2_2 -> "Anisou_u_2_2"
  | Anisou_fieldpdb_symbol_t.Anisou_u_3_3 -> "Anisou_u_3_3"
  | Anisou_fieldpdb_symbol_t.Anisou_u_1_2 -> "Anisou_u_1_2"
  | Anisou_fieldpdb_symbol_t.Anisou_u_1_3 -> "Anisou_u_1_3"
  | Anisou_fieldpdb_symbol_t.Anisou_u_2_3 -> "Anisou_u_2_3"
  | Anisou_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Anisou_fieldpdb_symbol_t.Anisou_element_symbol -> "Anisou_element_symbol"
  | Anisou_fieldpdb_symbol_t.Anisou_atom_charge -> "Anisou_atom_charge"
;;

(** {6 Abbreviating.} *)

let anisou_atom_serial_number = Anisou_fieldpdb_symbol_t.Anisou_atom_serial_number;;
let anisou_atom_name = Anisou_fieldpdb_symbol_t.Anisou_atom_name;;
let anisou_atom_alternate_location_id = Anisou_fieldpdb_symbol_t.Anisou_atom_alternate_location_id;;
let anisou_residue_symbol = Anisou_fieldpdb_symbol_t.Anisou_residue_symbol;;
let anisou_chain_id = Anisou_fieldpdb_symbol_t.Anisou_chain_id;;
let anisou_residue_sequence_number = Anisou_fieldpdb_symbol_t.Anisou_residue_sequence_number;;
let anisou_insertion_code = Anisou_fieldpdb_symbol_t.Anisou_insertion_code;;
let anisou_u_1_1 = Anisou_fieldpdb_symbol_t.Anisou_u_1_1;;
let anisou_u_2_2 = Anisou_fieldpdb_symbol_t.Anisou_u_2_2;;
let anisou_u_3_3 = Anisou_fieldpdb_symbol_t.Anisou_u_3_3;;
let anisou_u_1_2 = Anisou_fieldpdb_symbol_t.Anisou_u_1_2;;
let anisou_u_1_3 = Anisou_fieldpdb_symbol_t.Anisou_u_1_3;;
let anisou_u_2_3 = Anisou_fieldpdb_symbol_t.Anisou_u_2_3;;
let anisou_element_symbol = Anisou_fieldpdb_symbol_t.Anisou_element_symbol;;
let anisou_atom_charge = Anisou_fieldpdb_symbol_t.Anisou_atom_charge;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_anisou_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_anisou_fieldpdb_symbol smb)
;;
