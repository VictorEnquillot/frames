(** {3 A Tag for a Hsbf_cluster.} *)

module Hci_t = Hsbf_cluster_index_t
module Hcs_t = Hsbf_cluster_symbol_t
module HcS_t = Hsbf_cluster_state_t

type hsbf_cluster_tag = (Hcs_t.hsbf_cluster_symbol, HcS_t.hsbf_cluster_state, Hci_t.hsbf_cluster_index) Tag_t.tag
;;

