(** {3 A Tree_leafed data structure.} *)

(** {6 Making.} *)

val empty : 
    ('n, 'l) Tree_leafed_t.tree_leafed
;;

val make_of_tree : 
    ('a -> 'n) -> 
      ('a -> 'l) -> 
	('a) Tree_t.tree ->
	  ('n, 'l) Tree_leafed_t.tree_leafed
;;

val make_of_leaf : 'l -> 
    ('n, 'l) Tree_leafed_t.tree_leafed
;;

val make_of_node : 'n -> (('n, 'l) Tree_leafed_t.tree_leafed) list -> 
    ('n, 'l) Tree_leafed_t.tree_leafed
;;

(** {6 Iterating.} *)

val map : 
    ('n -> 'a) -> ('l -> 'b) ->
      ('n, 'l) Tree_leafed_t.tree_leafed ->
	('a, 'b) Tree_leafed_t.tree_leafed
;;

val iter : 
    ('n -> unit) -> ('l -> unit) -> 
      ('n, 'l) Tree_leafed_t.tree_leafed ->
	unit
;;

val map2 : 
    ('m -> 'n -> 'a ) -> ('k -> 'l -> 'b ) -> 
      ('m, 'k) Tree_leafed_t.tree_leafed -> 
	('n, 'l) Tree_leafed_t.tree_leafed -> 
	  ('a, 'b) Tree_leafed_t.tree_leafed 
;;

(** {6 Extracting.} *)

val root_off_tree_leafed :
    ('a, 'b) Tree_leafed_t.tree_leafed ->
      'a
;;

val root_son_list_off_tree_leafed_node :
      ('n, 'l) Tree_leafed_t.tree_leafed ->
	  ('n, 'l) Tree_leafed_t.tree_leafed list
;;

val leafed_subtree_of_predicate_of_tree_leafed :
    ('n -> bool) ->
      ('n, 'l) Tree_leafed_t.tree_leafed ->
	('n, 'l) Tree_leafed_t.tree_leafed 
;;

val leafed_subtree_list_of_predicate_of_tree_leafed_node :
    ('n -> bool) ->
      ('n, 'l) Tree_leafed_t.tree_leafed ->
	  ('n, 'l) Tree_leafed_t.tree_leafed list
;;

(** {6 Modifying.} *)

val replace_node : 'n ->
  ('n, 'l) Tree_leafed_t.tree_leafed ->
    ('n, 'l) Tree_leafed_t.tree_leafed
;;

val replace_leaf : 'l ->
  ('n, 'l) Tree_leafed_t.tree_leafed ->
    ('n, 'l) Tree_leafed_t.tree_leafed
;;

val leafed_subtree_addtoleaf : ('l -> bool) -> ('l -> 'n) ->
    ('n, 'l) Tree_leafed_t.tree_leafed ->
      ('n, 'l) Tree_leafed_t.tree_leafed -> 
	('n, 'l) Tree_leafed_t.tree_leafed 
;;

val leafed_subtree_addtonode : ('n -> bool) ->
    ('n, 'l) Tree_leafed_t.tree_leafed ->
      ('n, 'l) Tree_leafed_t.tree_leafed -> 
	('n, 'l) Tree_leafed_t.tree_leafed 
;;

(** {6 Converting.} *)

val tree_off_tree_leafed : 
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l) Tree_leafed_t.tree_leafed ->
	  'a Tree_t.tree
;;

val make_tree :
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l) Tree_leafed_t.tree_leafed ->
	  'a Tree_t.tree
;;

val list_off_tree_leafed :
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l) Tree_leafed_t.tree_leafed ->
	  'a list
;;

val list_off_leftextended_by :
    ('n -> 'a) -> 
      ('l -> 'a) -> 
	('n, 'l) Tree_leafed_t.tree_leafed ->
	  'a list
;;

val name_with_separator :
    ('n -> string) -> 
      ('l -> string) -> 
	string ->
	  string -> 
	    ('n, 'l) Tree_leafed_t.tree_leafed ->
	      string
;;

val name :
    ('n -> string) -> 
      ('l -> string) ->
	('n, 'l) Tree_leafed_t.tree_leafed ->
	  string
;;

