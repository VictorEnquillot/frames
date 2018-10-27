(* $Id: Exp $ *)

(* {3 A Determinant_fonction of functions.} *)

type determinant_fonction = (Fonction_t.fonction array) * (position array)
and position = (float * float * float)
;;

type scaled_determinant_fonction = float * determinant_fonction
;;  

