(** {3 The functionalities for a Formula for an Item of a Nondatastructure Entity.}  *)

val retrieve_hierarchical :
    Key_list_t.key_list ->
      Item_formula_t.item_formula
;;

(** {6 Extracting.} *)

val retrieve_extracting_hierarchical :
    Constructor_tag_t.constructor_tag Tree_t.tree ->
      Key_list_t.key_list ->
	Item_formula_t.item_formula
;;

val retrieve_naming_hierarchical :
    Constructor_tag_t.constructor_tag Tree_t.tree ->
      Key_list_t.key_list ->
	Item_formula_t.item_formula
;;

val retrieve_querying_hierarchical :
    Constructor_tag_t.constructor_tag Tree_t.tree ->
      Key_list_t.key_list ->
	Item_formula_t.item_formula
;;

val retrieve_upgrading_hierarchical :
    Constructor_tag_t.constructor_tag Tree_t.tree ->
      Key_list_t.key_list ->
	Item_formula_t.item_formula
;;
