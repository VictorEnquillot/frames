(** {3 The functionalities for a Trio.} *)

(** {6 Making.} *)

val make : 'a -> 'a -> 'a -> 
  'a Trio_t.trio
;;

val make_of_left_duo : 'a Duo_t.duo -> 'a ->
'a Trio_t.trio 
;;

val make_of_right_duo : 'a -> 'a Duo_t.duo ->
'a Trio_t.trio 
;;

val make_of_triplet :
    ('a -> 'x) -> ('b -> 'x) -> ('c -> 'x) -> 
      ('a, 'b, 'c) Triplet_t.triplet ->
	'x Trio_t.trio
;;

(** {6 Extracting.} *)

val left_off_trio : 'a Trio_t.trio ->
  'a 
;;

val first_off_trio : 'a Trio_t.trio ->
  'a 
;;

val middle_off_trio : 'a Trio_t.trio ->
  'a
;;

val second_off_trio : 'a Trio_t.trio ->
  'a
;;

val right_off_trio : 'a Trio_t.trio ->
  'a
;;

val last_off_trio : 'a Trio_t.trio ->
  'a
;;

val third_off_trio : 'a Trio_t.trio ->
  'a
;;

val left_duo_off_trio : 'a Trio_t.trio ->
  'a Duo_t.duo
;;

val right_duo_off_trio : 'a Trio_t.trio ->
  'a Duo_t.duo
;;

val first_n_third_duo_off_trio : 'a Trio_t.trio ->
  'a Duo_t.duo
;;

val list_of_trio : 'a Trio_t.trio -> 'a list;;

val trio_of_list : 'a list -> 'a Trio_t.trio;;

val trio_of_triplet : ('x -> 'a) -> ('y -> 'a) -> ('z -> 'a) -> ('x, 'y, 'z) Triplet_t.triplet -> 'a Trio_t.trio;;

val triplet_of_trio : ('a -> 'x) -> ('a -> 'y) -> ('a -> 'z) -> 'a Trio_t.trio -> ('x, 'y, 'z) Triplet_t.triplet;; 

val triplet_as_trio_of_trio : 'a Trio_t.trio -> ('a, 'a, 'a) Triplet_t.triplet;; 

(** {6 Modifying.} *)

val compare : ('a -> 'x -> int) -> 'a Trio_t.trio -> 'x Trio_t.trio -> int;;

val map : 
    ('a -> 'x) ->
      'a Trio_t.trio ->
	'x Trio_t.trio 
;;

val map2 : 
    ('a -> 'b -> 'x) ->
      'a Trio_t.trio ->
	'b Trio_t.trio ->
	  'x Trio_t.trio 
;;

val iter: 
    ('a -> unit) -> 
      'a Trio_t.trio ->
	unit
;;

(** {6 Naming} *)

val name : 
    ('a -> string) -> 
      'a Trio_t.trio ->
	string
;;
