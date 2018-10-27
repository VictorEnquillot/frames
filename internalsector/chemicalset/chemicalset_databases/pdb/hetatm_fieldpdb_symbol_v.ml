(** {3 The functionalities for a Symbol for a Field in a HETATM Record of a Pdb file.} *)


let string_of_hetatm_fieldpdb_symbol = function
  | Hetatm_fieldpdb_symbol_t.Hetatm_serial_number -> "Hetatm_serial_number"
  | Hetatm_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Hetatm_fieldpdb_symbol_t.Hetatm_name -> "Hetatm_symbol"
  | Hetatm_fieldpdb_symbol_t.Hetatm_alternate_location_id -> "Hetatm_alternate_location_id"
  | Hetatm_fieldpdb_symbol_t.Hetatm_molecule_name -> "Hetatm_molecule_name"
  | Hetatm_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Hetatm_fieldpdb_symbol_t.Hetatm_chain_id -> "Hetatm_chain_id"
  | Hetatm_fieldpdb_symbol_t.Hetatm_molecule_number -> "Hetatm_molecule_number"
  | Hetatm_fieldpdb_symbol_t.Hetatm_insertion_code -> "Hetatm_insertion_code"
  | Hetatm_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Hetatm_fieldpdb_symbol_t.Hetatm_x -> "Hetatm_x"
  | Hetatm_fieldpdb_symbol_t.Hetatm_y -> "Hetatm_y"
  | Hetatm_fieldpdb_symbol_t.Hetatm_z -> "Hetatm_z"
  | Hetatm_fieldpdb_symbol_t.Hetatm_occupancy -> "Hetatm_occupancy"
  | Hetatm_fieldpdb_symbol_t.Hetatm_b_factor -> "Hetatm_b_factor"
  | Hetatm_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Hetatm_fieldpdb_symbol_t.Hetatam_element_symbol -> "Hetatam_element_symbol"
  | Hetatm_fieldpdb_symbol_t.Hetatm_charge -> "Hetatm_charge"
;;

(** {6 Abbreviating.} *)

let hetatm_serial_number = Hetatm_fieldpdb_symbol_t.Hetatm_serial_number;;
let hetatm_symbol = Hetatm_fieldpdb_symbol_t.Hetatm_name;;
let hetatm_alternate_location_id = Hetatm_fieldpdb_symbol_t.Hetatm_alternate_location_id;;
let hetatm_residue_name = Hetatm_fieldpdb_symbol_t.Hetatm_molecule_name;;
let hetatm_chain_id = Hetatm_fieldpdb_symbol_t.Hetatm_chain_id;;
let hetatm_residue_sequence_number = Hetatm_fieldpdb_symbol_t.Hetatm_molecule_number;;
let hetatm_insertion_code = Hetatm_fieldpdb_symbol_t.Hetatm_insertion_code;;
let hetatm_x = Hetatm_fieldpdb_symbol_t.Hetatm_x;;
let hetatm_y = Hetatm_fieldpdb_symbol_t.Hetatm_y;;
let hetatm_z = Hetatm_fieldpdb_symbol_t.Hetatm_z;;
let hetatm_occupancy = Hetatm_fieldpdb_symbol_t.Hetatm_occupancy;;
let hetatm_b_factor = Hetatm_fieldpdb_symbol_t.Hetatm_b_factor;;
let hetatam_element_symbol = Hetatm_fieldpdb_symbol_t.Hetatam_element_symbol;;
let hetatm_charge = Hetatm_fieldpdb_symbol_t.Hetatm_charge;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_hetatm_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_hetatm_fieldpdb_symbol smb)
;;
