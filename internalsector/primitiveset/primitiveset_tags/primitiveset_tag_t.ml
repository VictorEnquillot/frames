(** {3 A Tag for a Primitive_set.} *)

(** {6 Modules.} *)

module Psi_t = Primitiveset_index_t
module PsS_t = Primitiveset_state_t
module Pss_t = Primitiveset_symbol_t

(** {6 Types.} *)
 
type primitiveset_tag = (Pss_t.primitiveset_symbol, PsS_t.primitiveset_state, Psi_t.primitiveset_index) Tag_t.tag
;;

(** created by ./do_entity_set_tag_t_ml tag 07 octobre 2009. *)

