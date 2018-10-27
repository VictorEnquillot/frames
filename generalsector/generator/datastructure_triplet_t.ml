(** {3 A Datastructure Triplet of Entitycategorysuffix.} *)
(**
{[

                Top (aggregate)
                | 
                Kind(doublet)
              / | \
            a   b ..  Sons 

]}
*)

module Ecs_t = Entitycategorysuffix_t
module Trp_t = Triplet_t

type datastructure_triplet = (Ecs_t.entitycategorysuffix, Ecs_t.entitycategorysuffix, Ecs_t.entitycategorysuffix list) Trp_t.triplet;;

