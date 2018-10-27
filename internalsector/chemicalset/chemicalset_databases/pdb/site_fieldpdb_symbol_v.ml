(** {3 The functionalities for a Symbol for a Field in a SITE Record of a Pdb file.} *)


let string_of_site_fieldpdb_symbol = function
  | Site_fieldpdb_symbol_t.Site_sequence_number -> "Site_sequence_number"
  | Site_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Site_fieldpdb_symbol_t.Site_name -> "Site_name"
  | Site_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Site_fieldpdb_symbol_t.Site_residue_count -> "Site_residue_count"
  | Site_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
  | Site_fieldpdb_symbol_t.Site_first_residue_name -> "Site_first_residue_name"
  | Site_fieldpdb_symbol_t.Empty_4 -> "Empty_4"
  | Site_fieldpdb_symbol_t.Site_first_residue_chain_id -> "Site_first_residue_chain_id"
  | Site_fieldpdb_symbol_t.Site_first_residue_sequence_number -> "Site_first_residue_sequence_number"
  | Site_fieldpdb_symbol_t.Site_first_residue_insertion_code -> "Site_first_residue_insertion_code"
  | Site_fieldpdb_symbol_t.Empty_5 -> "Empty_5"
  | Site_fieldpdb_symbol_t.Site_second_residue_name -> "Site_second_residue_name"
  | Site_fieldpdb_symbol_t.Empty_6 -> "Empty_6"
  | Site_fieldpdb_symbol_t.Site_second_residue_chain_id -> "Site_second_residue_chain_id"
  | Site_fieldpdb_symbol_t.Site_second_residue_sequence_number -> "Site_second_residue_sequence_number"
  | Site_fieldpdb_symbol_t.Site_second_residue_insertion_code -> "Site_second_residue_insertion_code"
  | Site_fieldpdb_symbol_t.Empty_7 -> "Empty_7"
  | Site_fieldpdb_symbol_t.Site_third_residue_name -> "Site_third_residue_name"
  | Site_fieldpdb_symbol_t.Empty_8 -> "Empty_8"
  | Site_fieldpdb_symbol_t.Site_third_residue_chain_id -> "Site_third_residue_chain_id"
  | Site_fieldpdb_symbol_t.Site_third_residue_sequence_number -> "Site_third_residue_sequence_number"
  | Site_fieldpdb_symbol_t.Site_third_residue_insertion_code -> "Site_third_residue_insertion_code"
  | Site_fieldpdb_symbol_t.Empty_9 -> "Empty_9"
  | Site_fieldpdb_symbol_t.Site_fourth_residue_name -> "Site_fourth_residue_name"
  | Site_fieldpdb_symbol_t.Empty_10 -> "Empty_10"
  | Site_fieldpdb_symbol_t.Site_fourth_residue_chain_id -> "Site_fourth_residue_chain_id"
  | Site_fieldpdb_symbol_t.Site_fourth_residue_sequence_number -> "Site_fourth_residue_sequence_number"
  | Site_fieldpdb_symbol_t.Site_fourth_residue_insertion_code -> "Site_fourth_residue_insertion_code"
  | Site_fieldpdb_symbol_t.Empty_11 -> "Empty_11"
;;

(** {6 Abbreviating.} *)

let site_sequence_number = Site_fieldpdb_symbol_t.Site_sequence_number;;
let site_name = Site_fieldpdb_symbol_t.Site_name;;
let site_residue_count = Site_fieldpdb_symbol_t.Site_residue_count;;
let site_first_residue_name = Site_fieldpdb_symbol_t.Site_first_residue_name;;
let site_first_residue_chain_id = Site_fieldpdb_symbol_t.Site_first_residue_chain_id;;
let site_first_residue_sequence_number = Site_fieldpdb_symbol_t.Site_first_residue_sequence_number;;
let site_first_residue_insertion_code = Site_fieldpdb_symbol_t.Site_first_residue_insertion_code;;
let site_second_residue_name = Site_fieldpdb_symbol_t.Site_second_residue_name;;
let site_second_residue_chain_id = Site_fieldpdb_symbol_t.Site_second_residue_chain_id;;
let site_second_residue_sequence_number = Site_fieldpdb_symbol_t.Site_second_residue_sequence_number;;
let site_second_residue_insertion_code = Site_fieldpdb_symbol_t.Site_second_residue_insertion_code;;
let site_third_residue_name = Site_fieldpdb_symbol_t.Site_third_residue_name;;
let site_third_residue_chain_id = Site_fieldpdb_symbol_t.Site_third_residue_chain_id;;
let site_third_residue_sequence_number = Site_fieldpdb_symbol_t.Site_third_residue_sequence_number;;
let site_third_residue_insertion_code = Site_fieldpdb_symbol_t.Site_third_residue_insertion_code;;
let site_fourth_residue_name = Site_fieldpdb_symbol_t.Site_fourth_residue_name;;
let site_fourth_residue_chain_id = Site_fieldpdb_symbol_t.Site_fourth_residue_chain_id;;
let site_fourth_residue_sequence_number = Site_fieldpdb_symbol_t.Site_fourth_residue_sequence_number;;
let site_fourth_residue_insertion_code = Site_fieldpdb_symbol_t.Site_fourth_residue_insertion_code;;

(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_site_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_site_fieldpdb_symbol smb)
;;
