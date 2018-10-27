(** {3 The functionnalities for a Optioncapped_list.} *)

val make :
    'c option -> 
      ('a ,'b) Booted_list_t.booted_list ->
	('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list
;;

val make_of_capoption_of_list_of_boot :
    'c option -> 
      'a list -> 
	'b ->
	  ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list
;;

val make_of_list_capped_booted :
    ('c, 'a, 'b) Capped_booted_list_t.list_capped_booted ->
      ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list
;;

(** {6 Extracting.} *)

val capoption_off_cappedoption_booted_list :
    ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list ->
      'c option
;;

val booted_list_off_cappedoption_booted_list :
    ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list ->
      ('a, 'b) Booted_list_t.booted_list
;;

val list_off_leftextended_by :
    ('c -> 'x) -> ('a -> 'x) -> ('b -> 'x) -> 
      ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list ->
	'x list
;;

(** {6 Iterating.} *)

val map : 
    ('c -> 'z) -> ('a -> 'x) -> ('b -> 'y) -> 
      ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list ->
	('z, 'x, 'y) Cappedoption_booted_list_t.cappedoption_booted_list
;;

val iter : 
    ('c -> unit) -> ('a -> unit) -> ('b -> unit) -> 
      ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list ->
	unit
;;

val map2 : 
    ('c -> 'z -> 'w) ->
      ('a -> 'x -> 'u) ->
	('b -> 'y -> 'v) ->
          ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list ->  
            ('z, 'x, 'y) Cappedoption_booted_list_t.cappedoption_booted_list ->  
	      ('w, 'u, 'v) Cappedoption_booted_list_t.cappedoption_booted_list 
;;

(** {6 Converting.} *)

val name :
    ('c -> string) -> ('a -> string) -> ('b -> string) ->  
      ('c, 'a, 'b) Cappedoption_booted_list_t.cappedoption_booted_list ->
	string
;;

