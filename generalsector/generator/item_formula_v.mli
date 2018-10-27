(** {3 The functionalities for a Formula for an Item in a Codefile.}  *)

val retrieve :
    Key_list_t.key_list ->
      Item_formula_t.item_formula
;;

val item_key_list_off_item_formula :
    Item_formula_t.item_formula ->
      Key_list_t.key_list
;;

val constructor_path_tree_off_item_formula :
    Item_formula_t.item_formula ->
      Constructor_path_t.constructor_path Tree_t.tree
;;

val caml_paragraph_symbol_list_off_item_formula :
    Item_formula_t.item_formula ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol list
;;

val caml_line_symbol_list_off_item_formula :
    Item_formula_t.item_formula ->
      Caml_line_symbol_t.caml_line_symbol list
;;
