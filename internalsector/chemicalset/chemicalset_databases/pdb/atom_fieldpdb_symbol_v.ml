(** {3 The functionalities for a Symbol for an ATOM Field in a Record of a Pdb file.} *)

let nam_cod = "Atom_fieldpdb_symbol_v";;

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#TER}
        http://www.wwpdb.org/documentation/format32/sect9.html#TER}

TER     606      LEU A  75   
TER    1187      LEU B  75                                                     
*)


let string_of_atom_fieldpdb_symbol = function 
  | Atom_fieldpdb_symbol_t.Atom_serial_number -> "Atom_serial_number"
  | Atom_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Atom_fieldpdb_symbol_t.Atom_name -> "Atom_name"
  | Atom_fieldpdb_symbol_t.Atom_alternate_location_id -> "Atom_alternate_location_id"
  | Atom_fieldpdb_symbol_t.Atom_residue_name -> "Atom_residue_name"
  | Atom_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Atom_fieldpdb_symbol_t.Atom_chain_id -> "Atom_chain_id"
  | Atom_fieldpdb_symbol_t.Atom_residue_sequence_number -> "Atom_residue_sequence_number"
  | Atom_fieldpdb_symbol_t.Atom_insertion_code -> "Atom_insertion_code"
  | Atom_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Atom_fieldpdb_symbol_t.Atom_x -> "Atom_x"
  | Atom_fieldpdb_symbol_t.Atom_y -> "Atom_y"
  | Atom_fieldpdb_symbol_t.Atom_z -> "Atom_z"
  | Atom_fieldpdb_symbol_t.Atom_occupancy -> "Atom_occupancy"
  | Atom_fieldpdb_symbol_t.Atom_b_factor -> "Atom_b_factor"
  | Atom_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Atom_fieldpdb_symbol_t.Atom_element_symbol -> "Atom_element_symbol"
  | Atom_fieldpdb_symbol_t.Atom_charge -> "Atom_charge"
;;

let name smb =
  Format.sprintf "%s" (string_of_atom_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_atom_fieldpdb_symbol smb)
;;

let atom_serial_number = Atom_fieldpdb_symbol_t.Atom_serial_number;;
let atom_name = Atom_fieldpdb_symbol_t.Atom_name;;
let atom_alternate_location_id = Atom_fieldpdb_symbol_t.Atom_alternate_location_id;;
let atom_residue_name = Atom_fieldpdb_symbol_t.Atom_residue_name;;
let atom_chain_id = Atom_fieldpdb_symbol_t.Atom_chain_id;;
let atom_residue_sequence_number = Atom_fieldpdb_symbol_t.Atom_residue_sequence_number;;
let atom_insertion_code = Atom_fieldpdb_symbol_t.Atom_insertion_code;;
let atom_x = Atom_fieldpdb_symbol_t.Atom_x;;
let atom_y = Atom_fieldpdb_symbol_t.Atom_y;;
let atom_z = Atom_fieldpdb_symbol_t.Atom_z;;
let atom_occupancy = Atom_fieldpdb_symbol_t.Atom_occupancy;;
let atom_b_factor = Atom_fieldpdb_symbol_t.Atom_b_factor;;
let atom_element_symbol = Atom_fieldpdb_symbol_t.Atom_element_symbol;;
let atom_charge = Atom_fieldpdb_symbol_t.Atom_charge;;
