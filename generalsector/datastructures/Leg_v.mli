(** {3 A Leg data structure.} *)

val make : 'b array -> 'c ->
  ('b, 'c) Leg_t.leg
;;
  
val body_off_leg : ('b, 'c) Leg_t.leg ->
  'b array
;;

val tail_off_leg : ('b, 'c) Leg_t.leg ->
  'c  
;;

val body_count_of_leg : ('b, 'c) Leg_t.leg -> 
  int
;;

val leg_off_array : 'a array ->
  ('a, 'a) Leg_t.leg
;;

val array_off_leg : ('a, 'a) Leg_t.leg -> 
  'a array
;;

val array_off_inhomogeneous_leg : ('a -> 't) -> ('b -> 't ) ->
('a, 'b) Leg_t.leg -> 't array
;;

val apply_on_leg_tail : ('b -> 'c) -> ('a, 'b) Leg_t.leg ->
  ('a, 'c) Leg_t.leg 
;;

val print : (Format.formatter -> 'a -> unit) ->
  (Format.formatter -> 'b -> unit) ->
    Format.formatter -> ('a, 'b) Leg_t.leg ->
      unit
;;
