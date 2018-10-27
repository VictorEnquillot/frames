(** {3 The functionalities for a Symbol for a Field in a HEADER Record of a Pdb file.} *)

let nam_cod = "Header_fieldpdb_symbol_v";;


let string_of_header_fieldpdb_symbol = function
  | Header_fieldpdb_symbol_t.Empty_1 -> "Empty_1"
  | Header_fieldpdb_symbol_t.Chemical_species -> "Chemical_species"
  | Header_fieldpdb_symbol_t.Deposition_date -> "Deposition_date"
  | Header_fieldpdb_symbol_t.Empty_2 -> "Empty_2"
  | Header_fieldpdb_symbol_t.PdbID -> "PdbID"
  | Header_fieldpdb_symbol_t.Empty_3 -> "Empty_3"
;;

let name smb =
  Format.sprintf "%s" (string_of_header_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_header_fieldpdb_symbol smb)
;;

let chemical_species = Header_fieldpdb_symbol_t.Chemical_species;;
let deposition_date = Header_fieldpdb_symbol_t.Deposition_date;;
let pdbid = Header_fieldpdb_symbol_t.PdbID;;
let empty_1 = Header_fieldpdb_symbol_t.Empty_1;;
let empty_2 = Header_fieldpdb_symbol_t.Empty_2;;
let empty_3 = Header_fieldpdb_symbol_t.Empty_3;;

