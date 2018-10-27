(** {6 Typing} *)

type usagefile_for_symbol_value =
  | Implementation_for_symbol of Item_value_t.item_value list
  | Interface_for_symbol of Item_value_t.item_value list
;;
