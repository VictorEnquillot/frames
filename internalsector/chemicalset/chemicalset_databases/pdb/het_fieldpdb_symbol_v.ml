(** {3 The functionalities for a Symbol for a Field in a HET Record of a Pdb file.} *)


let string_of_het_fieldpdb_symbol = function
  | Het_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Het_fieldpdb_symbol_t.Het_id -> "Het_id"
  | Het_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Het_fieldpdb_symbol_t.Het_chain_id -> "Het_chain_id"
  | Het_fieldpdb_symbol_t.Het_sequence_number -> "Het_sequence_number"
  | Het_fieldpdb_symbol_t.Het_insertion_code -> "Het_insertion_code"
  | Het_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Het_fieldpdb_symbol_t.Het_HETATM_record_number -> "Het_HETATM_record_number"
  | Het_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Het_fieldpdb_symbol_t.Het_description -> "Het_description"
  | Het_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
;;

(** {6 Abbreviating.} *)

let het_id = Het_fieldpdb_symbol_t.Het_id;;
let het_chain_id = Het_fieldpdb_symbol_t.Het_chain_id;;
let het_sequence_number = Het_fieldpdb_symbol_t.Het_sequence_number;;
let het_insertion_code = Het_fieldpdb_symbol_t.Het_insertion_code;;
let het_hetatm_record_number = Het_fieldpdb_symbol_t.Het_HETATM_record_number;;
let het_description = Het_fieldpdb_symbol_t.Het_description;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_het_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_het_fieldpdb_symbol smb)
;;
