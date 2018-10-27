(** {3 A Tag for a Entity.} *)

module Eni_t = Entity_index_t
module Ens_t = Entity_symbol_t
module EnS_t = Entity_state_t

type entity_tag = (Ens_t.entity_symbol, EnS_t.entity_state, Eni_t.entity_index) Tag_t.tag
;;

