(** {3 A Booted_twig data structure.} *)

(** {6 Making.} *)

val make : 
    'n -> 's ->
      ('n, 's, 'b) Booted_twig_t.booted_twig -> 
 	('n, 's, 'b) Booted_twig_t.booted_twig 
;;

val make_oroot : 
    'b -> 
      ('n, 's, 'b) Booted_twig_t.booted_twig 
;;

val make_of_boot_of_twig :
    'b ->
      ('n, 's) Twig_t.twig ->
	('n, 's, 'b) Booted_twig_t.booted_twig 
;;

val make_of_doublet_booted_list : 
(('n * 's), 'b) Booted_list_t.booted_list ->
  ('n, 's, 'b) Booted_twig_t.booted_twig
;;

(** {6 Extracting.} *)

val twig_off_booted_twig : 
    ('n, 's, 'b) Booted_twig_t.booted_twig -> 
      ('n, 's) Twig_t.twig 
;;

val boot_off_booted_twig : 
    ('n, 's, 'b) Booted_twig_t.booted_twig -> 
      'b
;;

(** {6 Iterating.} *)

val map :
    ('n -> 'x) ->
      ('s -> 'y) ->
	('b -> 'z) ->
	  ('n, 's, 'b) Booted_twig_t.booted_twig -> 
	    ('x, 'y, 'z) Booted_twig_t.booted_twig 
;;

val print : 
    (Format.formatter -> 'n -> unit) -> 
      (Format.formatter -> 's -> unit) -> 
	(Format.formatter -> 'b -> unit) -> 
	  Format.formatter ->  ('n, 's, 'b) Booted_twig_t.booted_twig ->
	    unit
;;

val name : ('n -> string) -> ('s -> string) -> ('b -> string) -> 
  ('n, 's, 'b) Booted_twig_t.booted_twig ->
    string
;;

