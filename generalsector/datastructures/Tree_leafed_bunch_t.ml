(** {3 A Brunch data structure for a Leafed Tree.} *)

(** by analogy with a tree_bunch of vine it doublet
    and ankle with a grape

         ------ 
          | | <---------------- ankle (tige) 'n
          | |     OOOOO
 Tree_bunch    | |____OOOOOOO
(grappe)  ------OOOOOOOOO <---- grape (raisin) : ('n, 'l) tree_leafed
                 OOOOOOO
                   OOOO

    It doublet a peptideca fragment with a sidechain in a polypeptide
*)


type ('n, 'l) tree_leafed_bunch = ('n, ('n, 'l) Tree_leafed_t.tree_leafed) Doublet_t.doublet 
;;

