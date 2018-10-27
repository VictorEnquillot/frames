(** {3 A Basis set in Rn} *)

val canonical : int -> Basis_t.basis
;;
(** let b = canonical n;;
    [b] is the canonical basis set of R[n] *)

val name : 
    Basis_t.basis -> 
      string
;;

