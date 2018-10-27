(** {3 A Symbol for a Ml_symmetry_cartesian.} *)

type ml_symmetry_cartesian_symbol =
  | Blank 
  | X    | Y    | Z 
  | XX   | YY   | ZZ   | XY   | XZ   | YZ 
  | XXX  | YYY  | ZZZ  | XYY  | XXY  | XXZ
  | XZZ  | YZZ  | YYZ  | XYZ 
;;
(* Cartesian symbols, spherical symbols are numbers (l, m). *)
