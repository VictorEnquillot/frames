(** {3 The Symbol functionnalities for a Coordinate Pack of a Pdb Entry} *)

let nam_cod = "Coordinate_clusterpdb_symbol_v";;


let name = function
  | Coordinate_clusterpdb_symbol_t.MODEL -> Format.sprintf "MODEL"
  | Coordinate_clusterpdb_symbol_t.ATOM -> Format.sprintf "ATOM"
  | Coordinate_clusterpdb_symbol_t.ANISOU -> Format.sprintf "ANISOU"
  | Coordinate_clusterpdb_symbol_t.TER -> Format.sprintf "TER"
  | Coordinate_clusterpdb_symbol_t.HETATM -> Format.sprintf "HETATM"
  | Coordinate_clusterpdb_symbol_t.ENDMDL -> Format.sprintf "ENDMDL"
;;

let model = Coordinate_clusterpdb_symbol_t.MODEL;;
let atom = Coordinate_clusterpdb_symbol_t.ATOM;;
let anisou = Coordinate_clusterpdb_symbol_t.ANISOU;;
let ter = Coordinate_clusterpdb_symbol_t.TER;;
let hetatm = Coordinate_clusterpdb_symbol_t.HETATM;;
let endmdl = Coordinate_clusterpdb_symbol_t.ENDMDL;;

