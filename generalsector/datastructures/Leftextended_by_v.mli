(** {3 The functionnalities for a (left-) extended_by type.} *)

val make_of_doublet :
    ('x list, 'b) Doublet_t.doublet ->
      ('x, 'b) Leftextended_by_t.leftextended_by
;;

val make : 'x list -> 'b -> 
  ('x, 'b) Leftextended_by_t.leftextended_by
;;

val make_basic : 'b -> 
  ('x, 'b) Leftextended_by_t.leftextended_by
;;

val make_of_extension_of_int_of_basic : 'x -> int -> 'b -> 
    ('x, 'b) Leftextended_by_t.leftextended_by
;;

val repeated_list_part_off_leftextended_by : 
    ('x, 'b) Leftextended_by_t.leftextended_by ->
      'x Repeated_list_t.repeated_list
;;

val basic_part_off_leftextended_by : 
    ('x, 'b) Leftextended_by_t.leftextended_by ->
      'b
;;  
    
val extension_off_leftextended_by :
    ('x, 'b) Leftextended_by_t.leftextended_by ->
      'x
;;

val left_extend_repeated_list_by_one :
 ('x, 'b) Leftextended_by_t.leftextended_by -> 
   ('x, 'b) Leftextended_by_t.leftextended_by 
;;

val left_extend_basic_by_one : 'x ->
 ('x, 'b) Leftextended_by_t.leftextended_by -> 
   ('x, 'b) Leftextended_by_t.leftextended_by 
;;

val count : 
 ('x, 'b) Leftextended_by_t.leftextended_by -> 
   int
;;

val map :
    ('x -> 'y) -> 
      ('b -> 'c) -> 
	('x, 'b) Leftextended_by_t.leftextended_by -> 
	  ('y, 'c) Leftextended_by_t.leftextended_by
;;

val iter :
    ('x -> unit) -> 
      ('b -> unit) -> 
	('x, 'b) Leftextended_by_t.leftextended_by -> 
	  unit
;;

val is_basic :
    ('x, 'b) Leftextended_by_t.leftextended_by -> 
      bool
;;

(** {6 Converting.} *)

val flatten : 
    ('x, ('x, 'b) Leftextended_by_t.leftextended_by ) Leftextended_by_t.leftextended_by ->
      ('x, 'b) Leftextended_by_t.leftextended_by 
;;

val repeated_list_off_leftextended_by :
    ('x -> 'c) -> ('b -> 'c) ->
      ('x, 'b) Leftextended_by_t.leftextended_by ->
	'c Repeated_list_t.repeated_list
;;

val name :
    ('x -> string) -> 
      ('b -> string) -> 
	('x, 'b) Leftextended_by_t.leftextended_by -> 
	  string
;;

val print :
    (Format.formatter -> 'x -> unit) -> 
      (Format.formatter -> 'b -> unit) ->
	Format.formatter -> 
	  ('x, 'b) Leftextended_by_t.leftextended_by -> 
	    unit
;; 


