(** {3 A Symbol functionalities for a Ml_symmetry_cartesian.} *)

let mod_nam = "Ml_symmetry_group_symbol_v";;

module Mcs_t = Ml_symmetry_cartesian_symbol_t

(** {6 Messages.} *)

let print_integer_triplet i j k mdn her =
  Format.fprintf Format.err_formatter 
    "@.%s.%s: --- Fatal Error ---@.\
    Integer triplet (%i, %i, %i) is undefined@.Add it.@."
    mdn her i j k
;;

let fail_integer_triplet i j k mdn her =
  print_integer_triplet i j k mdn her;
  assert false
;;

(** {6 Making.} *)

let make_of_int_triplet = function 
  | (0, 0, 0) -> Mcs_t.Blank 
  | (1, 0, 0) -> Mcs_t.X     
  | (0, 1, 0) -> Mcs_t.Y    
  | (0, 0, 1) -> Mcs_t.Z 
  | (2, 0, 0) -> Mcs_t.XX   
  | (0, 2, 0) -> Mcs_t.YY   
  | (0, 0, 2) -> Mcs_t.ZZ   
  | (1, 1, 0) -> Mcs_t.XY   
  | (1, 0, 1) -> Mcs_t.XZ   
  | (0, 1, 1) -> Mcs_t.YZ 
  | (3, 0, 0) -> Mcs_t.XXX  
  | (0, 3, 0) -> Mcs_t.YYY  
  | (0, 0, 3) -> Mcs_t.ZZZ  
  | (1, 2, 0) -> Mcs_t.XYY  
  | (2, 1, 0) -> Mcs_t.XXY  
  | (2, 0, 1) -> Mcs_t.XXZ
  | (1, 0, 2) -> Mcs_t.XZZ  
  | (0, 1, 2) -> Mcs_t.YZZ  
  | (0, 2, 1) -> Mcs_t.YYZ  
  | (1, 1, 1) -> Mcs_t.XYZ 
  | (i, j, k) -> 
      fail_integer_triplet i j k mod_nam "make"
;;

let make i j k =
  make_of_int_triplet (i, j, k)
;;
 
(** {6 Converting.} *)

let print ppf = function
  | Mcs_t.Blank -> Format.fprintf ppf " "
  | Mcs_t.X -> Format.fprintf ppf "X"
  | Mcs_t.Y -> Format.fprintf ppf "Y"
  | Mcs_t.Z -> Format.fprintf ppf "Z"
  | Mcs_t.XX -> Format.fprintf ppf "XX"
  | Mcs_t.YY -> Format.fprintf ppf "YY"
  | Mcs_t.ZZ -> Format.fprintf ppf "ZZ"
  | Mcs_t.XY -> Format.fprintf ppf "XY"
  | Mcs_t.XZ -> Format.fprintf ppf "XZ"
  | Mcs_t.YZ -> Format.fprintf ppf "YZ"
  | Mcs_t.XXX -> Format.fprintf ppf "XXX"
  | Mcs_t.YYY -> Format.fprintf ppf "YYY"
  | Mcs_t.ZZZ -> Format.fprintf ppf "ZZZ"
  | Mcs_t.XYY -> Format.fprintf ppf "XYY"
  | Mcs_t.XXY -> Format.fprintf ppf "XXY"
  | Mcs_t.XXZ -> Format.fprintf ppf "XXZ"
  | Mcs_t.XZZ -> Format.fprintf ppf "XZZ"
  | Mcs_t.YZZ -> Format.fprintf ppf "YZZ"
  | Mcs_t.YYZ -> Format.fprintf ppf "YYZ"
  | Mcs_t.XYZ -> Format.fprintf ppf "XYZ"
;;

let name = function
  | Mcs_t.Blank -> Format.sprintf " "
  | Mcs_t.X -> Format.sprintf "X"
  | Mcs_t.Y -> Format.sprintf "Y"
  | Mcs_t.Z -> Format.sprintf "Z"
  | Mcs_t.XX -> Format.sprintf "XX"
  | Mcs_t.YY -> Format.sprintf "YY"
  | Mcs_t.ZZ -> Format.sprintf "ZZ"
  | Mcs_t.XY -> Format.sprintf "XY"
  | Mcs_t.XZ -> Format.sprintf "XZ"
  | Mcs_t.YZ -> Format.sprintf "YZ"
  | Mcs_t.XXX -> Format.sprintf "XXX"
  | Mcs_t.YYY -> Format.sprintf "YYY"
  | Mcs_t.ZZZ -> Format.sprintf "ZZZ"
  | Mcs_t.XYY -> Format.sprintf "XYY"
  | Mcs_t.XXY -> Format.sprintf "XXY"
  | Mcs_t.XXZ -> Format.sprintf "XXZ"
  | Mcs_t.XZZ -> Format.sprintf "XZZ"
  | Mcs_t.YZZ -> Format.sprintf "YZZ"
  | Mcs_t.YYZ -> Format.sprintf "YYZ"
  | Mcs_t.XYZ -> Format.sprintf "XYZ"
;;

(** {6 Extracting.} *)

let int_triplet_off_ml_symmetry_cartesian_symbol = function
 | Mcs_t.Blank 	  -> (0, 0, 0) 
 | Mcs_t.X     	  -> (1, 0, 0) 
 | Mcs_t.Y    	  -> (0, 1, 0) 
 | Mcs_t.Z 	  -> (0, 0, 1) 
 | Mcs_t.XX   	  -> (2, 0, 0) 
 | Mcs_t.YY   	  -> (0, 2, 0) 
 | Mcs_t.ZZ   	  -> (0, 0, 2) 
 | Mcs_t.XY   	  -> (1, 1, 0) 
 | Mcs_t.XZ   	  -> (1, 0, 1) 
 | Mcs_t.YZ 	  -> (0, 1, 1) 
 | Mcs_t.XXX  	  -> (3, 0, 0) 
 | Mcs_t.YYY  	  -> (0, 3, 0) 
 | Mcs_t.ZZZ  	  -> (0, 0, 3) 
 | Mcs_t.XYY  	  -> (1, 2, 0) 
 | Mcs_t.XXY  	  -> (2, 1, 0) 
 | Mcs_t.XXZ	  -> (2, 0, 1) 
 | Mcs_t.XZZ  	  -> (1, 0, 2) 
 | Mcs_t.YZZ  	  -> (0, 1, 2) 
 | Mcs_t.YYZ  	  -> (0, 2, 1) 
 | Mcs_t.XYZ 	  -> (1, 1, 1) 
;;
