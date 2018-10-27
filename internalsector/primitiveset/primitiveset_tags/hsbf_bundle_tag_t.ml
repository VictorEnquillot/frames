(** {3 A Tag for a Hsbf_bundle.} *)

module Hbi_t = Hsbf_bundle_index_t
module Hbs_t = Hsbf_bundle_symbol_t
module HbS_t = Hsbf_bundle_state_t

type hsbf_bundle_tag = (Hbs_t.hsbf_bundle_symbol, HbS_t.hsbf_bundle_state, Hbi_t.hsbf_bundle_index) Tag_t.tag
;;

