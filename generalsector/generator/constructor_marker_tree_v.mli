(** {3 The functionalities for a Doublet_tree of all Constructor_symbol for an Entity.}  *)

(** {6 Making.} *)

val make :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_tag_tree_t.constructor_tag_tree
;;

(** {6 Extracting.} *)

val constructor_path_of_constructor_tag_of_constructor_tag_tree :
    Constructor_tag_t.constructor_tag ->
      Constructor_tag_tree_t.constructor_tag_tree ->
	Constructor_path_t.constructor_path
;;

val anyson_constructor_tag_list_of_constructor_tag_tree :
      Constructor_tag_tree_t.constructor_tag_tree ->
	Constructor_tag_t.constructor_tag list
;;

val up_constructor_tag_list_of_constructor_tag_tree :
      Constructor_tag_tree_t.constructor_tag_tree ->
	Constructor_tag_t.constructor_tag list
;;
