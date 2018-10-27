(** {3 The Marker for any Entity in any Index.} *)


type ('a, 'b) marker = ('a, 'b) Doublet_t.doublet
;;
(** It couples a [entity] to define the canonical nature of the Entity.
    with an [index] to refer univocally to each brother in the father's formula. 
*)
