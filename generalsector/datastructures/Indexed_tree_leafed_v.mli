(** {3 A Indexed_tree_leafed data structure.} *)

(** {6 Making.} *)

val empty : 
    ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed
;;

val make_of_leaf_doublet : 
    ('l, 'i) Doublet_t.doublet -> 
      ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed
;;

val make_node_doublet : 
    ('n, 'i) Doublet_t.doublet -> 
      ( ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed) list -> 
	('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed
;;

val make_of_leaf_of_index : 
    'l -> 'i ->
      ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed
;;

val make_of_node_of_indexed_tree_leafed_list_of_index : 
    'n -> 
      ( ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed) list -> 
	'i ->
	  ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed
;;

(** {6 Iterating.} *)

val map : 
    ('n -> 'a) -> 
      ('l -> 'b) -> 
	('i -> 'c) ->
	  ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed ->
	    ('a, 'b, 'c) Indexed_tree_leafed_t.indexed_tree_leafed
;;

val map_left : 
    ('n -> 'a) -> 
      ('l -> 'b) -> 
	('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed ->
	  ('a, 'b, 'i) Indexed_tree_leafed_t.indexed_tree_leafed
;;

val iter : 
    ('n -> unit) -> 
      ('l -> unit) -> 
	('i -> unit) -> 
	  ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed ->
	    unit
;;

val map2 : 
    ('n -> 'x -> 'a ) -> 
      ('l -> 'y -> 'b ) -> 
	('i -> 'z -> 'c ) -> 
	  ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed -> 
	    ('x, 'y, 'z) Indexed_tree_leafed_t.indexed_tree_leafed -> 
	      ('a, 'b, 'c) Indexed_tree_leafed_t.indexed_tree_leafed 
;;

(** {6 Extracting.} *)

val root_doublet_off_indexed_tree_leafed :
    ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed ->
      ('n, 'i) Doublet_t.doublet
;;

val root_off_indexed_tree_leafed :
    ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed ->
      'n 
;;

val root_son_doublet_list_off_indexed_tree_leafed_node :
    ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed ->
      (('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed) list
;;

val indexed_tree_off_indexed_tree_leafed : 
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed ->
	  ('a, 'i) Indexed_tree_t.indexed_tree
;;
  
(** {6 Converting.} *)

val name :
  ('n -> string) -> 
      ('l -> string) ->
	('i -> string) ->  
	  ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed ->
	    string
;;

