(** {3 The functionalities for a Tag for a Constructor.} *)

(** {6 Making.} *)

val make :
    Constructor_symbol_t.constructor_symbol ->
      Tree_canonical_index_t.tree_canonical_index ->
	Constructor_tag_t.constructor_tag
;;

val name :
    Constructor_tag_t.constructor_tag ->
      string
;;

val constructor_symbol_off_constructor_tag :
    Constructor_tag_t.constructor_tag ->
      Constructor_symbol_t.constructor_symbol
;;

val constructor_proper_tree_canonical_index_off_constructor_tag :
    Constructor_tag_t.constructor_tag ->
      Tree_canonical_index_t.tree_canonical_index
;;

val constructor_depth_off_constructor_tag :
    Constructor_tag_t.constructor_tag ->
      int
;;
