(** {3 A Rod data structure.} *)

val make : 'a -> 'b array -> 'c ->
  ('a, 'b, 'c) Rod_t.rod
;;
  
val head_off_rod : ('a, 'b, 'c) Rod_t.rod ->
  'a  
;;

val body_off_rod : ('a, 'b, 'c) Rod_t.rod ->
  'b array
;;

val tail_off_rod : ('a, 'b, 'c) Rod_t.rod ->
  'c  
;;

val body_count_of_rod : ('a, 'b, 'c) Rod_t.rod -> 
  int
;;
(*
val rod_off_array : 'a array ->
  ('a, 'a, 'a) Rod_t.rod
;;

val array_off_rod : ('a, 'a, 'a) Rod_t.rod -> 
  'a array
;;

val array_off_inhomogeneous_rod : ('a -> 't) -> ('b -> 't ) -> ('c -> 't ) ->
  ('a, 'b, 'c) Rod_t.rod -> 't array
;;
*)
val apply_on_rod_tail : ('c -> 'd) -> ('a, 'b, 'c) Rod_t.rod ->
  ('a, 'b, 'd) Rod_t.rod 
;;
(*
val print : (Format.formatter -> 'a -> unit) ->
  (Format.formatter -> 'b -> unit) ->
    (Format.formatter -> 'c -> unit) ->
      Format.formatter -> ('a, 'b, 'c) Rod_t.rod ->
	unit
;;
*)
