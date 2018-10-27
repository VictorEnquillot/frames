(** {3 A Capped_booted_twig data structure.} *)

(** {6 Making.} *)

val make : 'c -> ('n, 's, 'b) Booted_twig_t.booted_twig -> 
  ('c, 'n, 's, 'b) Capped_booted_twig_t.capped_booted_twig 
;;

val make_of_doublet_list_capped_booted :
 ('c, ('n * 's), 'b) Capped_booted_list_t.list_capped_booted ->
   ('c, 'n, 's, 'b) Capped_booted_twig_t.capped_booted_twig
;;

(** {6 Extracting.} *)

val cap_off_capped_booted_twig :
 ('c, 'n, 's, 'b) Capped_booted_twig_t.capped_booted_twig ->
   'c
;;

val booted_twig_off_capped_booted_twig :
  ('c, 'n, 's, 'b) Capped_booted_twig_t.capped_booted_twig ->
    ('n, 's, 'b) Booted_twig_t.booted_twig
;;

(** {6 Iterating.} *)

val map :
    ('c -> 'v) ->
      ('n -> 'x) ->
	('s -> 'y) ->
	  ('b -> 'z) ->
	    ('c, 'n, 's, 'b) Capped_booted_twig_t.capped_booted_twig ->
	      ('v, 'x, 'y, 'z) Capped_booted_twig_t.capped_booted_twig
;;

val name : ('c -> string) -> ('b -> string) -> ('s -> string) -> ('r -> string) -> 
  ('c, 'b, 's, 'r) Capped_booted_twig_t.capped_booted_twig ->
    string
;;

