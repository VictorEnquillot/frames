(** {3 A twig data structure.} *)

(** {6 Making.} *)

val make_of_doublet_list : ('n * 's) list ->
  ('n, 's) Twig_t.twig
;;

val make : 'n -> 's -> ('n, 's) Twig_t.twig -> 
  ('n, 's) Twig_t.twig 
;;

(** {6 Extracting.} *)

val topnode_off_twig : 
    ('n, 's) Twig_t.twig -> 
      'n
;;

val topside_off_twig : 
    ('n, 's) Twig_t.twig -> 
      's
;;

val topdoublet_off_twig : 
    ('n, 's) Twig_t.twig -> 
      ('n * 's)
;;

val subtwig_off_twig : 
    ('n, 's) Twig_t.twig -> 
      ('n, 's) Twig_t.twig
;; 

val replace_of_topnode_of_twig : 
    'n -> 
      ('n, 's) Twig_t.twig -> 
	('n, 's) Twig_t.twig
;;

val replace_of_topside_of_twig : 
    's -> 
      ('n, 's) Twig_t.twig -> 
	('n, 's) Twig_t.twig
;;

val replace_of_topdoublet_of_twig : 
    ('n * 's) -> 
      ('n, 's) Twig_t.twig -> 
	('n, 's) Twig_t.twig
;;

(** {6 Iterating.} *)

val map :
    ('n -> 'x) ->
      ('s -> 'y) ->
	('n, 's) Twig_t.twig ->
	  ('x, 'y) Twig_t.twig
;;

val print : 
    (Format.formatter -> 'n -> unit) -> 
      (Format.formatter -> 's -> unit) -> 
	  Format.formatter ->  ('n, 's) Twig_t.twig ->
	    unit
;;

val name : ('n -> string) -> ('s -> string) ->
  ('n, 's) Twig_t.twig ->
    string
;;

