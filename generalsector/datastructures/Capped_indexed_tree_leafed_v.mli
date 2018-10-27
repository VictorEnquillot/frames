(** {3 A Capped_indexed_tree_leafed data structure.} *)

(** {6 Making.} *)

val make : 
    'c -> 
      ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed list ->
	('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed
;;

(** {6 Extracting.} *)

val cap_off_capped_indexed_tree_leafed :
    ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
      'c
;;

val cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed :
    ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
      ('n, 'l, 'i) Indexed_tree_leafed_t.indexed_tree_leafed list
;;

val indexed_tree_leafed_off_capped_indexed_tree_leafed :
    ('c -> 'x) -> 
      ('n -> 'x) -> 
	('l -> 'y) -> 
	  'i ->
	    ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
	      ('x, 'y, 'i) Indexed_tree_leafed_t.indexed_tree_leafed
;;

val cap_son_indexed_tree_list_off_capped_indexed_tree_leafed :
    ('n -> 'x) -> ('l -> 'x) -> 
      ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
	('x, 'i) Indexed_tree_t.indexed_tree list
;;

val indexed_tree_off_capped_indexed_tree_leafed :
    ('c -> 'x) -> 
      ('n -> 'x) -> 
	('l -> 'x) -> 
	  'i ->
	    ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
	      ('x, 'i) Indexed_tree_t.indexed_tree 
;;

val cap_son_tree_list_off_capped_indexed_tree_leafed :
    ('n -> 'x) -> 
      ('l -> 'x) -> 
	('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
	  'x Tree_t.tree list 
;;

val tree_off_capped_indexed_tree_leafed :
    ('c -> 'x) -> ('n -> 'x) -> ('l -> 'x) -> 
      ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
	'x Tree_t.tree 
;;

(** {6 Iterating.} *)

val map : 
    ('c -> 'a) -> 
      ('n -> 'b) -> ('l -> 'c) -> ('i -> 'd) ->
	('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
	  ('a, 'b, 'c, 'd) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed
;;

val iter : 
    ('c -> unit) -> 
      ('n -> unit) -> ('l -> unit) -> ('i -> unit) -> 
      ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
	unit
;;

val map2 : 
    ('s -> 'c -> 'a ) -> 
      ('m -> 'n -> 'b ) -> 
	('k -> 'l -> 'c ) ->
	  ('j -> 'i -> 'd ) ->
	    ('s, 'm, 'k, 'j) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->  
	      ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed -> 
		('a, 'b, 'c, 'd) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed 
;;

(** {6 Converting.} *)

val name : 
    ('c -> string) -> 
      ('n -> string) -> 
	('l -> string) -> 
	  ('i -> string) -> 
	    ('c, 'n, 'l, 'i) Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed ->
	      string
;;

