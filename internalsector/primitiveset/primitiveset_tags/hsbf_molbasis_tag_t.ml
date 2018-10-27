(** {3 A Tag for a Hsbf_molbasis.} *)

module Hmi_t = Hsbf_molbasis_index_t
module Hms_t = Hsbf_molbasis_symbol_t
module HmS_t = Hsbf_molbasis_state_t

type hsbf_molbasis_tag = (Hms_t.hsbf_molbasis_symbol, HmS_t.hsbf_molbasis_state, Hmi_t.hsbf_molbasis_index) Tag_t.tag
;;

