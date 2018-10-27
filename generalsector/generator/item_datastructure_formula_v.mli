(** {3 The functionalities for a Formula for an Item of a Datstructure Entity.}  *)

val retrieve_datastructure :
    Key_list_t.key_list ->
      Item_formula_t.item_formula
;;

(** {6 Extracting.} *)

val retrieve_extracting_datastructure :
    Constructor_tag_t.constructor_tag Tree_t.tree ->
      Key_list_t.key_list ->
	Item_formula_t.item_formula
;;

val retrieve_naming_datastructure :
    Caml_paragraph_context_t.caml_paragraph_context Tree_t.tree ->
      Item_formula_t.item_formula
;;

val retrieve_printing_datastructure :
    Caml_paragraph_context_t.caml_paragraph_context Tree_t.tree ->
      Item_formula_t.item_formula
;;

val retrieve_querying_datastructure :
    Constructor_tag_t.constructor_tag Tree_t.tree ->
      Key_list_t.key_list ->
	Item_formula_t.item_formula
;;

val retrieve_upgrading_datastructure :
    Constructor_tag_t.constructor_tag Tree_t.tree ->
      Key_list_t.key_list ->
	Item_formula_t.item_formula
;;

