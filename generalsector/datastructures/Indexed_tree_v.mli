(** {3 The functionalities for an indexed_tree data structure.} *)

(** {6 Making.} *)

val empty :
    ('n, 'i) Indexed_tree_t.indexed_tree
;;

val make_of_leaf_doublet :
    ('n, 'i) Doublet_t.doublet -> 
      ('n, 'i) Indexed_tree_t.indexed_tree
;;

val make_node_doublet :
    ('n, 'i) Doublet_t.doublet -> 
      ('n, 'i) Indexed_tree_t.indexed_tree list ->
	('n, 'i) Indexed_tree_t.indexed_tree 
;;

val make_of_leaf_of_index :
    'n -> 'i ->
      ('n, 'i) Indexed_tree_t.indexed_tree
;;
 
val make_of_node_of_indexed_tree_list_of_index :
    'n -> 
      ('n, 'i) Indexed_tree_t.indexed_tree list ->
	'i ->
	  ('n, 'i) Indexed_tree_t.indexed_tree
;;

(** {6 Extracting.} *)

val root_doublet_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      ('n, 'i) Doublet_t.doublet 
;; 

val root_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      'n
;; 

val root_son_doublet_list_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      ('n, 'i) Doublet_t.doublet list 
;; 

val root_sonindexedtree_list_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      ('n, 'i) Indexed_tree_t.indexed_tree list
;;

val left_tree_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      'n Tree_t.tree
;;

val tree_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      'n Tree_t.tree 
;;

val right_tree_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      'i Tree_t.tree
;;

val index_tree_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      'i Tree_t.tree
;;

val son_doublet_list_of_predicate_of_indexed_tree :
    (('n, 'i) Doublet_t.doublet -> bool) ->
      ('n, 'i) Indexed_tree_t.indexed_tree ->
	('n, 'i) Doublet_t.doublet list 
;;

val subindexedtree_list_of_predicate_of_indexed_tree :
    (('n,'i) Doublet_t.doublet -> bool) ->
      ('n, 'i) Indexed_tree_t.indexed_tree ->
	('n, 'i) Indexed_tree_t.indexed_tree list 
;; 

(** {6 Iterating.} *)

val map :
    ('n -> 'x) ->
      ('i -> 'j) ->
	('n, 'i) Indexed_tree_t.indexed_tree ->
	  ('x, 'j) Indexed_tree_t.indexed_tree 
;; 

val iter :
    ('n -> unit) ->
      ('i -> unit) ->
	('n, 'i) Indexed_tree_t.indexed_tree ->
	  unit
;; 

val map2 :
  ('m -> 'n -> 'x) ->
    ('h -> 'i -> 'j) ->
      ('m, 'h) Indexed_tree_t.indexed_tree ->
	('n, 'i) Indexed_tree_t.indexed_tree ->
          ('x, 'j) Indexed_tree_t.indexed_tree 
;; 

(** {6 Modifying.} *)

val replace_leaf_doublet :
    ('n, 'i) Doublet_t.doublet -> 
      ('n, 'i) Indexed_tree_t.indexed_tree ->
	('n, 'i) Indexed_tree_t.indexed_tree
;; 

val replace_node_doublet :
    ('n, 'i) Doublet_t.doublet ->
      ('n, 'i) Indexed_tree_t.indexed_tree ->
	('n, 'i) Indexed_tree_t.indexed_tree
;; 

(** {6 Converting.} *)

val name :
    ('n -> string) ->
      ('i -> string) ->
	('n, 'i) Indexed_tree_t.indexed_tree ->
	  string
;;

