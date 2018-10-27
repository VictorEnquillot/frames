(** {3 The Symbol for a Fragment_head.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type fragment_head_symbol =
  | Block_zerotied_forktied
  | Fragment_head_forked_symbol of Fragment_head_forked_symbol_t.fragment_head_forked_symbol
  | Fragment_head_halfbridged_symbol of Fragment_head_halfbridged_symbol_t.fragment_head_halfbridged_symbol
  | Fragment_head_rightextended_fromid
;;


(** created by ./generator fragment_head implementation symbol at 15:1 13 Mar 2012. *)



