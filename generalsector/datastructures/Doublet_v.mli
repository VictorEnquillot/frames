(** {3 The functionalities for a Doublet.} *)

(** {6 Making.} *)

val make : 'a -> 'b -> 
  ('a, 'b) Doublet_t.doublet
;;

val left_off_doublet : ('a, 'b)  Doublet_t.doublet ->
  'a 
;;

val first_off_doublet : ('a, 'b)  Doublet_t.doublet ->
  'a 
;;

val right_off_doublet : ('a, 'b)  Doublet_t.doublet ->
  'b
;;

val second_off_doublet : ('a, 'b)  Doublet_t.doublet ->
  'b
;;

val swap : ('a, 'b) Doublet_t.doublet -> ('b, 'a) Doublet_t.doublet;; 

val doublet_of_list : ('a -> 'x) -> ('a -> 'y) -> 'a list -> ('x, 'y) Doublet_t.doublet;;

(** {6 Iterating.} *)

val list_off_leftextended_by : ('a -> 'x) -> ('b -> 'x) -> 
  ('a, 'b) Doublet_t.doublet ->
    'x list
;;

val map : ('a -> 'x) -> ('b -> 'y) -> ('a, 'b) Doublet_t.doublet -> ('x, 'y) Doublet_t.doublet;;

val map_left : 
    ('a -> 'x) -> 
      ('a, 'b) Doublet_t.doublet ->
	('x, 'b) Doublet_t.doublet 
;;

val map_right : 
    ('b -> 'y) -> 
      ('a, 'b) Doublet_t.doublet ->
	('a, 'y) Doublet_t.doublet 
;;

val map2 : 
    ('a -> 'i -> 'x) -> 
      ('b -> 'j -> 'y) -> 
	('a, 'b) Doublet_t.doublet ->
	  ('i, 'j) Doublet_t.doublet ->
	    ('x, 'y) Doublet_t.doublet 
;;

val iter: 
    ('a -> unit) -> 
      ('b -> unit) -> 
	('a, 'b)  Doublet_t.doublet ->
	  unit
;;

val iter2: 
    ('a -> 'i -> unit) -> 
      ('b -> 'j -> unit) -> 
	('a, 'b) Doublet_t.doublet ->
	  ('i, 'j) Doublet_t.doublet ->
	    unit
;;

val compare :
    ('a -> 'x -> int) ->
      ('b -> 'y -> int) ->
	('a, 'b) Doublet_t.doublet ->
	  ('x, 'y) Doublet_t.doublet ->
	    int 
;;
	      
val compare_left :
    ('a -> 'x -> int) ->
	('a, 'b) Doublet_t.doublet ->
	  ('x, 'y) Doublet_t.doublet ->
	    int 
;;

val compare_right :
    ('b -> 'y -> int) ->
	('a, 'b) Doublet_t.doublet ->
	  ('x, 'y) Doublet_t.doublet ->
	    int 
;;
	      
(** {6 Converting.} *)

val name : 
    ('a -> string) -> 
      ('b -> string) ->
	('a, 'b) Doublet_t.doublet ->
	  string
;;

val name_bare : 
    ('a -> string) -> 
      ('b -> string) ->
	('a, 'b) Doublet_t.doublet ->
	  string
;;

val name_bare_with_separator : 
    ('a -> string) -> 
      ('b -> string) ->
	string ->
	  ('a, 'b) Doublet_t.doublet ->
	    string
;;

val name_with_separator : 
    ('a -> string) -> 
      ('b -> string) ->
	string ->
	  ('a, 'b) Doublet_t.doublet ->
	    string
;;

val name_capitalized : 
    ('a -> string) -> 
      ('b -> string) ->
	('a, 'b) Doublet_t.doublet ->
	  string
;;

val as_string : 
    ('a -> string) -> 
      ('b -> string) ->
	('a, 'b) Doublet_t.doublet ->
	  string
;;

