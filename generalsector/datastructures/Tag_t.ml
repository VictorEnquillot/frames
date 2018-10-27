(** {3 The Tag for any Entity.} *)

type 'a tag = ('a, Sole_index_t.sole_index) Doublet_t.doublet;;

(** It couples some Entity type 'a with a sole_index.
    It allows to defined an Entity univoqually 
    when located in a Tree Datastructure.
*)
