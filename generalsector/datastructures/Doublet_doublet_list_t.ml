(** {3 A Doublet List of a Doublet and.} *)
(**
   [ ((a, b), c); ...; ((a, b), c)]
 *)
    
type ('a, 'b, 'c) doublet_list = (('a, 'b) Doublet_t.doublet, 'c) Doublet_t.doublet list
;;
