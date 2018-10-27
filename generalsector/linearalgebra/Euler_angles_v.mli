(* $Id: euler_angles.mli,v 1.1 2007-06-25 08:02:14 colonna Exp $ *)

(** see Goldstein p.147 
        http://en.wikipedia.org/wiki/Euler_angle. *)

val tensor_3_3_b : Euler_angles_t.phi -> Tensor_3_3_t.tensor_3_3
;;

val tensor_3_3_c : Euler_angles_t.theta -> Tensor_3_3_t.tensor_3_3
;;

val tensor_3_3_d : Euler_angles_t.psi -> Tensor_3_3_t.tensor_3_3
;;

val tensor_3_3_a : Euler_angles_t.euler_angles -> Tensor_3_3_t.tensor_3_3
;;
(** A =  B (C D). *)
