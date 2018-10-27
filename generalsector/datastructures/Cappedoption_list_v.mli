(** {3 The functionnalities for a Optioncapped_list.} *)

val make :
    'c option -> 
      'a list ->
	('c, 'a) Cappedoption_list_t.cappedoption_list
;;

val make_of_capped_list :
    ('c, 'a) Capped_list_t.capped_list ->
      ('c, 'a) Cappedoption_list_t.cappedoption_list
;;

val make_of_list :
    'a list ->
      ('c, 'a) Cappedoption_list_t.cappedoption_list
;;

(** {6 Extracting.} *)

val capoption_off_cappedoption_list :
    ('c, 'a) Cappedoption_list_t.cappedoption_list ->
      'c option
;;

val list_part_off_cappedoption_list :
    ('c, 'a) Cappedoption_list_t.cappedoption_list ->
      ('a) list
;;

val list_off_leftextended_by :
    ('c -> 'x) -> 
      ('a -> 'x) -> 
	('c, 'a) Cappedoption_list_t.cappedoption_list ->
	  'x list
;;

(** {6 Iterating.} *)

val map_capoption : 
    ('a -> 'x) -> 
      'a option ->
	'x option
;; 

val map_list : 
    ('a -> 'x) -> 
      ('c, 'a) Cappedoption_list_t.cappedoption_list ->
	('c, 'x) Cappedoption_list_t.cappedoption_list
;;

val map : 
    ('c -> 'z) -> ('a -> 'x) -> 
      ('c, 'a) Cappedoption_list_t.cappedoption_list ->
	('z, 'x) Cappedoption_list_t.cappedoption_list
;;

val iter : 
    ('c -> unit) -> ('a -> unit) -> 
      ('c, 'a) Cappedoption_list_t.cappedoption_list ->
	unit
;;

val map2 : 
    ('c -> 'z -> 'w) ->
      ('a -> 'x -> 'u) ->
          ('c, 'a) Cappedoption_list_t.cappedoption_list ->  
            ('z, 'x) Cappedoption_list_t.cappedoption_list ->  
	      ('w, 'u) Cappedoption_list_t.cappedoption_list 
;;

(** {6 Converting.} *)

val list_off_cappedoption_list :
    ('c -> 'x) -> ('a -> 'x) ->
      ('c, 'a) Cappedoption_list_t.cappedoption_list ->
	'x list
;;

val name :
    ('c -> string) -> ('a -> string) -> 
      ('c, 'a) Cappedoption_list_t.cappedoption_list ->
	string
;;

