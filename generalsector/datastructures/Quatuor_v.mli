(** {3 The functionalities for a Quatuor.} *)

(** {6 Making.} *)

val make :
    'a -> 'a -> 'a -> 'a -> 
      'a Quatuor_t.quatuor
;;

val make_of_trio_of_element : 
    'a Trio_t.trio -> 'a ->
      'a Quatuor_t.quatuor 
;;

val make_of_element_of_trio : 
    'a -> 'a Trio_t.trio ->
      'a Quatuor_t.quatuor 
;;

val make_of_pair_of_pair :
    'a Pair_t.pair ->
      'a Pair_t.pair ->
	'a Quatuor_t.quatuor
;;

(** {6 Extracting.} *)

val left_off_quatuor : 'a Quatuor_t.quatuor -> 'a;;

val first_off_quatuor : 'a Quatuor_t.quatuor -> 'a;;

val middleleft_off_quatuor : 'a Quatuor_t.quatuor -> 'a;;

val second_off_quatuor : 'a Quatuor_t.quatuor -> 'a;;

val middleright_off_quatuor : 'a Quatuor_t.quatuor -> 'a;;

val third_off_quatuor : 'a Quatuor_t.quatuor -> 'a ;; 
val right_off_quatuor : 'a Quatuor_t.quatuor -> 'a ;;

val fourth_off_quatuor : 'a Quatuor_t.quatuor -> 'a ;;

val last_off_quatuor : 'a Quatuor_t.quatuor -> 'a ;;

val left_pair_off_quatuor : 'a Quatuor_t.quatuor -> 'a Pair_t.pair ;;

val right_pair_off_quatuor : 'a Quatuor_t.quatuor -> 'a Pair_t.pair ;;

val quadruplet_of_quatuor : ('a -> 'f) -> ('a -> 'g) -> ('a -> 'h) -> ('a -> 'i) -> 'a Quatuor_t.quatuor -> ('f, 'g, 'h, 'i) Quadruplet_t.quadruplet;;

val list_of_quatuor : 'a Quatuor_t.quatuor -> 'a list ;;

val quatuor_of_list : 'a list -> 'a Quatuor_t.quatuor;;
(** {6 Modifying.} *)

val compare :
    ('a -> 'x -> int) ->
      'a Quatuor_t.quatuor ->
	'x Quatuor_t.quatuor ->
	  int
;;

val map : 
    ('a -> 'x) ->
      'a Quatuor_t.quatuor ->
	'x Quatuor_t.quatuor 
;;

val map2 : 
    ('a -> 'b -> 'x) ->
      'a Quatuor_t.quatuor ->
	'b Quatuor_t.quatuor ->
	  'x Quatuor_t.quatuor 
;;

val iter: 
    ('a -> unit) -> 
      'a Quatuor_t.quatuor ->
	unit
;;

(** {6 Converting.} *)

val print : (Format.formatter -> 'a -> unit) ->
  Format.formatter -> 'a Quatuor_t.quatuor ->
    unit
;;

val name : 
    ('a -> string) -> 
      'a Quatuor_t.quatuor ->
	string
;;
