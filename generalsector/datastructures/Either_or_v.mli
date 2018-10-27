(** {3 The functionalities for a Either_or.} *)

(** {6 Making.} *)

val make_either : 'a -> 
  ('a, 'b) Either_or_t.either_or
;;

val make_or : 'b -> 
  ('a, 'b) Either_or_t.either_or
;;

val type_either_off_either_or : exn -> ('a, 'b) Either_or_t.either_or ->
  'a 
;;

val type_or_off_either_or : exn -> ('a, 'b) Either_or_t.either_or ->
  'b 
;;

(** {6 Modifying.} *)

val map : ('a -> 'x) -> ('b -> 'y) -> 
  ('a, 'b) Either_or_t.either_or ->
    ('x, 'y) Either_or_t.either_or 
;;

val iter: ('a -> unit) -> ('b -> unit) -> 
  ('a, 'b)  Either_or_t.either_or ->
    unit
;;

val singlet_off_either_or : ('a -> 'x) -> ('b -> 'x) -> 
  ('a, 'b) Either_or_t.either_or ->
    'x Singlet_t.singlet
;;

val onetype_off_either_or : ('a -> 'x) -> ('b -> 'x) -> 
  ('a, 'b) Either_or_t.either_or ->
    'x
;;


(** {6 Converting.} *)

val print : (Format.formatter -> 'a -> unit) ->
  (Format.formatter -> 'b -> unit) ->
    Format.formatter -> ('a, 'b) Either_or_t.either_or ->
      unit
;;

val name : 
    ('a -> string) -> ('b -> string) ->
      ('a, 'b) Either_or_t.either_or ->
	string
;;
