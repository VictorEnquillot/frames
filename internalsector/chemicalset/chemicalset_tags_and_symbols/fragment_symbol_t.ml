(** {3 A Symbol for a Fragment.} *)

(** {6 Modules.} *)

module Fcs_t = Fragment_closed_symbol_t
module Fhs_t = Fragment_head_symbol_t
module Fbs_t = Fragment_buried_symbol_t
module Frls_t = Fragment_leaf_symbol_t

(** {6 Type.} *)

type fragment_symbol =
  | Fragment_closed_symbol of Fcs_t.fragment_closed_symbol
  | Fragment_head_symbol of Fhs_t.fragment_head_symbol
  | Fragment_buried_symbol of Fbs_t.fragment_buried_symbol
  | Fragment_leaf_symbol of Frls_t.fragment_leaf_symbol
;;

(** created by ./do_entitysum_symbol_t_ml.sh fragment 12 January 2011. *)

