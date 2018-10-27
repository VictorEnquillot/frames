(** {3 A Symbol functionalities for a Point.} *)

module Pns_t = Point_symbol_t

let make s =  
    Pns_t.String s
;;

let print ppf = function
  | Pns_t.String s -> Format.fprintf ppf "Point %s" s
;;

let name = function
  | Pns_t.String s -> Format.sprintf "%s" s
;;
