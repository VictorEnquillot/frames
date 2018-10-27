(** {3 The functionalities for a Doublet_tree of all Constructor_symbol for an Entity.}  *)

(** {6 Making.} *)

val constructor_path_tree_of_constructor_tag_tree :
    Constructor_tag_tree_t.constructor_tag_tree ->
      Constructor_path_tree_t.constructor_path_tree
;;

val make :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_path_tree_t.constructor_path_tree
;;

(** {6 Extracting.} *)
