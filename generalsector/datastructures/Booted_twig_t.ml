(** {3 A Booted Twig data-structure.} *)
(**
{[

       n--s
       |
      ...
       n--s
       |
       b 
]}

Definitions :

 n is a node
 s is a side
 b is the boot

 the doublet ('b, 's) is an element

*)


type ('n, 's, 'b) booted_twig = 
  | Boot of 'b
  | Inner of ('n * 's * ('n, 's, 'b) booted_twig)
;;
(** Empty is replaced by Boot in Twig. 
NB: The doublet version is uncorrect because of the Empty constructor. *)
