(** {3 A Twig data-structure.} *)
(**
{[

       n--s
       |
      ...
       |
       n--s
       |
       n--s

]}

Definitions :

 n is a node
 s is a side

 the doublet ('n, 's) 

*)

type ('n, 's) twig =
  | Empty
  | Inner of ('n * 's * ('n, 's) twig)
;;
