(** {3 A Leafed_indexed_tree data structure.} *)

(** {6 Making.} *)

val make_of_leaf : 'l -> 
    ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree
;;

val make_of_node : 
    'n -> 
      ( ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree * 'i) list -> 
	('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree
;;

(** {6 Iterating.} *)

val map : 
    ('n -> 'a) -> ('i -> 'b) -> ('l -> 'c) ->
      ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
	('a, 'b, 'c) Leafed_indexed_tree_t.leafed_indexed_tree
;;


val iter : 
    ('n -> unit) -> ('i -> unit) -> ('l -> unit) -> 
      ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
	unit
;;

val map2 : 
    ('m -> 'n -> 'a ) -> ('i -> 'j -> 'b ) -> ('k -> 'l -> 'c ) -> 
      ('m, 'i, 'k) Leafed_indexed_tree_t.leafed_indexed_tree -> 
	('n, 'j, 'l) Leafed_indexed_tree_t.leafed_indexed_tree -> 
	  ('a, 'b, 'c) Leafed_indexed_tree_t.leafed_indexed_tree 
;;

(** {6 Extracting.} *)

val root_off_leafed_indexed_tree :
    ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
      'n
;;

val root_son_doublet_list_off_leafed_indexed_tree_node :
      ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
	  (('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree, 'i) Doublet_list_t.doublet_list
;;

val leafed_subindexedtree_list_of_predicate_of_leafed_indexed_tree_node :
    ('n -> bool) ->
      ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
	  (('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree, 'i)  Doublet_list_t.doublet_list
;;

(** {6 Modifying.} *)

val replace_node : 'n ->
  ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
    ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree
;;

val replace_leaf : 'l ->
  ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
    ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree
;;

(** {6 Converting.} *)

val indexed_tree_off_leafed_indexed_tree : 
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
	  ('a, 'i) Indexed_tree_t.indexed_tree
;;
  
val print : 
  (Format.formatter -> 'n -> unit) -> 
  (Format.formatter -> 'i -> unit) -> 
  (Format.formatter -> 'l -> unit) -> 
  Format.formatter ->  ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
  unit
;;

val name :
  ('n -> string) -> 
     ('i -> string) -> 
	('l -> string) -> 
	  ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree ->
	  string
;;

val empty : ('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree;;
