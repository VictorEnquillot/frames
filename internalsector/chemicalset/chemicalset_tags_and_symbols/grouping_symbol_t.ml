(** {3 A Symbol for a Grouping.} *)

(** {6 Modules.} *)

 (* empty is a bare constructor no module can be defined *)
module Frls_t = Fragment_leaf_symbol_t
module Gps_t = Grouping_polyfragment_symbol_t
module Gbs_t = Grouping_bridged_symbol_t

(** {6 Type.} *)

type grouping_symbol =
  | Empty
  | Fragment_leaf_symbol of Frls_t.fragment_leaf_symbol
  | Grouping_polyfragment_symbol of Gps_t.grouping_polyfragment_symbol
  | Grouping_bridged_symbol of Gbs_t.grouping_bridged_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh grouping 12 January 2011. *)

