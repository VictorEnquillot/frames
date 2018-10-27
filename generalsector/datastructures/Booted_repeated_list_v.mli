(** {3 The functionnalities for a Booted_repeated_list.} *)

(** {6 Making.} *)

val make_of_repeated_list_of_boot :
    'x Repeated_list_t.repeated_list -> 
      'b -> 
	('x, 'b) Booted_repeated_list_t.booted_repeated_list
;;

val make_of_repeated_list :
    'x Repeated_list_t.repeated_list -> 
      ('x, 'x) Booted_repeated_list_t.booted_repeated_list
;;
(** Split a repeated_list in a booted_repeated_list *)

val make_of_boot :
    'b ->
	('x, 'b) Booted_repeated_list_t.booted_repeated_list
;;
(** The repeated_list part is empty *)

val make_of_extension_of_boot :
    'x ->
	'b ->
	  ('x, 'b) Booted_repeated_list_t.booted_repeated_list
;;

val make_of_extension_of_count_of_boot :
    'x ->
      Index_p.index ->
	'b ->
	  ('x, 'b) Booted_repeated_list_t.booted_repeated_list
;;

(** {6 Extracting.} *)

val repeated_list_part_off_booted_repeated_list :
    ('a, 'b) Booted_repeated_list_t.booted_repeated_list ->
      'a Repeated_list_t.repeated_list
;;

val boot_part_off_booted_repeated_list :
    ('a, 'b) Booted_repeated_list_t.booted_repeated_list ->
      'b
;;
 
val extension_off_booted_repeated_list :
    ('x, 'b) Booted_repeated_list_t.booted_repeated_list ->
      'x
;;
(** Raises "Extension_undefined_list_empty:Brl_v.extension_off_booted_repeated_list" *)

val list_off_booted_repeated_list :
    ('x -> 'c) -> 
      ('b -> 'c) ->
	('x, 'b) Booted_repeated_list_t.booted_repeated_list ->
	  'c list
;;

val count :
    ('x, 'b) Booted_repeated_list_t.booted_repeated_list ->
      Index_p.index
;;

val is_embedded_extension_empty_or_equal_of_entension_of_booted_repeated_list :
    'x ->
      ('x, 'b) Booted_repeated_list_t.booted_repeated_list ->
	bool
;;

(** {6 Extending.} *)

val left_extends_by_one_of_extension_of_booted_repeated_list :
'x -> 
  ('x, 'b) Booted_repeated_list_t.booted_repeated_list ->
    ('x, 'b) Booted_repeated_list_t.booted_repeated_list 
;;

val prepend_of_repeated_list_of_booted_repeated_list :
    'x Repeated_list_t.repeated_list ->
      ('x, 'b) Booted_repeated_list_t.booted_repeated_list ->
	('x, 'b) Booted_repeated_list_t.booted_repeated_list 
;;
(** [let p = prepend_of_repeated_list_of_booted_repeated_list r b]

    Extends leftwards a repeated_list p to the repeated_list part of
    the booted_repeated_list b *)

(** {6 Iterating.} *)

val map_repeated_list_part : 
    ('a -> 'x) -> 
      ('a, 'b) Booted_repeated_list_t.booted_repeated_list ->
	('x, 'b) Booted_repeated_list_t.booted_repeated_list
;;

val map_boot_part : 
    ('b -> 'y) -> 
      ('a, 'b) Booted_repeated_list_t.booted_repeated_list ->
	('a, 'y) Booted_repeated_list_t.booted_repeated_list
;;

val map : 
    ('a -> 'x) -> 
      ('b -> 'y) ->
	('a, 'b) Booted_repeated_list_t.booted_repeated_list ->
	  ('x, 'y) Booted_repeated_list_t.booted_repeated_list
;;

val iter : 
    ('a -> unit) -> 
      ('b -> unit) -> 
	('a, 'b) Booted_repeated_list_t.booted_repeated_list ->
	  unit
;;

val map2 : 
    ('a -> 'x -> 'u) ->
      ('b -> 'y -> 'v) ->
        ('a, 'b) Booted_repeated_list_t.booted_repeated_list ->  
          ('x, 'y) Booted_repeated_list_t.booted_repeated_list ->  
	    ('u, 'v) Booted_repeated_list_t.booted_repeated_list 
;;

(** {6 Converting.} *)

val name :
    ('a -> string) -> 
      ('b -> string) ->  
	('a, 'b) Booted_repeated_list_t.booted_repeated_list ->
	  string
;;

val print :
    (Format.formatter -> 'a -> unit) ->  
      (Format.formatter -> 'b -> unit) -> 
	Format.formatter -> 
	  ('a, 'b) Booted_repeated_list_t.booted_repeated_list ->
	    unit
;;

