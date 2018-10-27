(** {3 A Radius private float Type} *)

type radius = private float
;;

val make : float -> radius
;;
(** Is non-negative *)

val float_off_radius : radius -> float
;; 
