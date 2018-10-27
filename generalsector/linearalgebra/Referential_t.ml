
type referential = {
    origin : Point_t.point;
    basis : Basis_t.basis;
  }
;;
(** It is a system of [vector]s and an [origin] positionned somewhere in 3d space
    example: 
      an origin and an empty [basis] define a single point
      an origin and a point distinc from origin define a reference on a straight line
      an origin and two distincts points define a reference frame for a plane
      an origin and three distincts points define a reference frame for the 3-d space. *)
  
