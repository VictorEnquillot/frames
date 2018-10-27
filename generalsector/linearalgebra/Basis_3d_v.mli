(* $Id: basis_3d.mli,v 1.1 2007-06-25 08:02:14 colonna Exp $ *)

val axis_x : Vector_3d_t.vector_3d
;;

val axis_y : Vector_3d_t.vector_3d
;;

val axis_z : Vector_3d_t.vector_3d
;;

val canonical : Basis_3d_t.basis_3d
;;
(** let b = canonical;;
    [b] = [| [|1.0; 0.0; 0.0|]; [|0.0; 1.0; 0.0|]; [|0.0; 0.0; 1.0|] |] *)

val print : Format.formatter -> Basis_3d_t.basis_3d -> unit
;;

val read : Scanf.Scanning.scanbuf -> Basis_3d_t.basis_3d
;;
