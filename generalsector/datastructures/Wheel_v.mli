(** {3 A Wheel data structure.} *)

val make : 'a -> 'a array -> 
  'a Wheel_t.wheel
;;
  
(*
val wheel_off_array : 'a array ->
  'a Wheel_t.wheel
;;
*)
val wheel_off_list : 'a list ->
  'a Wheel_t.wheel
;;

val axis_off_wheel : 'a Wheel_t.wheel ->
  'a  
;;

val radii_off_wheel : 'a Wheel_t.wheel ->
  'a array
;;

val array_off_wheel : 'a Wheel_t.wheel -> 
  'a array
;;

val list_off_wheel : 'a Wheel_t.wheel -> 
  'a list
;;

val radii_count_of_wheel : 'a Wheel_t.wheel -> 
  int
;;

val apply_on_wheel_axis : ('a -> 'a) -> 'a Wheel_t.wheel ->
  'a Wheel_t.wheel 
;;

(*
val print : (Format.formatter -> 'a -> unit) ->
 Format.formatter -> 'a Wheel_t.wheel ->
    unit
;;
*)
