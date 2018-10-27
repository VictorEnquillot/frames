(** {3 A Datastructure Entitycategorycodefile list.} *)

(**
{[

    [left;  ...; right; kind; top]      
                           (aggregate)
                        (doublet)
]}
*)

module Ecc_t = Entitycategorycodefile_t

type datastructure_entitycategorycodefile = Ecc_t.entitycategorycodefile list;;

