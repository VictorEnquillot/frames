(** {3 A Tag for a Hsbf_pack.} *)

module Hpi_t = Hsbf_pack_index_t
module Hps_t = Hsbf_pack_symbol_t
module HpS_t = Hsbf_pack_state_t

type hsbf_pack_tag = (Hps_t.hsbf_pack_symbol, HpS_t.hsbf_pack_state, Hpi_t.hsbf_pack_index) Tag_t.tag
;;

