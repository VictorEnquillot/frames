(** {3 The functionnalities for a Capped_list.} *)

val make :
    'c -> 'b list -> 
      ('c, 'b) Capped_list_t.capped_list
;;

val make_of_list :
    'a list ->
      ('a, 'a) Capped_list_t.capped_list
;;

(** {6 Iterating.} *)

val map : 
    ('c -> 'x) -> ('b -> 'y) -> 
      ('c, 'b) Capped_list_t.capped_list ->
	('x, 'y) Capped_list_t.capped_list
;;

val iter : 
    ('c -> unit) -> ('b -> unit) -> 
      ('c, 'b) Capped_list_t.capped_list ->
	unit
;;

val map2 : 
    ('c -> 'x -> 'y) ->
      ('d -> 'u -> 'v) ->
        ('c, 'd) Capped_list_t.capped_list ->  
          ('x, 'u) Capped_list_t.capped_list ->  
	    ('y, 'v) Capped_list_t.capped_list 
;;

val merge :
    ('c, 'b ) Capped_list_t.capped_list ->
      ('c, 'b) Capped_list_t.capped_list ->
	('c, 'b) Capped_list_t.capped_list 
;;

val rightextend :
    ('c, 'b ) Capped_list_t.capped_list ->
      'b list ->
	('c, 'b) Capped_list_t.capped_list 
;;

(** {6 Extracting.} *)

val map_cap_part : 
    ('c -> 'z) -> 
      ('c, 'a) Capped_list_t.capped_list ->
	('z, 'a) Capped_list_t.capped_list
;;

val map_list_part : 
    ('a -> 'x) -> 
      ('c, 'a) Capped_list_t.capped_list ->
	('c, 'x) Capped_list_t.capped_list
;;

val cap_part_off_capped_list :
    ('c, 'b) Capped_list_t.capped_list ->
      'c 
;;

val list_part_off_capped_list :
    ('c, 'b) Capped_list_t.capped_list ->
      'b list
;;

(** {6 Converting.} *)

val list_off_capped_list :
    ('c -> 'a) -> ('b -> 'a) -> 
      ('c, 'b) Capped_list_t.capped_list ->
	'a list
;;

val name :
    ('c -> string) -> ('b -> string) ->  
      ('c, 'b) Capped_list_t.capped_list ->
	string
;;

