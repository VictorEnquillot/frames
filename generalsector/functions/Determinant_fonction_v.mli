(* $Id: Exp $ *)

(* {3 A Determinant_fonction of functions.} *)
open Determinant_fonction_t;;

val rank : determinant_fonction -> int 
;;

val permute_ith_jth_array : int -> int -> 'a array -> 'a array
;;

val permute_particles : int -> int -> determinant_fonction -> determinant_fonction 
;;

val permute_functions : int -> int -> determinant_fonction -> determinant_fonction
;;

val cofactor : int -> int -> determinant_fonction -> determinant_fonction
;;

val value_on_r3n : determinant_fonction -> float
;;
