(** {3 A Capped Booted_twig data structure.} *)
(**
{[
       c
       |
       n--s
      ...
       |
       n--s
       |
       b 
]}
*)


type ('c, 'n, 's, 'b) capped_booted_twig = ('c, ('n, 's, 'b) Booted_twig_t.booted_twig) Doublet_t.doublet
;;
(**  
an alternative could be

type ('n, 's, 'b) capped_booted_twig = 
  | Boot of 'b
  | Cap of 'c
  | Inner of ('n * 's * ('c, 'n, 's, 'b) capped_booted_twig)
;;

Valid only if Cap or Boot may exist alone.
*)

