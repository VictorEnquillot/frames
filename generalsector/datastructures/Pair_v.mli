(** {3 The functionalities for a Pair.} *)

(** {6 Making.} *)

val make : 'a -> 'a -> 
  'a Pair_t.pair
;;

val left_off_pair :  'a  Pair_t.pair ->
  'a 
;;

val right_off_pair : 'a  Pair_t.pair ->
  'a 
;;

(** {6 Converting.} *)

val list_of_pair : 'a  Pair_t.pair ->
  'a list
;;

val print : (Format.formatter -> 'a -> unit) ->
  Format.formatter -> 'a Pair_t.pair ->
    unit
;;

val name : ('a -> string) -> 'a Pair_t.pair ->
  string
;;

(** {6 Iterating.} *)

val map : 
('a -> 'b) ->
  'a Pair_t.pair ->
    'b Pair_t.pair
;;

val map2 : 
('a -> 'b -> 'c) ->
  'a Pair_t.pair ->
    'b Pair_t.pair -> 
      'c Pair_t.pair 
;;
