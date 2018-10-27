(** {3 The Tag functionalities for any Entity Symbol.} *) 

(** {6 Making.} *)

val make : 'a -> Sole_index_t.sole_index -> 'a Tag_t.tag;;

val tag_of_sole_index_of_int_of_entity : 
      Sole_index_t.sole_index ->
	int ->
	  'a ->
	    'a Tag_t.tag
;;

val make_son_list :
    'a list ->
      Sole_index_t.sole_index ->
	('a Tag_t.tag) list
;;

val make_n_store_son :
    (Sole_index_t.sole_index -> 'a -> 'b) ->
      ('c -> 'a) ->
        'c ->
	  int ->
            Sole_index_t.sole_index ->
	      'c Tag_t.tag 
;;

val make_n_store_son_list : 
    (Sole_index_t.sole_index -> 'a -> unit) ->
      ('b -> 'a) ->
        'b list ->
          Sole_index_t.sole_index ->
	    ('b Tag_t.tag) list
;;

(** {6 Naming.} *)

val name : ('a -> string) -> 'a Tag_t.tag -> string;;
val longname : ('a -> string) -> 'a Tag_t.tag -> string;;
val string_off : ('a -> string) -> 'a Tag_t.tag -> string;;
val fullname : ('a -> string) -> 'a Tag_t.tag -> string;;
val as_string : ('a -> string) -> 'a Tag_t.tag -> string;;
val name_as_entity : ('a -> string) -> 'a Tag_t.tag -> string;;

(** {6 Extracting.} *)

val entity_off_tag : 
    'a Tag_t.tag ->
      'a
;;

val sole_index_off_tag : 
    'a Tag_t.tag ->
     Sole_index_t.sole_index
;;

val head_index_off_tag :
    'a Tag_t.tag ->
     int
;;

val map : 
    ('a -> 'x) -> 
     ( Sole_index_t.sole_index -> Sole_index_t.sole_index ) ->
       'a Tag_t.tag ->
	 'x Tag_t.tag 
;;

val map_entity : 
    ('a -> 'x) -> 
      'a Tag_t.tag ->
	'x Tag_t.tag 
;;

val map_sole_index : 
    ( Sole_index_t.sole_index -> Sole_index_t.sole_index ) ->
      'a Tag_t.tag ->
	'a Tag_t.tag 
;;

(** {6 Upgrading.} *)

val upgrade : ('a -> 'b) -> 'a Tag_t.tag -> 'b Tag_t.tag;;

val compare : 'a Tag_t.tag -> 'b Tag_t.tag -> int;;

val compare_head_index : 'a Tag_t.tag -> 'b Tag_t.tag -> int;;

val sole_index_ancestor_of_tag_off_tag_ancestor_list : 'a Tag_t.tag -> ('a Tag_t.tag) list -> Sole_index_t.sole_index;;
(* let t_a = sole_index_ancestor_of_tag_off_tag_ancestor_list t t_a_l *)
(* t is any tag, t_a_l is a list of possible ancestor of t, t_a is the only ancestor *)
(* failwith No_ancestor *)

val tag_ancestor_of_tag_off_tag_ancestor_list : 'a Tag_t.tag -> ('a Tag_t.tag) list -> 'a Tag_t.tag;;
