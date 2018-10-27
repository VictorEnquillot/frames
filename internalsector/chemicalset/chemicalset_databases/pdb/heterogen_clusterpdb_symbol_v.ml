(** {3 The Symbol functionnalities for a Heterogen Pack of a Pdb Entry} *)

let nam_cod = "Heterogen_clusterpdb_symbol_v";;


let name = function
  | Heterogen_clusterpdb_symbol_t.HET -> Format.sprintf "HET"
  | Heterogen_clusterpdb_symbol_t.HETNAM -> Format.sprintf "HETNAM"
  | Heterogen_clusterpdb_symbol_t.HETSYN -> Format.sprintf "HETSYN"
  | Heterogen_clusterpdb_symbol_t.FORMUL -> Format.sprintf "FORMUL"
;;
