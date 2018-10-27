(** {3 A Tree_leafed data structure.} *)

(** {6 Making.} *)

val make : 
    'c -> 
      ('n, 'l) Tree_leafed_t.tree_leafed list ->
	('c, 'n, 'l) Tree_leafed_capped_t.tree_leafed_capped
;;

(** {6 Extracting.} *)

val cap_off_tree_leafed_capped :
    ('c, 'n, 'l) Tree_leafed_capped_t.tree_leafed_capped ->
      'c
;;
 
val tree_leafed_list_off_tree_leafed_capped :
    ('c, 'n, 'l) Tree_leafed_capped_t.tree_leafed_capped ->
      ('n, 'l) Tree_leafed_t.tree_leafed list 
;;

(** {6 Iterating.} *)

val map : 
    ('t -> 'a) -> ('n -> 'b) -> ('l -> 'c) ->
      ('t, 'n, 'l) Tree_leafed_capped_t.tree_leafed_capped ->
	('a, 'b, 'c) Tree_leafed_capped_t.tree_leafed_capped
;;

val iter : 
    ('t -> unit) -> ('n -> unit) -> ('l -> unit) -> 
      ('t, 'n, 'l) Tree_leafed_capped_t.tree_leafed_capped ->
	unit
;;

val map2 : 
    ('s -> 't -> 'a ) -> ('m -> 'n -> 'b ) -> ('k -> 'l -> 'c ) ->
      ('s, 'm, 'k) Tree_leafed_capped_t.tree_leafed_capped ->  
	('t, 'n, 'l) Tree_leafed_capped_t.tree_leafed_capped -> 
	  ('a, 'b, 'c) Tree_leafed_capped_t.tree_leafed_capped 
;;

(** {6 Converting.} *)

val tree_off_tree_leafed_capped :
    ('t -> 'a) -> ('n -> 'a) -> ('l -> 'a) ->
      ('t, 'n, 'l) Tree_leafed_capped_t.tree_leafed_capped ->
	'a Tree_t.tree
;;

val name : 
    ('t -> string) -> 
      ('n -> string) -> 
	('l -> string) -> 
	  ('t, 'n, 'l) Tree_leafed_capped_t.tree_leafed_capped ->
	    string
;;

