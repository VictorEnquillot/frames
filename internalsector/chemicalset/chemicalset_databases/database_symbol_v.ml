(** {3 The Symbols to define a Database for Molecules.} *)

(** {6 Modules.} *)


let name = function
  | Database_symbol_t.Pdb -> Format.sprintf "%s" "Pdb"
;;

let print ppf = function
  | Database_symbol_t.Pdb -> Format.fprintf ppf "%s" "Pdb"
;;

