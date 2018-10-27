(** {3 The functionalities for a Tree of all Constructor_symbol for an Entity} *)

(** {6 Making.} *)

val constructor_symbol_tree_of_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      Constructor_symbol_t.constructor_symbol Tree_t.tree
;;

val make :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_symbol Tree_t.tree
;;

val entityson_symbol_list_of_entity_proper_datastructure_symbol :
    Entity_symbol_t.entity_proper_datastructure_symbol ->
      Entity_symbol_t.entity_symbol list
;;

val contructorson_symbol_list_of_entity_proper_datastructure_symbol :
    Entity_symbol_t.entity_proper_datastructure_symbol ->
      Constructor_symbol_t.constructor_symbol list
;;

val topson_constructor_symbol_list_of_constructor_symbol_tree :
    Constructor_symbol_t.constructor_symbol Tree_t.tree ->
      Constructor_symbol_t.constructor_symbol list
;;

val topson_constructor_symbol_list_of_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_symbol list
;;(** list of topson constructors *)

val topson_constructor_symbol_list_of_entity_symbol :
    Entity_symbol_t.entity_symbol ->
      Constructor_symbol_t.constructor_symbol list
;;(** list of topson constructors *)

val topson_constructor_proper_symbol_list_of_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_proper_symbol list
;;

val anyson_constructor_symbol_list_of_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_symbol list
;;

val up_constructor_symbol_list_of_constructor_symbol :
    Constructor_symbol_t.constructor_symbol ->
      Constructor_symbol_t.constructor_symbol list
;;

val anyson_constructor_symbol_list_of_constructor_symbol_tree :
    Constructor_symbol_tree_t.constructor_symbol_tree ->
      Constructor_symbol_t.constructor_symbol list
;;

val up_constructor_symbol_list_of_constructor_symbol_tree :
    Constructor_symbol_tree_t.constructor_symbol_tree ->
      Constructor_symbol_t.constructor_symbol list
;;

val external_constructor_symbol_list_of_constructor_symbol_tree :
    Constructor_symbol_tree_t.constructor_symbol_tree ->
      Constructor_symbol_t.constructor_symbol list
;;
