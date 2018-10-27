(** {3 The functionalities for a Sextuor.} *)

(** {6 Making.} *)
  
val make :
    'a -> 'a -> 'a -> 'a -> 'a -> 'a ->
      'a Sextuor_t.sextuor
;;

val make_of_trio_of_trio : 
    'a Trio_t.trio ->
      'a Trio_t.trio ->
	'a Sextuor_t.sextuor
;;

val make_of_duo_of_duo_of_duo :
    'a Duo_t.duo ->
      'a Duo_t.duo ->
	'a Duo_t.duo ->
	  'a Sextuor_t.sextuor
;;

(** {6 Extracting.} *)

val left_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a
;;

val first_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a
;;

val right_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a
;;

val last_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a
;;

val left_duo_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a Duo_t.duo
;;

val middle_duo_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a Duo_t.duo
;;

val right_duo_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a Duo_t.duo
;;

val left_trio_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a Trio_t.trio
;;

val right_trio_off_sextuor :
    'a Sextuor_t.sextuor ->
      'a Trio_t.trio
;;

val duo_trio_off_sextuor :
  'a Sextuor_t.sextuor ->
    'a Duo_t.duo Trio_t.trio
;;

val trio_duo_off_sextuor :
    'a Sextuor_t.sextuor ->
     ( 'a Trio_t.trio) Duo_t.duo
;;

(** {6 Modifying.} *)

val map :
    ('a -> 'u ) ->
      'a Sextuor_t.sextuor ->
	'u Sextuor_t.sextuor 
;;
 
val iter :
     ('a -> unit) ->
       'a Sextuor_t.sextuor ->
	 unit
;;
 
val compare :
    ('a -> 'x -> int) ->
      'a Sextuor_t.sextuor ->
	'x Sextuor_t.sextuor ->
	  int
;;
 
(** {6 Converting.} *)

 val name :
     ('a -> string) ->
       'a Sextuor_t.sextuor ->
	 string
;;

val print :
    (Format.formatter -> 'a -> unit) ->
      Format.formatter -> 
	'a Sextuor_t.sextuor ->
	  unit
;;


