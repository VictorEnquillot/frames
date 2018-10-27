(** {3 The functionalities for a Sextuplet.} *)

(** {6 Making.} *)
  
val make :
    'a -> 'b -> 'c -> 'd -> 'e -> 'f ->
      ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet
;;

val make_of_triplet_of_triplet : 
    ('a, 'b, 'c) Triplet_t.triplet ->
      ('d, 'e, 'f) Triplet_t.triplet ->
	  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet
;;

val make_of_left_of_quintuplet : 
    'a ->
      ('b, 'c, 'd, 'e, 'f) Quintuplet_t.quintuplet ->
	('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet
;;

val make_of_quintuplet_of_right : 
    ('a, 'b, 'c, 'd, 'e) Quintuplet_t.quintuplet ->
      'f ->
	('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet
;;

val make_of_doublet_of_doublet_of_doublet :
    ('a, 'b) Doublet_t.doublet ->
      ('c, 'd) Doublet_t.doublet ->
	('e, 'f) Doublet_t.doublet ->
	  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet
;;

(** {6 Extracting.} *)

val left_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    'a
;;

val first_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    'a
;;

val right_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    'f
;;

val last_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    'f
;;

val left_doublet_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    ('a, 'b) Doublet_t.doublet
;;

val middle_doublet_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    ('c, 'd) Doublet_t.doublet
;;

val right_doublet_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    ('e, 'f) Doublet_t.doublet
;;

val left_triplet_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    ('a, 'b, 'c) Triplet_t.triplet
;;

val right_triplet_off_sextuplet :
    ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
      ('d, 'e, 'f) Triplet_t.triplet
;;

val doublet_triplet_off_sextuplet :
  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
    (('a, 'b) Doublet_t.doublet,
     ('c, 'd) Doublet_t.doublet,
     ('e, 'f) Doublet_t.doublet ) Triplet_t.triplet
;;

val triplet_doublet_off_sextuplet :
    ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
      (	('a, 'b, 'c) Triplet_t.triplet,
	('d, 'e, 'f) Triplet_t.triplet) Doublet_t.doublet
;;

val left_quintuplet_off_sextuplet :
    ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
      ('a, 'b, 'c, 'd, 'e) Quintuplet_t.quintuplet
;;

val right_quintuplet_off_sextuplet :
    ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
      ('b, 'c, 'd, 'e, 'f) Quintuplet_t.quintuplet
;;
 
(** {6 Modifying.} *)

val map :
    ('a -> 'u ) ->
      ('b -> 'v ) ->
	('c -> 'w ) ->
	  ('d -> 'x ) ->
	    ('e -> 'y ) ->
	      ('f -> 'z ) ->
		('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
		  ('u, 'v, 'w, 'x, 'y, 'z) Sextuplet_t.sextuplet 
;;
 
val iter :
     ('a -> unit) ->
       ('b -> unit) ->
	 ('c -> unit) ->
	   ('d -> unit) ->
	     ('e -> unit) ->
	       ('f -> unit) ->
		  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
		    unit
;;
 
val compare :
    ('a -> 'u -> int) ->
      ('b -> 'v -> int) ->
	('c -> 'w -> int) ->
	  ('d -> 'x -> int) ->
	    ('e -> 'y -> int) ->
	      ('f -> 'z -> int) ->
		('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
		  ('u, 'v, 'w, 'x, 'y, 'z) Sextuplet_t.sextuplet ->
		    int
;;
 
(** {6 Converting.} *)

 val name :
     ('a -> string) ->
       ('b -> string) ->
	 ('c -> string) ->
	   ('d -> string) ->
	     ('e -> string) ->
	       ('f -> string) ->
		  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
		    string
;;

val print :
    (Format.formatter -> 'a -> unit) ->
      (Format.formatter -> 'b -> unit) ->
	(Format.formatter -> 'c -> unit) ->
	  (Format.formatter -> 'd -> unit) ->
	    (Format.formatter -> 'e -> unit) ->
	      (Format.formatter -> 'f -> unit) ->
		Format.formatter -> 
		  ('a, 'b, 'c, 'd, 'e, 'f) Sextuplet_t.sextuplet ->
		    unit
;;


