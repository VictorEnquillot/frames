(** {3 A Tag for a Hsbf_expanded.} *)

module Hxi_t = Hsbf_expanded_index_t
module Hxs_t = Hsbf_expanded_symbol_t
module HxS_t = Hsbf_expanded_state_t

type hsbf_expanded_tag = (Hxs_t.hsbf_expanded_symbol, HxS_t.hsbf_expanded_state, Hxi_t.hsbf_expanded_index) Tag_t.tag
;;

