(** {3 A Tree of Entitycategorycodefile for a Datastructure.} *)
(**
{[

                Top (aggregate)
                | 
                Kind (doublet)
              / | \
           left ... Right Leaves

]}
*)

module Ecc_t = Entitycategorycodefile_t
module Tre_t = Tree_t

type datastructure_entitycategorycodefile_tree = Ecc_t.entitycategorycodefile Tre_t.tree;;

