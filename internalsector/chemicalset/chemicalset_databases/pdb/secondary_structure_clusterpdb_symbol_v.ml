(** {3 The Symbol functionnalities for a Secondary_structure Pack of a Pdb Entry} *)

let nam_cod = "Secondary_structure_clusterpdb_symbol_v";;


let name = function
  | Secondary_structure_clusterpdb_symbol_t.HELIX -> Format.sprintf "HELIX"
  | Secondary_structure_clusterpdb_symbol_t.SHEET -> Format.sprintf "SHEET"
;;

