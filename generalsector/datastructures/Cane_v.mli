(** {3 A Cane data structure.} *)

val make : 'a -> 'b array ->
  ('a, 'b) Cane_t.cane
;;
  
val head_off_cane : ('a, 'b) Cane_t.cane ->
  'a  
;;

val body_off_cane : ('a, 'b) Cane_t.cane ->
  'b array
;;

val body_count_of_cane : ('a, 'b) Cane_t.cane -> 
  int
;;
(*
val cane_off_array : 'a array ->
  ('a, 'a) Cane_t.cane
;;

val array_off_cane : ('a, 'a) Cane_t.cane -> 
  'a array
;;

val array_off_inhomogeneous_cane : ('a -> 't) -> ('b -> 't ) ->
('a, 'b) Cane_t.cane -> 
  't array
;;
*)
val apply_on_cane_tail : ('b -> 'b ) ->
  ('h, 'b) Cane_t.cane -> 
    ('h, 'b) Cane_t.cane 
;;
(*
val print : (Format.formatter -> 'a -> unit) ->
  (Format.formatter -> 'b -> unit) ->
    Format.formatter -> ('a, 'b) Cane_t.cane ->
      unit
;;
*)
