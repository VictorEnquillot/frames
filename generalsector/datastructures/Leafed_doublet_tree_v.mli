(** {3 A Leafed_doublet_tree data structure.} *)

(** {6 Making.} *)

val empty : 
    ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree;;

val make_of_leaf : ('l, 'i) Doublet_t.doublet -> 
    ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree
;;

val make_of_node : 
    ('n, 'j) Doublet_t.doublet -> 
      ( ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree) list -> 
	('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree
;;

val make_of_leaf_of_index : 
    'l -> 'i ->
      ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree
;;

val make_of_node_of_leafed_doublet_tree_list_of_index : 
    'n -> 
      ( ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree) list -> 
	'j ->
	  ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree
;;

(** {6 Iterating.} *)

val map : 
    ('n -> 'a) -> ('j -> 'b) -> ('l -> 'c) -> ('i -> 'd) ->
      ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree ->
	('a, 'b, 'c, 'd) Leafed_doublet_tree_t.leafed_doublet_tree
;;


val iter : 
    ('n -> unit) -> 
      ('j -> unit) -> 
	('l -> unit) -> 
	  ('i -> unit) -> 
	    ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree ->
	      unit
;;

val map2 : 
    ('n -> 'v -> 'a ) -> 
      ('j -> 'x -> 'b ) -> 
	('l -> 'y -> 'c ) -> 
	  ('i -> 'z -> 'd ) -> 
	    ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree -> 
	      ('v, 'x, 'y, 'z) Leafed_doublet_tree_t.leafed_doublet_tree -> 
		('a, 'b, 'c, 'd) Leafed_doublet_tree_t.leafed_doublet_tree 
;;

(** {6 Extracting.} *)

val root_doublet_off_leafed_doublet_tree :
    ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree ->
      ('n, 'j) Doublet_t.doublet
;;

val root_son_doublet_list_off_leafed_doublet_tree_node :
    ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree ->
      (('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree) list
;;

(** {6 Converting.} *)

val doublet_tree_off_leafed_doublet_tree : 
    ('n -> 'a) -> 
      ('j -> 'k) -> 
	('l -> 'a) -> 
	  ('i -> 'k) -> 
	    ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree ->
	      ('a, 'k) Doublet_tree_t.doublet_tree
;;
  
val print : 
    (Format.formatter -> 'n -> unit) -> 
      (Format.formatter -> 'l -> unit) -> 
	(Format.formatter -> 'l -> unit) ->
	  (Format.formatter -> 'i -> unit) ->  
	    Format.formatter ->  ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree ->
	      unit
;;

val name :
  ('n -> string) -> 
    ('j -> string) -> 
      ('l -> string) ->
	('i -> string) ->  
	  ('n, 'j, 'l, 'i) Leafed_doublet_tree_t.leafed_doublet_tree ->
	    string
;;

