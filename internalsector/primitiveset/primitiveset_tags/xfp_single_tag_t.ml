(** {3 A Tag for a Xfp_single.} *)

module Xsi_t = Xfp_single_index_t
module Xss_t = Xfp_single_symbol_t
module XsS_t = Xfp_single_state_t

type xfp_single_tag = (Xss_t.xfp_single_symbol, XsS_t.xfp_single_state, Xsi_t.xfp_single_index) Tag_t.tag
;;

