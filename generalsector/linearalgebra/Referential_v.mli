
val make : 
    Point_t.point -> 
      Basis_t.basis ->
	Referential_t.referential
;;

val translation : Referential_t.referential -> Vector_t.vector -> 
  Referential_t.referential
;;
(** t = translation n r v;;
    [t] is the translated by [vector] [v] of [referential] [r]. *)

val rotation : Referential_t.referential -> Euler_angles_t.euler_angles -> 
  Referential_t.referential
;;

val name : Referential_t.referential -> string
;; 
