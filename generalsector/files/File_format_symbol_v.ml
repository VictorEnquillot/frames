(** {3 The functionalities for a Symbol for a File Format.} *)

let nam_mod = "File_format_symbol_v";;

(** {6 Aliasing} *)


(** {6 Naming} *)

let name = function
  | File_format_symbol_t.Pdb -> Format.sprintf "Pdb"
  | File_format_symbol_t.Charmm -> Format.sprintf "Charmm"
;;

let print ppf  = function
  | File_format_symbol_t.Pdb -> Format.fprintf ppf "Pdb"
  | File_format_symbol_t.Charmm -> Format.fprintf ppf "Charmm"
;;
