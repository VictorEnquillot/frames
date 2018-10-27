(** {3 A State functionalities for a Point.} *)

module PnS_t = Point_state_t

let make i =  
    PnS_t.Dimension i
;;

let print ppf = function
  | PnS_t.Dimension i -> Format.fprintf ppf "Point %i" i
;;

let name = function
  | PnS_t.Dimension i -> Format.sprintf "%i" i
;;
