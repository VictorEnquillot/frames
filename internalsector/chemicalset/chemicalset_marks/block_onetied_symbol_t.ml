(** {3 The Symbol for a Block_onetied.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type block_onetied_symbol =
  | Block_onetied_zerotied
  | Block_onetied_onetied_symbol of Block_onetied_onetied_symbol_t.block_onetied_onetied_symbol
  | Block_onetied_forktied_symbol of Block_onetied_forktied_symbol_t.block_onetied_forktied_symbol
;;


(** created by ./generator block_onetied implementation symbol at 15:0 13 Mar 2012. *)



