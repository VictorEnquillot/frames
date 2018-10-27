(* $Id: Exp $ *)

val make : Point_3d_t.point_3d -> Basis_3d_t.basis_3d -> 
  Referential_3d_t.referential_3d
;;

val translation : string -> Referential_3d_t.referential_3d -> 
  Vector_3d_t.vector_3d -> Referential_3d_t.referential_3d
;;

val rotation : Referential_3d_t.referential_3d -> 
  Euler_angles_t.euler_angles -> 
    Referential_3d_t.referential_3d
;;

val print : Format.formatter -> Referential_3d_t.referential_3d -> unit
;; 
