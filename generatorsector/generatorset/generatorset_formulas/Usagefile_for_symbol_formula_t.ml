(** {6 Typing} *)

type usagefile_for_symbol_formula =
  | Implementation_for_symbol of Item_tag_t.item_tag list
  | Interface_for_symbol of Item_tag_t.item_tag list
;;

