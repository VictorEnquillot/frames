(** {3 The functionalities for a Symbol for an Item in a Codefile.}  *)

(** {6 Making.} *)

val make :
    string ->
      Item_symbol_t.item_symbol
;;

(** {3 Displaying.} *)

val name :
    Item_symbol_t.item_symbol ->
      string
;;

val key :
    Item_symbol_t.item_symbol ->
      Key_t.key
;;

(** {3 Abbreviating} *)

val abbreviating : Item_symbol_t.item_symbol;;
val building : Item_symbol_t.item_symbol;;
val naming : Item_symbol_t.item_symbol;;
val printing : Item_symbol_t.item_symbol;;
val ending : Item_symbol_t.item_symbol;;
val extracting : Item_symbol_t.item_symbol;;
val heading : Item_symbol_t.item_symbol;;
val including : Item_symbol_t.item_symbol;;
val making : Item_symbol_t.item_symbol;;
val modules : Item_symbol_t.item_symbol;;
val providing : Item_symbol_t.item_symbol;;
val querying : Item_symbol_t.item_symbol;;
val register : Item_symbol_t.item_symbol;;
val retrieving : Item_symbol_t.item_symbol;;
val storing : Item_symbol_t.item_symbol;;
val typing : Item_symbol_t.item_symbol;;
val upgrading : Item_symbol_t.item_symbol;;
