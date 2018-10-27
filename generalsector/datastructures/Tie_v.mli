(** {3 The functionalities for a Tie.} *)

(** {6 Making.} *)

val make : 'a -> 'a -> 
  'a Tie_t.tie
;;

val left_off_tie :  'a  Tie_t.tie ->
  'a 
;;

val right_off_tie : 'a  Tie_t.tie ->
  'a 
;;

(** {6 Converting.} *)

val print : (Format.formatter -> 'a -> unit) ->
  Format.formatter -> 'a Tie_t.tie ->
    unit
;;
