(* $Id: referential_3d.mli,v 1.1 2007-06-25 08:02:14 colonna Exp $ *)

type referential_3d = {
    origin : Point_3d_t.point_3d;
    basis : Basis_3d_t.basis_3d;
  }
;;
(** It is a system of [vector_3d]s and an [origin] positionned somewhere in 3d space
    example: 
      an origin and an empty [basis] define a single point
      an origin and a point distinc from origin define a reference on a straight line
      an origin and two distincts points define a reference frame for a plane
      an origin and three distincts points define a reference frame for the 3-d space. *)
  
