(** {3 A Triplet List.} *)
(**
   [ (l, m, r); (l, m, r); ...; (l, m, r)]
 *)

    
type ('l, 'm, 'r) triplet_list = ('l, 'm, 'r) Triplet_t.triplet list
;;
(** It is a list of Triplet *)
