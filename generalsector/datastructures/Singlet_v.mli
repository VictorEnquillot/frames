(** {3 The functionalities for a Singlet.} *)

(** {6 Making.} *)

val make : 'a -> 'a Singlet_t.singlet ;;

val is_singlet : 'a Singlet_t.singlet -> bool ;;

val element_off_singlet : 'a  Singlet_t.singlet -> 'a ;;

val left_off_singlet : 'a  Singlet_t.singlet -> 'a ;;

val first_off_singlet : 'a  Singlet_t.singlet -> 'a ;;

val singlet_off_list : 'a list -> 'a Singlet_t.singlet;;

(** {6 Iterating.} *)

val map : 
    ('a -> 'b) ->
      'a  Singlet_t.singlet ->
	'b  Singlet_t.singlet 
;;

val map2 : 
    ('a -> 'b -> 'c) ->
      'a  Singlet_t.singlet ->
	'b  Singlet_t.singlet -> 
	  'c  Singlet_t.singlet  
;;

val iter : 
    ('a -> unit) ->
      'a Singlet_t.singlet ->
	unit
;;

val iter2 : 
    ('a -> 'b -> unit) ->
	'a Singlet_t.singlet ->
	  'b Singlet_t.singlet ->
	    unit
;;

val list_off_singlet : 'a Singlet_t.singlet -> 'a list;;

(** {6 Converting.} *)

val print : (Format.formatter -> 'a -> unit) ->
    Format.formatter -> 
      'a Singlet_t.singlet ->
	unit
;;

val name : 
    ('a -> string) -> 
      'a Singlet_t.singlet ->
	string
;;
