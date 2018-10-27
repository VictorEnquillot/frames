(** {3 The functionalities for a Quadruplet.} *)

(** {6 Making.} *)
  
val make : 
    'a -> 'b -> 'c -> 'd -> 
      ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet
;;

val make_of_doublet_of_doublet :
    ('a, 'b) Doublet_t.doublet ->
      ('c, 'd) Doublet_t.doublet ->
	('a , 'b , 'c , 'd) Quadruplet_t.quadruplet
;;

val make_of_left_of_triplet :
    'a ->
      ('b, 'c, 'd) Triplet_t.triplet ->
	('a , 'b , 'c , 'd) Quadruplet_t.quadruplet
;;

val make_of_triplet_of_right :
  ('a, 'b, 'c) Triplet_t.triplet ->
    'd ->
      ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet
;;

(** {6 Extracting.} *)

val left_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'a;;
val first_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'a;;
val middle_left_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'b;;
val second_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'b;;
val middle_right_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'c;;
val third_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'c;;
val right_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'd;;
val last_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'd;;
val fourth_off_quadruplet : ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 'd;;
val left_doublet_off_quadruplet : 
    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 
      ('a, 'b) Doublet_t.doublet
;;
val middle_doublet_off_quadruplet :
    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 
      ('b, 'c) Doublet_t.doublet
;;
val right_doublet_off_quadruplet :
    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 
      ('c, 'd) Doublet_t.doublet
;;
val left_triplet_off_quadruplet :
    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 
      ('a, 'b, 'c) Triplet_t.triplet
;;

val right_triplet_off_quadruplet :
    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 
      ('b, 'c, 'd) Triplet_t.triplet
;;

(** {6 Iterating.} *)

val map :
    ('a -> 'w) ->
      ('b -> 'x) ->
	('c -> 'y) ->
	  ('d -> 'z) ->
	    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 
	      ('w , 'x , 'y , 'z) Quadruplet_t.quadruplet
;;
 
val iter :
    ('a -> unit) ->
      ('b -> unit) ->
	('c -> unit) ->
	  ('d -> unit) ->
	    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet ->
	      unit 
;;
 
val compare :
           ('a -> 'b -> int) ->
           ('c -> 'd -> int) ->
           ('e -> 'f -> int) ->
           ('g -> 'h -> int) -> 'a * 'c * 'e * 'g -> 'b * 'd * 'f * 'h -> int
(****
    ('a -> 'w -> int) ->
      ('c -> 'x -> int) ->
        ('e -> 'y -> int) ->
          ('g -> 'z -> int) -> 
	    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet -> 
	      ('w , 'x , 'y , 'z) Quadruplet_t.quadruplet -> 
		int
**)
;;
 
(** {6 Naming.} *)

val name :
    ('a -> string) ->
      ('b -> string) ->
	('c -> string) ->
	  ('d -> string) ->
	    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet ->
	      string 
;;

val name_capitalized :
    ('a -> string) ->
      ('b -> string) ->
	('c -> string) ->
	  ('d -> string) ->
	    ('a , 'b , 'c , 'd) Quadruplet_t.quadruplet ->
	      string 
;;

