(** {3 The functionalities for an indexed_tree data structure.} *)

(** {6 Making.} *)

val empty :
    ('n, 'i) Indexed_tree_t.indexed_tree
;;

val make_of_leaf :
    'n ->
      ('n, 'i) Indexed_tree_t.indexed_tree
;;

val make_of_node :
    'n ->
      (('n, 'i) Indexed_tree_t.indexed_tree, 'i) Doublet_list_t.doublet_list ->
	('n, 'i) Indexed_tree_t.indexed_tree
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

(** {6 Extracting.} *)

val root_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      'n
;; 

val root_son_doublet_list_off_indexed_tree_node :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      (('n, 'i) Indexed_tree_t.indexed_tree, 'i) Doublet_list_t.doublet_list
;; 

val subindexedtree_list_of_predicate_of_indexed_tree_node :
    ('n -> bool) ->
      ('n, 'i) Indexed_tree_t.indexed_tree ->
      (('n, 'i) Indexed_tree_t.indexed_tree, 'i) Doublet_list_t.doublet_list
;; 

(** {6 Modifying.} *)

val replace_leaf :
    'm -> 
      ('n, 'i) Indexed_tree_t.indexed_tree ->
	('m, 'i) Indexed_tree_t.indexed_tree
;; 

val replace_node :
    'n -> 
      ('n, 'i) Indexed_tree_t.indexed_tree ->
	('n, 'i) Indexed_tree_t.indexed_tree
;; 


(** {6 Converting.} *)

val node_tree_off_indexed_tree :
    ('n -> 'x) ->
      ('n, 'i) Indexed_tree_t.indexed_tree ->
	'x Tree_t.tree 
;;

(*
val doublet_tree_off_indexed_tree :
    ('n, 'i) Indexed_tree_t.indexed_tree ->
      ('n, 'i) Doublet_tree_t.doublet_tree
;; 
*)
val name :
    ('n -> string) ->
	('i -> string) ->
	  ('n, 'i) Indexed_tree_t.indexed_tree ->
	    string
;;

val print : 
    (Format.formatter -> 'n -> unit) ->
      (Format.formatter -> 'i -> unit) ->
	Format.formatter -> 
	  ('n, 'i) Indexed_tree_t.indexed_tree ->
	    unit
;;

