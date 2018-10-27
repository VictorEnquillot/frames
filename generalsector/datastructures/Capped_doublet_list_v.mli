(** {3 The functionnalities for a Capped_doublet_list.} *)

val make :
    'c -> 
      ('a, 'b) Doublet_list_t.doublet_list -> 
	('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list
;;

(** {6 Extracting.} *)

val cap_part_off_capped_doublet_list :
    ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
      'c 
;;

val doublet_listpart_off_capped_doublet_list :
    ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
      ('a, 'b) Doublet_list_t.doublet_list
;;

val left_list_off_capped_doublet_list :
    ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
      'a list
;;

val right_list_off_capped_doublet_list :
    ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
      'b list
;;

(** {6 Iterating.} *)

val map : 
    ('c -> 'z) -> 
      ('a -> 'x) -> 
	('b -> 'y) -> 
	  ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
	    ('z, 'x, 'y) Capped_doublet_list_t.capped_doublet_list
;;

val iter : 
    ('c -> unit) -> 
      ('a -> unit) -> 
	('b -> unit) -> 
	  ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
	    unit
;;

val map_cap_part : 
    ('c -> 'z) -> 
      ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
	('z, 'a, 'b) Capped_doublet_list_t.capped_doublet_list
;;

val map_doublet_listpart : 
    ('a -> 'x) -> 
      ('b -> 'y) -> 
	('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
	  ('c, 'x, 'y) Capped_doublet_list_t.capped_doublet_list
;;

(** {6 Converting.} *)

val doublet_list_off_capped_doublet_list :
    ('c -> 'z) -> 
      'y ->       (* cap index is needed *)
	('a -> 'z) -> 
	  ('b -> 'y) -> (* index may be trnasformed too *)
	    ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
	      ('z, 'y) Doublet_list_t.doublet_list 
;;
	      
val name :
    ('c -> string) -> 
      ('a -> string) -> 
	('b -> string) ->  
	  ('c, 'a, 'b) Capped_doublet_list_t.capped_doublet_list ->
	    string
;;

