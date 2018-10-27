(** {3 The Symbol functionnalities for a Coordinate_transformation Pack of a Pdb Entry} *)

let nam_cod = "Coordinate_transformation_clusterpdb_symbol_v";;


let name = function
  | Coordinate_transformation_clusterpdb_symbol_t.ORIGX1 -> Format.sprintf "ORIGX1"
  | Coordinate_transformation_clusterpdb_symbol_t.ORIGX2 -> Format.sprintf "ORIGX2"
  | Coordinate_transformation_clusterpdb_symbol_t.ORIGX3 -> Format.sprintf "ORIGX3"
  | Coordinate_transformation_clusterpdb_symbol_t.SCALE1 -> Format.sprintf "SCALE1"
  | Coordinate_transformation_clusterpdb_symbol_t.SCALE2 -> Format.sprintf "SCALE2"
  | Coordinate_transformation_clusterpdb_symbol_t.SCALE3 -> Format.sprintf "SCALE3"
  | Coordinate_transformation_clusterpdb_symbol_t.MTRIX1 -> Format.sprintf "MTRIX1"
  | Coordinate_transformation_clusterpdb_symbol_t.MTRIX2 -> Format.sprintf "MTRIX2"
  | Coordinate_transformation_clusterpdb_symbol_t.MTRIX3 -> Format.sprintf "MTRIX3"
;;
      
