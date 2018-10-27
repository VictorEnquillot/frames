(** {3 A Tag for a Hsbf_single.} *)

module Hsi_t = Hsbf_single_index_t
module Hss_t = Hsbf_single_symbol_t
module HsS_t = Hsbf_single_state_t

type hsbf_single_tag = (Hss_t.hsbf_single_symbol, HsS_t.hsbf_single_state, Hsi_t.hsbf_single_index) Tag_t.tag
;;

