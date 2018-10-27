(** {3 The functionalities for a Symbol for a Field in a LINK Record of a Pdb file.} *)


let string_of_link_fieldpdb_symbol = function
  | Link_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Link_fieldpdb_symbol_t.Link_atom_name_1 -> "Link_atom_name_1"
  | Link_fieldpdb_symbol_t.Link_alternative_location_1 -> "Link_alternative_location_1"
  | Link_fieldpdb_symbol_t.Link_residue_name_1 -> "Link_residue_name_1"
  | Link_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Link_fieldpdb_symbol_t.Link_chain_idpdb_1 -> "Link_chain_idpdb_1"
  | Link_fieldpdb_symbol_t.Link_residue_sequence_number_1 -> "Link_residue_sequence_number_1"
  | Link_fieldpdb_symbol_t.Link_insertion_code_1 -> "Link_insertion_code_1"
  | Link_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Link_fieldpdb_symbol_t.Link_atom_name_2 -> "Link_atom_name_2"
  | Link_fieldpdb_symbol_t.Link_alternative_location_2 -> "Link_alternative_location_2"
  | Link_fieldpdb_symbol_t.Link_residue_name_2 -> "Link_residue_name_2"
  | Link_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Link_fieldpdb_symbol_t.Link_chain_idpdb_2 -> "Link_chain_idpdb_2"
  | Link_fieldpdb_symbol_t.Link_residue_sequence_number_2 -> "Link_residue_sequence_number_2"
  | Link_fieldpdb_symbol_t.Link_insertion_code_2 -> "Link_insertion_code_2"
  | Link_fieldpdb_symbol_t.Empty_8 -> "Empty_8"
  | Link_fieldpdb_symbol_t.Symmetry_operator_1 -> "Symmetry_operator_1"
  | Link_fieldpdb_symbol_t.Empty_9 -> "Empty_9"
  | Link_fieldpdb_symbol_t.Symmetry_operator_2 -> "Symmetry_operator_2"
  | Link_fieldpdb_symbol_t.Empty_10 -> "Empty_10"
  | Link_fieldpdb_symbol_t.Link_length -> "Link_length"
  | Link_fieldpdb_symbol_t.Empty_11 -> "Empty_11"
;;

(** {6 Abbreviating.} *)

let link_atom_name_1 = Link_fieldpdb_symbol_t.Link_atom_name_1;;
let link_alternative_location_1 = Link_fieldpdb_symbol_t.Link_alternative_location_1;;
let link_residue_name_1 = Link_fieldpdb_symbol_t.Link_residue_name_1;;
let link_chain_idpdb_1 = Link_fieldpdb_symbol_t.Link_chain_idpdb_1;;
let link_residue_sequence_number_1 = Link_fieldpdb_symbol_t.Link_residue_sequence_number_1;;
let link_insertion_code_1 = Link_fieldpdb_symbol_t.Link_insertion_code_1;;
let link_atom_name_2 = Link_fieldpdb_symbol_t.Link_atom_name_2;;
let link_alternative_location_2 = Link_fieldpdb_symbol_t.Link_alternative_location_2;;
let link_residue_name_2 = Link_fieldpdb_symbol_t.Link_residue_name_2;;
let link_chain_idpdb_2 = Link_fieldpdb_symbol_t.Link_chain_idpdb_2;;
let link_residue_sequence_number_2 = Link_fieldpdb_symbol_t.Link_residue_sequence_number_2;;
let link_insertion_code_2 = Link_fieldpdb_symbol_t.Link_insertion_code_2;;
let symmetry_operator_1 = Link_fieldpdb_symbol_t.Symmetry_operator_1;;
let symmetry_operator_2 = Link_fieldpdb_symbol_t.Symmetry_operator_2;;
let link_length = Link_fieldpdb_symbol_t.Link_length;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_link_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_link_fieldpdb_symbol smb)
;;
