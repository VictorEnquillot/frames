(** {3 The functionalities for a Duo.} *)

(** {6 Making.} *)

val make : 'a -> 'a -> 'a Duo_t.duo;;

val left_off_duo : 'a Duo_t.duo -> 'a;;

val first_off_duo : 'a Duo_t.duo -> 'a;;

val right_off_duo : 'a Duo_t.duo -> 'a;;

val second_off_duo : 'a Duo_t.duo -> 'a;;

val swap : 'a Duo_t.duo -> 'a Duo_t.duo;;

(** {6 Iterating} *)

val map : ('a -> 'b) -> 'a Duo_t.duo -> 'b Duo_t.duo;;

val map_left : ('a -> 'a) -> 'a Duo_t.duo -> 'a Duo_t.duo;;

val map_right : ('a -> 'a) -> 'a Duo_t.duo -> 'a Duo_t.duo;;

val iter :
    ('a -> unit) ->
      'a  Duo_t.duo ->  
	unit
;;

val map2 :
    ('a -> 'b -> 'c) ->
      'a Duo_t.duo ->  
	'b  Duo_t.duo ->  
	  'c  Duo_t.duo 
;;

val iter2 :
    ('a -> 'b -> unit) ->
      'a Duo_t.duo ->  
	'b  Duo_t.duo ->  
	  unit
;;

(** {6 Comparing} *)

val compare :
    ('a -> 'x -> int) ->
      'a Duo_t.duo ->
	'x Duo_t.duo ->
	  int 
;;

(** {6 Converting.} *)

val list_of_duo : 'a  Duo_t.duo -> 'a list;;

val duo_of_list : 'a list -> 'a  Duo_t.duo;;

val doublet_of_duo : ('x -> 'a) -> ('x -> 'b) -> 'x Duo_t.duo -> ('a, 'b) Doublet_t.doublet;; 

val duo_of_doublet : ('a -> 'x) -> ('b -> 'x) -> ('a, 'b) Doublet_t.doublet ->	'x Duo_t.duo;;

val print : (Format.formatter -> 'a -> unit) ->
  Format.formatter -> 'a Duo_t.duo ->
    unit
;;

val name : ('a -> string) -> 'a Duo_t.duo -> string;;

val name_with_separator : ('a -> string) -> string -> 'a Duo_t.duo -> string;;
