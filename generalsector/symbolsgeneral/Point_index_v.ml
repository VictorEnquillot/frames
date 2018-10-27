(** {3 An Index functionalities for a Point.} *)

module Ord_p = Ordinal_p
module PnS_t = Point_index_t

let make ord = ord;;

let make_of_int i =
  Ord_p.make i
;;

let make_of_index idx =
  let o = Ord_p.ordinal_of_index idx in
  make o
;;

let print = Ord_p.print;;

let name = Ord_p.name;;

