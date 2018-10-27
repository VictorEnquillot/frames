(** {3 A Tag for Point.} *)

module Pns_t = Point_symbol_t
module PnS_t = Point_state_t
module Pni_t = Point_index_t

type point_tag = (Pns_t.point_symbol, PnS_t.point_state, Pni_t.point_index) Tag_t.tag
;;

