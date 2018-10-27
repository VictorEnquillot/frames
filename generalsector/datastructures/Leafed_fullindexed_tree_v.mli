(** {3 A Leafed_fullindexed_tree data structure.} *)

(** {6 Making.} *)

val make_of_leaf : 'l -> 
    ('n, 'i, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree
;;

val make_of_node : 
    'n * 'i -> 
	( ('n, 'i, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree * 'i) list -> 
	  ('n, 'i, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree
;;

(** {6 Iterating.} *)

val map : 
    ('n -> 'a) -> ('i -> 'b) -> ('l -> 'c) ->
      ('n, 'i, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	('a, 'b, 'c) Leafed_fullindexed_tree_t.leafed_fullindexed_tree
;;


(*
val iter : 
    ('n -> unit) -> ('l -> unit) -> 
      ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	unit
;;

val map2 : 
    ('m -> 'n -> 'a ) -> ('k -> 'l -> 'b ) -> 
      ('m, 'k) Leafed_fullindexed_tree_t.leafed_fullindexed_tree -> 
	('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree -> 
	  ('a, 'b) Leafed_fullindexed_tree_t.leafed_fullindexed_tree 
;;

(** {6 Extracting.} *)

val root_off_leafed_fullindexed_tree :
    ('a, 'b) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
      'a
;;

val root_son_list_off_leafed_fullindexed_tree_node :
      ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	  ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree list
;;

val leafed_subtree_list_of_predicate_of_leafed_fullindexed_tree_node :
    ('n -> bool) ->
      ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	  ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree list
;;

(** {6 Modifying.} *)

val replace_node : 'n ->
  ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
    ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree
;;

val replace_leaf : 'l ->
  ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
    ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree
;;

val leafed_subtree_addtoleaf : ('l -> bool) -> ('l -> 'n) ->
    ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
      ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree -> 
	('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree 
;;

val leafed_subtree_addtonode : ('n -> bool) ->
    ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
      ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree -> 
	('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree 
;;

(** {6 Converting.} *)

val tree_off_leafed_fullindexed_tree : 
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	  'a Tree_t.tree
;;

val make_indexed_tree :
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	  'a Tree_t.tree
;;

val list_off_leafed_fullindexed_tree :
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	  'a list
;;

val list_off_leftextended_by :
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	  'a list
;;

val print : 
    (Format.formatter -> 'n -> unit) -> 
      (Format.formatter -> 'l -> unit) -> 
	Format.formatter ->  ('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	  unit
;;

val name :
    ('n -> string) -> 
      ('l -> string) -> 
	('n, 'l) Leafed_fullindexed_tree_t.leafed_fullindexed_tree ->
	  string
;;

*)
