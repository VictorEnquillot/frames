(** {3 The Marker functionalities for any Entity in any Index.} *) 

(** {6 Making.} *)

val make : 's -> 'i ->
  ('s, 'i) Marker_t.marker
;;

val ordinal_marker_list_of_entity_list :
   's list ->
     (('s, Ordinal_p.ordinal) Marker_t.marker) list
;;

val sequential_marker_list_of_entity_list :
   's list ->
     (('s, Sequential_index_t.sequential_index) Marker_t.marker) list
;;

val read : Scanf.Scanning.scanbuf -> 
   ('s, 'i) Marker_t.marker
;;

(** {6 Iterating.} *)

val entity_list_off_marker_list :
   ('s, 'i) Marker_t.marker list ->
     's list
;;

val index_list_off_marker_list :
  ('s, 'i) Marker_t.marker list ->
    'i list
;;

val map_entity :
    ('s -> 't) -> 
      ('s, 'i)  Marker_t.marker -> 
	('t, 'i)  Marker_t.marker 
;;

val map_index :
    ('i -> 'j) -> 
      ('s, 'i)  Marker_t.marker -> 
	('s, 'j)  Marker_t.marker 
;;

val map :
    ('s -> 't) -> ('i -> 'j) -> 
      ('s, 'i)  Marker_t.marker -> 
	('t, 'j)  Marker_t.marker 
;;

val iter_entity :
    ('s -> unit) -> 
      ('s, 'i)  Marker_t.marker -> 
	unit
;;

val iter_index :
    ('i -> unit) -> 
      ('s, 'i)  Marker_t.marker -> 
	unit
;;

val iter :
    ('s -> unit) -> ('i -> unit) -> 
      ('s, 'i)  Marker_t.marker -> 
	unit
;;

(** {6 Converting.} *)

val doublet_off_marker : ('s, 'i) Marker_t.marker ->
  's * 'i
;;
    
val print : (Format.formatter -> 's -> unit) -> 
  (Format.formatter -> 'i -> unit) -> 
    Format.formatter -> 
      ('s, 'i) Marker_t.marker ->
	unit
;;

val name : ('s -> string) -> ('i -> string) ->
      ('s, 'i) Marker_t.marker ->
	string
;;

(** {6 Extracting.} *)

val entity_off_marker : 
    ('s, 'i) Marker_t.marker ->
      's
;;

val index_off_marker : 
    ('s, 'i) Marker_t.marker ->
      'i
;;
