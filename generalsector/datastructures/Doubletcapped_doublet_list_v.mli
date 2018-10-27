(** {3 The functionnalities for a Capped_doublet_list.} *)

val make :
    ('c, 'i) Doublet_t.doublet -> 
      ('e, 'i) Doublet_list_t.doublet_list -> 
	('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list
;;

(** {6 Extracting.} *)

val doublet_cappart_off_doubletcapped_doublet_list :
    ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
      ('c, 'i) Doublet_t.doublet 
;;

val left_doublet_cappart_off_doubletcapped_doublet_list :
    ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
      'c 
;;

val right_doublet_cappart_off_doubletcapped_doublet_list :
    ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
      'i
;;

val doublet_listpart_off_doubletcapped_doublet_list :
    ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
      ('e, 'i) Doublet_list_t.doublet_list
;;

val left_list_off_doubletcapped_doublet_list :
    ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
      'e list
;;

val right_list_off_doubletcapped_doublet_list :
    ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
      'i list
;;

(** {6 Iterating.} *)

val map : 
    ('c -> 'z) -> 
      ('e -> 'x) -> 
	('i -> 'y) -> 
	  ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
	    ('z, 'x, 'y) Doubletcapped_doublet_list_t.doubletcapped_doublet_list
;;

val iter : 
    ('c -> unit) -> 
      ('e -> unit) -> 
	('i -> unit) -> 
	  ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
	    unit
;;

val map_doublet_cappart : 
    ('c -> 'z) -> 
      ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
	('z, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list
;;

val map_doublet_listpart : 
    ('e -> 'x) -> 
      ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
	('c, 'x, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list
;;

(** {6 Converting.} *)

val doublet_list_off_doubletcapped_doublet_list :
    ('c -> 'z) -> 
      ('e -> 'z) -> 
	('i -> 'y) -> (* index may be trnasformed too *)
	  ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
	    ('z, 'y) Doublet_list_t.doublet_list 
;;
	      
val name :
    ('c -> string) -> 
      ('e -> string) -> 
	('i -> string) ->  
	  ('c, 'e, 'i) Doubletcapped_doublet_list_t.doubletcapped_doublet_list ->
	    string
;;

