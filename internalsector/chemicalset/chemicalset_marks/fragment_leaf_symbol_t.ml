(** {3 The Symbol for a Fragment_leaf.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type fragment_leaf_symbol =
  | Block_onetied_zerotied
  | Fragment_onetied_zerotied_symbol of Fragment_onetied_zerotied_symbol_t.fragment_onetied_zerotied_symbol
  | Fragment_leaf_fromid of string
  | Fragment_leaf_leftextended_fromid of string
  | Fragment_leaf_halfbridgetailed_symbol of Fragment_leaf_halfbridgetailed_symbol_t.fragment_leaf_halfbridgetailed_symbol
;;


(** created by ./generator fragment_leaf implementation symbol at 15:1 13 Mar 2012. *)



