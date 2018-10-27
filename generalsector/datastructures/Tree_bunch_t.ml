(** {3 A Brunch data structure.} *)

(** by analogy with a tree_bunch of vine it doublet
    and ankle with a grape

         ------ 
          | | <---------------- ankle (tige) 'a
          | |     OOOOO
 Tree_bunch    | |____OOOOOOO
(grappe)  ------OOOOOOOOO <---- grape (raisin) : 'a tree
                 OOOOOOO
                   OOOO


    It doublet a peptideca fragment with a sidechain in a polypeptide
*)


type 'a tree_bunch = ('a, 'a Tree_t.tree) Doublet_t.doublet 
;;

