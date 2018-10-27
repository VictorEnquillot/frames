(** {3 The Symbol for a Grouping.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type grouping_symbol =
  | Empty
  | Fragment_leaf_symbol of Fragment_leaf_symbol_t.fragment_leaf_symbol
  | Fragment_tree
  | Polypeptide_sidegroup_symbol of Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol
  | Grouping_fromid of string
;;


(** created by ./generator grouping implementation symbol at 15:1 13 Mar 2012. *)



