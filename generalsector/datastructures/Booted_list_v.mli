(** {3 The functionnalities for a Booted_list.} *)

val make :
    'a list -> 'b -> 
      ('a, 'b) Booted_list_t.booted_list
;;

val left_extend_by_list :     
    'a list ->       
      ('a, 'b) Booted_list_t.booted_list ->
	('a, 'b) Booted_list_t.booted_list
;;

val make_of_list :
    'a list ->
	('a, 'a) Booted_list_t.booted_list
;;

(** {6 Extracting.} *)

val list_part_off_booted_list : 
    ('a, 'b) Booted_list_t.booted_list ->
      'a list
;;

val boot_part_off_booted_list :
    ('a, 'b) Booted_list_t.booted_list ->
      'b
;;
 
val list_off_booted_list :
    ('a -> 'c) -> ('b -> 'c) ->
      ('a, 'b) Booted_list_t.booted_list ->
	'c list
;;

(** {6 Iterating.} *)

val map_list_part : 
    ('a -> 'x) -> 
      ('a, 'b) Booted_list_t.booted_list ->
	('x, 'b) Booted_list_t.booted_list
;;

val map_boot_part : 
    ('b -> 'y) -> 
      ('a, 'b) Booted_list_t.booted_list ->
	('a, 'y) Booted_list_t.booted_list
;;

val map : 
    ('a -> 'x) -> ('b -> 'y) ->
      ('a, 'b) Booted_list_t.booted_list ->
	('x, 'y) Booted_list_t.booted_list
;;

val iter : 
    ('a -> unit) -> ('b -> unit) -> 
      ('a, 'b) Booted_list_t.booted_list ->
	unit
;;

val map2 : 
    ('a -> 'x -> 'u) ->
      ('b -> 'y -> 'v) ->
        ('a, 'b) Booted_list_t.booted_list ->  
          ('x, 'y) Booted_list_t.booted_list ->  
	    ('u, 'v) Booted_list_t.booted_list 
;;

(** {6 Converting.} *)

val name :
    ('a -> string) -> ('b -> string) ->  
      ('a, 'b) Booted_list_t.booted_list ->
	string
;;

