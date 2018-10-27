(** {3 The Symbol for a Fragment.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type fragment_symbol =
  | Fragment_closed_symbol of Fragment_closed_symbol_t.fragment_closed_symbol
  | Fragment_head_symbol of Fragment_head_symbol_t.fragment_head_symbol
  | Fragment_buried_symbol of Fragment_buried_symbol_t.fragment_buried_symbol
  | Fragment_leaf_symbol of Fragment_leaf_symbol_t.fragment_leaf_symbol
;;


(** created by ./generator fragment implementation symbol at 15:1 13 Mar 2012. *)



