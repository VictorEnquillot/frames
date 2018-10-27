(** {3 A Tree_leafed_bunch data structure functionalities .} *)

(** {6 Making.} *)

val make : 'a -> ('a, 'b) Tree_leafed_t.tree_leafed ->
 ('a, 'b) Tree_leafed_bunch_t.tree_leafed_bunch
;;

(** {6 Extracting.} *)

val ankle_off_tree_leafed_bunch : 
    ('a, 'b) Tree_leafed_bunch_t.tree_leafed_bunch ->
      'a
;;

val grape_off_tree_leafed_bunch : 
    ('a, 'b) Tree_leafed_bunch_t.tree_leafed_bunch -> 
      ('a, 'b) Tree_leafed_t.tree_leafed
;;

val tree_leafed_of_tree_leafed_bunch_of_tree_leafed : 
    ('a, 'b) Tree_leafed_bunch_t.tree_leafed_bunch -> 
      ('a, 'b) Tree_leafed_t.tree_leafed -> 
	('a, 'b) Tree_leafed_t.tree_leafed
;;

val list_off_tree_leafed_bunch : ('a -> 'c) -> ('b -> 'c) -> 
    ('a, 'b) Tree_leafed_bunch_t.tree_leafed_bunch -> 
      'c list
;;

val map : ('a -> 'b) -> ('c -> 'd) ->
  ('a, 'c) Tree_leafed_bunch_t.tree_leafed_bunch ->
    ('b, 'd) Tree_leafed_bunch_t.tree_leafed_bunch
;; 

val iter : ('a -> unit) -> ('b -> unit) ->
  ('a, 'b) Tree_leafed_bunch_t.tree_leafed_bunch ->
    unit
;; 

val map2 : ('a -> 't -> 'x) -> ('b -> 'u -> 'y) ->
  ('a, 'b) Tree_leafed_bunch_t.tree_leafed_bunch -> 
    ('t, 'u) Tree_leafed_bunch_t.tree_leafed_bunch ->
      ('x, 'y) Tree_leafed_bunch_t.tree_leafed_bunch
;; 

val name : ('a -> string) -> ('b -> string) -> 
  ('a, 'b) Tree_leafed_bunch_t.tree_leafed_bunch ->
    string
;;

