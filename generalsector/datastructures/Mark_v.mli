(** {3 The Mark functionalities for any Entity Symbol.} *) 

(** {6 Making.} *)

val make : 'a -> Vsepr_index_t.vsepr_index -> 'a Mark_t.mark;;

(** {6 Converting.} *)

val name : 
    ('a -> string) ->
      'a Mark_t.mark ->
	string
;;

(** {6 Extracting.} *)

val entity_off_mark : 
    'a Mark_t.mark ->
      'a
;;

val vsepr_index_off_mark : 
    'a Mark_t.mark ->
     Vsepr_index_t.vsepr_index
;;

val entity_n_int_off_mark :
    'a Mark_t.mark ->
      ('a, int) Doublet_t.doublet
;;

val tag_of_sole_index_off_mark :
    Sole_index_t.sole_index ->
      'a Mark_t.mark ->
	'a Tag_t.tag
;;

val map : 
    ('a -> 'x) -> 
     ( Vsepr_index_t.vsepr_index -> Vsepr_index_t.vsepr_index ) ->
       'a Mark_t.mark ->
	 'x Mark_t.mark 
;;

val map_left : 
    ('a -> 'x) -> 
      'a Mark_t.mark ->
	'x Mark_t.mark 
;;

val map_right : 
    ( Vsepr_index_t.vsepr_index -> Vsepr_index_t.vsepr_index ) ->
      'a Mark_t.mark ->
	'a Mark_t.mark 
;;

