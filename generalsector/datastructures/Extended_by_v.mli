(** {3 The functionnalities for an extended_by_type.} *)

val make : 
    'a list -> 'b ->
      ('a, 'b) Extended_by_t.extended_by
;;

val make_of_doublet :
    ('a list, 'b) Doublet_t.doublet ->
      ('a, 'b) Extended_by_t.extended_by
;;

val make_basic : 
    'b ->
      ('a, 'b) Extended_by_t.extended_by
;;

val extend_by_one : 
    'a -> 
      ('a, 'b) Extended_by_t.extended_by ->
	('a, 'b) Extended_by_t.extended_by
;;

val count : ('a, 'b) Extended_by_t.extended_by ->
  int
;;

val basic_off_extended_by :
    ('a, 'b) Extended_by_t.extended_by ->
      'b
;;

val extension_off_extended_by :
    ('a, 'b) Extended_by_t.extended_by ->
      'a
;;

val map : 
    ('a -> 'x) ->
      ('b -> 'y) ->
	('a, 'b) Extended_by_t.extended_by ->
	  ('x, 'y) Extended_by_t.extended_by
;;

val iter : 
    ('a -> unit) ->
      ('b -> unit) ->
	('a, 'b) Extended_by_t.extended_by ->
	  unit
;;

val name : 
    ('a -> string) ->
      ('b -> string) ->
	('a, 'b) Extended_by_t.extended_by ->
	  string
;;

val print : 
    (Format.formatter -> 'a -> unit) ->
      (Format.formatter -> 'b -> unit) ->
	Format.formatter -> 
	  ('a, 'b) Extended_by_t.extended_by ->
	    unit
;;
