(** {3 The functionalities fro a Symbol Formula for a Pack of the Pdb} *)

(** {3 The Symbol functionnalities for a Coordinate Pack of a Pdb Entry} *)

let nam_cod = "Coordinate_clusterpdb_symbol_formula_v";;


let retrieve = function
  | Coordinate_clusterpdb_symbol_t.MODEL -> 

  | Coordinate_clusterpdb_symbol_t.TER -> retrieve_of_ter
  | Coordinate_clusterpdb_symbol_t.HETATM -> retrieve_of_hetatm
  | Coordinate_clusterpdb_symbol_t.ENDMDL -> retrieve_of_endmdl
;;

