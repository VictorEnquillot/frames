(** {3 Property_command_body_symbol_t} *)


(** {6 Typing_for_symbol} *)

type property_command_body_symbol =
  | Property_command_body_debug_symbol of Property_command_body_debug_symbol_t.property_command_body_debug_symbol
  | Property_command_body_set_symbol of Property_command_body_set_symbol_t.property_command_body_set_symbol
  | Property_command_body_title_symbol of Property_command_body_title_symbol_t.property_command_body_title_symbol
  | Property_command_body_trace_symbol of Property_command_body_trace_symbol_t.property_command_body_trace_symbol
;;


(** Property_command_body_symbol_t at 10:48:27 on 19 Mar 2017. created by version v2.4 of generator *)



