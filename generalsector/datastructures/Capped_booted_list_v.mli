(** {3 The functionnalities for a Capped_list.} *)

val make :
    'c -> 'a list -> 'b ->
      ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted
;;

val make_of_cap_of_booted_list :
    'c ->
      ('a, 'b) Booted_list_t.booted_list ->
	('c, 'a, 'b) Capped_booted_list_t.list_capped_booted
;;	  

val merge_of_capped_list_of_booted_list :
    ('c, 'a) Capped_list_t.capped_list ->
      ('a, 'b) Booted_list_t.booted_list ->
	('c, 'a, 'b) Capped_booted_list_t.list_capped_booted
;;

(** {6 Extracting.} *)

val cap_part_off_list_capped_booted :
    ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
      'c
;;

val list_part_off_list_capped_booted :
    ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
      'a list
;;

val boot_part_off_list_capped_booted :
    ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
      'b
;;

val capped_list_part_off_list_capped_booted :
    ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
      ('c, 'a) Capped_list_t.capped_list
;;

val booted_list_part_off_list_capped_booted :
    ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
      ('a, 'b) Booted_list_t.booted_list
;;

(** {6 Iterating.} *)

val map_cap_part : 
    ('c -> 'z) -> 
      ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
	('z, 'a, 'b) Capped_booted_list_t.list_capped_booted
;;

val map_list_part : 
    ('a -> 'x) -> 
      ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
	('c, 'x, 'b) Capped_booted_list_t.list_capped_booted
;;

val map_boot_part : 
    ('b -> 'y) -> 
      ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
	('c, 'a, 'y) Capped_booted_list_t.list_capped_booted
;;

val map : 
    ('c -> 'z) -> ('a -> 'x) -> ('b -> 'y) -> 
      ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
	('z, 'x, 'y) Capped_booted_list_t.list_capped_booted
;;

val iter : 
    ('c -> unit) -> ('a -> unit) -> ('b -> unit) -> 
      ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
	unit
;;

val map2 : 
    ('c -> 'z -> 'w) ->
      ('a -> 'x -> 'u) ->
	('b -> 'y -> 'v) ->
          ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->  
            ('z, 'x, 'y) Capped_booted_list_t.list_capped_booted ->  
	      ('w, 'u, 'v) Capped_booted_list_t.list_capped_booted 
;;

(** {6 Converting.} *)

val list_off_list_capped_booted :
    ('c -> 'x) -> ('a -> 'x) -> ('b -> 'x) -> 
      ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
	'x list
;;

val name :
    ('c -> string) -> ('a -> string) -> ('b -> string) ->  
      ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
	string
;;

