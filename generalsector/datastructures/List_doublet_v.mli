(** {3 The functionalities for a Doublet Doublet List} *) 

(** {6 Making.} *)

val make :
    'a list ->
      'b list ->
	('a, 'b) List_doublet_t.list_doublet
;;


(** {6 Extracting.} *)

(** {6 Iterating.} *)

val map :
  ('a -> 'x) ->
    ('b -> 'y) ->
      ('a, 'b) List_doublet_t.list_doublet ->
	('x, 'y) List_doublet_t.list_doublet
;;

val map_left :
  ('a -> 'x) ->
    ('a, 'b) List_doublet_t.list_doublet ->
      ('x, 'b) List_doublet_t.list_doublet 
;;

val map_right :
  ('b -> 'y) ->
    ('a, 'b) List_doublet_t.list_doublet ->
      ('a, 'y) List_doublet_t.list_doublet 
;;

val iter :
  ('a -> unit) ->
    ('b -> unit) ->
      ('a, 'b) List_doublet_t.list_doublet ->
	unit
;;

val list_of_list_doublet :
  ('a -> 't) ->
    ('b -> 't) ->
      ('a, 'b) List_doublet_t.list_doublet ->
	't list 
;;

(** {6 Naming} *)

val name_with_separator :
  ('a -> string) ->
    ('b -> string) ->
      string ->
	('a, 'b) List_doublet_t.list_doublet ->
	  string
;;
