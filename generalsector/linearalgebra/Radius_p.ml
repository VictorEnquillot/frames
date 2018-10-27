(** {3 A Radius private float Type} *)

type radius = float
;;
(** Is non-negative *)

let make f =
  if f >= 0.
  then f 	
  else failwith ("Non_negative:make")
;;

let float_off_radius rds =
  rds
;;
