(** {3 The Tree_footed_capped data structure functionalities.} *)

(** {6 Making.} *)

val make : 
    'a -> 
      'b Tree_t.tree -> 
	'c -> 
	  ('a, 'b, 'c) Tree_footed_capped_t.tree_footed_capped 
;;

(** {6 Extracting.} *)

val cap_off_tree_footed_capped : 
    ('a, 'b, 'c) Tree_footed_capped_t.tree_footed_capped ->
      'a	 
;;
 
val tree_off_tree_footed_capped :
    ('a, 'b, 'c) Tree_footed_capped_t.tree_footed_capped ->
      'b Tree_t.tree
;;
 
val foot_off_tree_footed_capped :
    ('a, 'b, 'c) Tree_footed_capped_t.tree_footed_capped ->
      'c
;;
 
(** {6 Iterating.} *)

val map : 
    ('a -> 't) -> 
      ('b -> 'u) ->
	('c -> 'v) ->
	  ('a, 'b, 'c) Tree_footed_capped_t.tree_footed_capped ->
	    ('t, 'u, 'v) Tree_footed_capped_t.tree_footed_capped
;;

val iter : 
    ('a -> unit) -> 
      ('b -> unit) ->
	('c -> unit) ->
	  ('a, 'b, 'c) Tree_footed_capped_t.tree_footed_capped ->
	    unit
;;

val map2 : 
    ('a -> 't -> 'x ) -> 
      ('b -> 'u -> 'y ) -> 
	('c -> 'v -> 'z ) -> 
	  ('a, 'b, 'c) Tree_footed_capped_t.tree_footed_capped -> 
	    ('t, 'u, 'v) Tree_footed_capped_t.tree_footed_capped -> 
	      ('x, 'y, 'z) Tree_footed_capped_t.tree_footed_capped 
;;

(** {6 Converting.} *)

val print : (Format.formatter -> 'a -> unit) ->
  (Format.formatter -> 'b -> unit) ->
    (Format.formatter -> 'c -> unit) ->
      Format.formatter -> ('a, 'b, 'c) Triplet_t.triplet ->
	unit
;;

val name : 
    ('a -> string) -> 
      ('b -> string) -> 
	('c -> string) ->
	  ('a, 'b, 'c) Triplet_t.triplet ->
	    string
;;
