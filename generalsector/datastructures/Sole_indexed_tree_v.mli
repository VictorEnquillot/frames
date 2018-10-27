(** {3 The functionalities for a canonical indexed Tree.} *)

val make :
    'a Tree_t.tree ->
     'a Sole_indexed_tree_t.sole_indexed_tree
;;

val node_of_sole_index_of_tree :
    Sole_index_t.sole_index ->
      'a Tree_t.tree ->
	'a
;;

val sole_index_list_of_node_of_tree :
    'a ->
      'a Tree_t.tree ->
	Sole_index_t.sole_index list
;;

val path_of_sole_index_of_tree :
    Sole_index_t.sole_index ->
     ' a Tree_t.tree ->
	'a list
;;

