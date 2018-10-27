(** {3 The functionalities for a Tree of all Entity_symbol for an Entity.}  *)

(** {6 Making.} *)

val entityson_symbol_list_of_entitynameson_list :
    string list ->
      Entity_symbol_t.entity_symbol list
;;

val entityson_symbol_list_of_datastructure_entityname :
    string ->
      Entity_symbol_t.entity_symbol list
;;

val make :
 Entity_symbol_t.entity_symbol ->
   Entity_symbol_t.entity_symbol Tree_t.tree
;;

