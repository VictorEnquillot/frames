(** {3 The functionalities for a Symbol for a Field in a SEQRES Record of a Pdb file.} *)


let string_of_seqres_fieldpdb_symbol = function
  | Seqres_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Seqres_fieldpdb_symbol_t.Seqres_record_serial_number -> "Seqres_record_serial_number"
  | Seqres_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Seqres_fieldpdb_symbol_t.Seqres_chain_id -> "Seqres_chain_id"
  | Seqres_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Seqres_fieldpdb_symbol_t.Seqres_sequence_length -> "Seqres_sequence_length"
  | Seqres_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Seqres_fieldpdb_symbol_t.Seqres_thirteen_names -> "Seqres_thirteen_names"
  | Seqres_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
;;

(** {6 Abbreviating.} *)

let seqres_record_serial_number = Seqres_fieldpdb_symbol_t.Seqres_record_serial_number;;
let seqres_chain_id = Seqres_fieldpdb_symbol_t.Seqres_chain_id;;
let seqres_sequence_length = Seqres_fieldpdb_symbol_t.Seqres_sequence_length;;
let seqres_thirteen_names = Seqres_fieldpdb_symbol_t.Seqres_thirteen_names;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_seqres_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_seqres_fieldpdb_symbol smb)
;;
