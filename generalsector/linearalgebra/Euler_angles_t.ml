(* $Id: Exp $ *)

(** {3 The 3 Euler angles.} *)

type euler_angles = {
    phi : phi;     (* around z  *)
    theta : theta; (* around x' *)
    psi : psi;     (* around z' *)
  }
and phi = float
and theta = float
and psi = float
;;
