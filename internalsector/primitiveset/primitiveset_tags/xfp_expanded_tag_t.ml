(** {3 A Tag for a Xfp_expanded.} *)

module Xxi_t = Xfp_expanded_index_t
module Xxs_t = Xfp_expanded_symbol_t
module XxS_t = Xfp_expanded_state_t

type xfp_expanded_tag = (Xxs_t.xfp_expanded_symbol, XxS_t.xfp_expanded_state, Xxi_t.xfp_expanded_index) Tag_t.tag
;;

