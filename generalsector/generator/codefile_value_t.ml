(** {3 The Value for a Codefile.}  *)

module Itv_t = Item_value_t

type codefile_value = Itv_t.item_value list;;
(** It is the content of the Caml module file for
    - an Entity_name
    - a Category_symbol
    - a Codefile_symbol *)
