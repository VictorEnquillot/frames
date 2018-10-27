(** {3 The Symbol functionnalities for a Connectivity_annotations Pack of a Pdb Entry} *)

let nam_cod = "Connectivity_annotations_clusterpdb_symbol_v";;


let name = function
  | Connectivity_annotations_clusterpdb_symbol_t.SSBOND -> Format.sprintf "SSBOND"
  | Connectivity_annotations_clusterpdb_symbol_t.LINK -> Format.sprintf "LINK"
  | Connectivity_annotations_clusterpdb_symbol_t.CISPEP -> Format.sprintf "CISPEP"
;;
