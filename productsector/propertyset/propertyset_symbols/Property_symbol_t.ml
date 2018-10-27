(** {3 Property_symbol_t} *)


(** {6 Typing_for_symbol} *)

type property_symbol =
  | Property_command_symbol of Property_command_symbol_t.property_command_symbol
  | Property_context_symbol of Property_context_symbol_t.property_context_symbol
  | Property_operand_symbol of Property_operand_symbol_t.property_operand_symbol
  | Property_operator_symbol of Property_operator_symbol_t.property_operator_symbol
  | Property_target_symbol of Property_target_symbol_t.property_target_symbol
;;


(** Property_symbol_t at 10:48:27 on 19 Mar 2017. created by version v2.4 of generator *)



