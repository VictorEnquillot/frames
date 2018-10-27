(** {3 The Tree_leafed_capped_indexed data structure functionalities.} *)

(** {6 Making.} *)

val make :
    'c -> 
      (('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree, 'i) Doublet_list_t.doublet_list ->
	('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed 
;;

(** {6 Extracting.} *)

val cap_off_tree_leafed_capped_indexed :
	('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed ->
	  'c

;;
 
val leafed_indexed_tree_doublet_list_off_tree_leafed_capped_indexed :
    ('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed ->
      (('n, 'i, 'l) Leafed_indexed_tree_t.leafed_indexed_tree, 'i) Doublet_list_t.doublet_list
;;

(** {6 Modifying.} *)


(** {6 Iterating.} *)

val map :
    ('c -> 'd) ->
      ('n -> 'o) ->
	('i -> 'j) ->
	  ('l -> 'm) ->
	    ('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed ->
	      ('d, 'o, 'j, 'm) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed 
;; 

val iter :
    ('c -> unit) ->
      ('n -> unit) ->
	('i -> unit) ->
	  ('l -> unit) ->
	    ('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed ->
	      unit
;; 

val leafed_indexed_tree_off_tree_leafed_capped_indexed :
    ('c -> 'x) ->
      ('n -> 'x) ->
	('l -> 'y) ->
	  ('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed ->
	    ('x, 'i, 'y) Leafed_indexed_tree_t.leafed_indexed_tree
;; 
(* 
 val indexed_tree_off_tree_leafed_capped_indexed :
     ('a -> 'b) ->
       ('b -> 'b) ->
         ('b -> 'b) ->
           ('a,
            (('b, 'c, 'b) Leafed_indexed_tree_t.leafed_indexed_tree, 'c)
              Doublet_list_t.doublet_list)
             Doublet_t.doublet -> ('b, 'c) Indexed_tree_t.indexed_tree
;;
*)
val indexed_tree_off_tree_leafed_capped_indexed :
    ('c -> 'x) ->
      ('n -> 'x) ->
	('l -> 'x) ->
	  ('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed ->
	    ('x, 'i) Indexed_tree_t.indexed_tree
;; 

(*
val map2 fc fn fi fl cpit_1 cpit_2 =
;;

*)

(** {6 Converting.} *)

val name :
    ('c -> string) ->
      ('n -> string) ->
	('i -> string) ->
	  ('l -> string) ->
	    ('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed ->
	      string
;;

val print :
    (Format.formatter -> 'c -> unit) ->
      (Format.formatter -> 'n -> unit) ->
	(Format.formatter -> 'i -> unit) ->
	  (Format.formatter -> 'l -> unit) ->
	    Format.formatter ->
	      ('c, 'n, 'i, 'l) Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed ->
		unit
;;
 
 
