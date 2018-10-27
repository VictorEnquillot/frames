(** {3 A Symbol for a Grouping.} *)


(** {6 Modules.} *)

module _v = Empty_v
module Fls_t = Fragment_leaf_symbol_t
module Gps_t = Grouping_polyfragment_symbol_t
module Gbs_t = Grouping_bridged_symbol_t


(** {6 Typing.} *)

type grouping_symbol =
  | empty_v of empty_symbol_t
  | Fragment_leaf_symbol of Fls_t.fragment_leaf_symbol
  | Grouping_polyfragment_symbol of Gps_t.grouping_polyfragment_symbol
  | Grouping_bridged_symbol of Gbs_t.grouping_bridged_symbol
;;


(** created by ./generator grouping t symbol at 19:13 25 Apr 2011. *)



