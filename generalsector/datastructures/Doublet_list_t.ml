(** {3 A Doublet List.} *)
(**
   [ (a, i); (a, i); ...; (a, i)]
 *)

    
type ('l, 'r) doublet_list = ('l, 'r) Doublet_t.doublet list
;;
(** It is a list of Doublet *)
