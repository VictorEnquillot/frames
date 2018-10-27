(** {3 A Tag for a Template.} *)

module Tmi_t = Template_index_t
module Tms_t = Template_symbol_t
module TmS_t = Template_state_t

type template_tag = (Tms_t.template_symbol, TmS_t.template_state, Tmi_t.template_index) Tag_t.tag
;;

