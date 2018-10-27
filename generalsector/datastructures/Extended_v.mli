(** {3 The functionnalities for an extended_type.} *)

val make_basic : 'a ->
  'a Extended_t.extended
;;

val make_extended : 'a Extended_t.extended ->
  'a Extended_t.extended
;;

val extend : 'a Extended_t.extended ->
  'a Extended_t.extended
;;

val count : 'a Extended_t.extended ->
  int
;;

val basic_off_extended :
    'a Extended_t.extended ->
      'a
;;

val map : ('a -> 'x) ->
  'a Extended_t.extended ->
    'x Extended_t.extended
;;

val iter : ('a -> unit) ->
  'a Extended_t.extended ->
    unit
;;

val name : ('a -> string) ->
  'a Extended_t.extended ->
    string
;;

val print : (Format.formatter -> 'a -> unit) ->
  Format.formatter -> 
    'a Extended_t.extended ->
      unit
;;
