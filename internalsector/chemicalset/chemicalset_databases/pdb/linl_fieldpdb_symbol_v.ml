(** {3 The functionalities for a Symbol for a Field in a LINL Record of a Pdb file.} *)


let string_of_linl_fieldpdb_symbol = function
;;

(** {6 Abbreviating.} *)


(** {6 Converting.} *)

let name smb =
  Format.sprintf "%s" (string_of_linl_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_linl_fieldpdb_symbol smb)
;;
