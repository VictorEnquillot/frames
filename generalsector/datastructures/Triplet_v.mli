(** {3 The functionalities for a Triplet.} *)

(** {6 Making.} *)

val make : 'a -> 'b -> 'c -> 
  ('a, 'b, 'c) Triplet_t.triplet
;;

val make_of_doublet_of_right : ('a, 'b) Doublet_t.doublet -> 'c ->
('a, 'b, 'c)  Triplet_t.triplet 
;;

val make_of_left_of_doublet : 'a -> ('b, 'c) Doublet_t.doublet ->
('a, 'b, 'c)  Triplet_t.triplet 
;;

(** {6 Extracting.} *)

val left_off_triplet : ('a, 'b, 'c)  Triplet_t.triplet ->
  'a 
;;

val first_off_triplet : ('a, 'b, 'c)  Triplet_t.triplet ->
  'a 
;;

val middle_off_triplet : ('a, 'b, 'c)  Triplet_t.triplet ->
  'b
;;

val second_off_triplet : ('a, 'b, 'c)  Triplet_t.triplet ->
  'b
;;

val right_off_triplet : ('a, 'b, 'c)  Triplet_t.triplet ->
  'c
;;

val last_off_triplet : 
    ('a, 'b, 'c)  Triplet_t.triplet ->
      'c
;;

val third_off_triplet : 
    ('a, 'b, 'c)  Triplet_t.triplet ->
      'c
;;

val left_doublet_off_triplet : ('a, 'b, 'c)  Triplet_t.triplet ->
  ('a, 'b) Doublet_t.doublet
;;

val right_doublet_off_triplet : 
    ('a, 'b, 'c)  Triplet_t.triplet ->
      ('b, 'c) Doublet_t.doublet
;;

val triplet_off_list : ('a ->'x) -> ('a -> 'y) -> ('a -> 'z) -> 'a list -> ('x, 'y, 'z) Triplet_t.triplet;;
 
(** {6 Reseting.} *)

val reset_of_left_off_triplet :
    'x -> 
      ('a, 'b, 'c) Triplet_t.triplet -> 
	('x, 'b, 'c) Triplet_t.triplet
;;

(** {6 Iterating.} *)

val map : 
    ('a -> 'x) -> ('b -> 'y) -> ('c -> 'z) ->
      ('a, 'b, 'c)  Triplet_t.triplet ->
	('x, 'y, 'z)  Triplet_t.triplet 
;;

val iter: 
    ('a -> unit) -> ('b -> unit) -> ('c -> unit) ->
      ('a, 'b, 'c)  Triplet_t.triplet ->
	unit
;;

val map2 : 
    ('a -> 't -> 'x) -> ('b -> 'u -> 'y) -> ('c -> 'v -> 'z) ->
      ('a, 'b, 'c)  Triplet_t.triplet ->
	('t, 'u, 'v)  Triplet_t.triplet ->
	  ('x, 'y, 'z)  Triplet_t.triplet 
;;

val iter2 : 
    ('a -> 't -> unit) -> ('b -> 'u -> unit) -> ('c -> 'v -> unit) ->
      ('a, 'b, 'c)  Triplet_t.triplet ->
	('t, 'u, 'v)  Triplet_t.triplet ->
	  unit
;;

(** {6 Comparing.} *)

val compare :
    ('a -> 'x -> int) ->
      ('b -> 'y -> int) ->
	('c -> 'z -> int) ->
	  ('a, 'b, 'c) Triplet_t.triplet ->
	    ('x, 'y, 'z) Triplet_t.triplet ->
	      int 
	      
(** {6 Naming} *)

val name_bare_with_separator : 
    ('a -> string) -> 
      ('b -> string) -> 
	('c -> string) ->
	  string ->
	    ('a, 'b, 'c) Triplet_t.triplet ->
	      string
;;

val name_with_separator : 
    ('a -> string) -> 
      ('b -> string) -> 
	('c -> string) ->
	  string ->
	    ('a, 'b, 'c) Triplet_t.triplet ->
	      string
;;

val name_bare : 
    ('a -> string) -> 
      ('b -> string) -> 
	('c -> string) ->
	  ('a, 'b, 'c) Triplet_t.triplet ->
	    string
;;

val name : 
    ('a -> string) -> 
      ('b -> string) -> 
	('c -> string) ->
	  ('a, 'b, 'c) Triplet_t.triplet ->
	    string
;;

val name_capitalized : 
    ('a -> string) -> 
      ('b -> string) -> 
	('c -> string) ->
	  ('a, 'b, 'c) Triplet_t.triplet ->
	    string
;;
