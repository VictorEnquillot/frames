(** {3 The functionalities for an doublet_tree data structure.} *)

(** {6 Making.} *)

val empty :
    ('n, 'i) Doublet_tree_t.doublet_tree
;;

val make_of_leaf :
    ('n, 'i) Doublet_t.doublet ->
      ('n, 'i) Doublet_tree_t.doublet_tree
;;

val make_of_node :
    ('n, 'i) Doublet_t.doublet ->
      ('n, 'i) Doublet_tree_t.doublet_tree list ->
	('n, 'i) Doublet_tree_t.doublet_tree
;;

(** {6 Iterating.} *)

val map :
    ('n -> 'x) ->
      ('i -> 'j) ->
	('n, 'i) Doublet_tree_t.doublet_tree ->
	  ('x, 'j) Doublet_tree_t.doublet_tree 
;; 

val iter :
    ('n -> unit) ->
      ('i -> unit) ->
	('n, 'i) Doublet_tree_t.doublet_tree ->
	  unit
;; 

val map2 :
  ('m -> 'n -> 'x) ->
    ('h -> 'i -> 'j) ->
      ('m, 'h) Doublet_tree_t.doublet_tree ->
	('n, 'i) Doublet_tree_t.doublet_tree ->
          ('x, 'j) Doublet_tree_t.doublet_tree 
;; 

(** {6 Extracting.} *)

val root_doublet_off_doublet_tree :
    ('n, 'i) Doublet_tree_t.doublet_tree ->
      ('n, 'i) Doublet_t.doublet
;; 

val son_doublet_tree_list_off_doublet_tree :
    ('n, 'i) Doublet_tree_t.doublet_tree ->
      ('n, 'i) Doublet_tree_t.doublet_tree list
;; 

val son_doublet_tree_list_of_node_predicate_of_doublet_tree :
    (('n, 'i) Doublet_t.doublet -> bool) ->
      ('n, 'i) Doublet_tree_t.doublet_tree ->
	('n, 'i) Doublet_tree_t.doublet_tree list
;; 

val son_doublet_node_list_off_doublet_tree :
    ('n, 'i) Doublet_tree_t.doublet_tree ->
      ('n, 'i) Doublet_t.doublet list
;;

val son_doublet_node_list_of_node_predicate_of_doublet_tree :
    (('n, 'i) Doublet_t.doublet -> bool) ->
      ('n, 'i) Doublet_tree_t.doublet_tree ->
	('n, 'i) Doublet_t.doublet list
;;

val left_tree_off_doublet_tree :
    ('n, 'i) Doublet_tree_t.doublet_tree ->
      'n Tree_t.tree
;;
	
val right_tree_off_doublet_tree :
    ('n, 'i) Doublet_tree_t.doublet_tree ->
      'i Tree_t.tree
;;
	
val doublet_list_off_doublet_tree :
    ('n, 'i) Doublet_tree_t.doublet_tree ->
      ('n, 'i) Doublet_list_t.doublet_list
;; 

(** {6 Modifying.} *)

val replace_doublet_root :
    ('n, 'i) Doublet_t.doublet ->
      ('n, 'i) Doublet_tree_t.doublet_tree ->
	('n, 'i) Doublet_tree_t.doublet_tree 
;;

(** {6 Converting.} *)

val name :
    ('n -> string) ->
      ('i -> string) ->
	('n, 'i) Doublet_tree_t.doublet_tree ->
	  string
;;

