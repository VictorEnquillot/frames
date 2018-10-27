(** {3 The Designator functionalities for any Entity in any State.} *) 

(** {6 Making.} *)

val make : 'a -> 'b ->
  ('a, 'b) Designator_t.designator
;;

val read : Scanf.Scanning.scanbuf -> 
   ('a, 'b) Designator_t.designator
;;

val map :
    ('s -> 'x) -> ('t -> 'y) -> 
      ('s, 't)  Designator_t.designator -> 
	('x, 'y)  Designator_t.designator 
;;

(** {6 Converting.} *)

val doublet_off_designator : ('a, 'b) Designator_t.designator ->
  'a * 'b
;;
    
val print : (Format.formatter -> 'a -> unit) -> 
  (Format.formatter -> 'b -> unit) -> 
    Format.formatter -> 
      ('a, 'b) Designator_t.designator ->
	unit
;;

val name : ('a -> string) -> ('b -> string) ->
      ('a, 'b) Designator_t.designator ->
	string
;;

(** {6 Extracting.} *)

val entity_off_designator : 
    ('a, 'b) Designator_t.designator ->
      'a
;;

val state_off_designator : 
    ('a, 'b) Designator_t.designator ->
      'b
;;
