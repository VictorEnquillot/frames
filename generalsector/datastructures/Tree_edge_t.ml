(** {3 A Tree Edge c Symbol Bridge in  Tree of a Molecule *)
(**
{[
 
 A 'a tree :

     a
    / \
   b   c---x
      / \
     d   e
        /|\
       f g h---x

 a bridge X between c and h is described as follows : 
 add a fake 'a x using constructor Bridge of type 'a.
 x = Bridge ('x', multiplicity)) is a bridge head (half a bridge)
 edges (c, x) and (h, x) are two 'a edge_bridged.
  
 A bridge is made from these two edge_bridged           
]}

an edge is a pair of connected vertices. 
  The left one is the father, the right one is the son.

a sonedge is a edge made with the root of a tree and its sonvertex.
 
a subtree is any tree inside a tree. *)

type 'a edge = 'a Pair_t.pair
;;
