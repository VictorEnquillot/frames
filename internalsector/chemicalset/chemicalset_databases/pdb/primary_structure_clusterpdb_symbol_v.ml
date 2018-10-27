(** {3 The Symbol functionnalities for a Primary_structure Pack of a Pdb Entry} *)

let nam_cod = "Primary_structure_clusterpdb_symbol_v";;


let name = function
  | Primary_structure_clusterpdb_symbol_t.DBREF -> Format.sprintf "DBREF"
  | Primary_structure_clusterpdb_symbol_t.DBREF1 -> Format.sprintf "DBREF1"
  | Primary_structure_clusterpdb_symbol_t.DBREF2 -> Format.sprintf "DBREF2"
  | Primary_structure_clusterpdb_symbol_t.SEQADV -> Format.sprintf "SEQADV"
  | Primary_structure_clusterpdb_symbol_t.SEQRES -> Format.sprintf "SEQRES"
  | Primary_structure_clusterpdb_symbol_t.MODRES -> Format.sprintf "MODRES"
;;
     
