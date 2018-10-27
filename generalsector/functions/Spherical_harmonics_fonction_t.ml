
type spherical_harmonics_fonction = 
  | Real of spherical_harmonics_real
  | Complex of spherical_harmonics_complex

and spherical_harmonics_complex =
    Fonction_t.fonction * Fonction_t.fonction 
(** Pl(theta) (exp i m phi) *)

and spherical_harmonics_real = 
    Fonction_t.fonction * Fonction_t.fonction * Fonction_t.fonction 
;;
(** X**i * Y**j * Z**k *)

(** {[
 {{ [Wframes:Function Spherical Harmonic Real]}}
  - S00 = Y00
  - Slm = (1/sqrt 2) (Ylm + Yl-m)
  - Sl-m = (1/(i (sqrt 2))) (Ylm - Yl-m)
  ]}
 *)

type ylm_cartesian_symbol =
  | S 
  | X   | Y   | Z 
  | XX  | YY  | ZZ  | XY  | XZ  | YZ 
  | XXX | YYY | ZZZ 
  | XYY | XXY | XXZ | XZZ | YZZ | YYZ 
  | XYZ 
;;

(*
type ylm_spherical_symbol =
    | (0, 0)
    | (1, 1)
    | (1, 0)
    | (1,-1)
    | (2, 2)
    | (2, 1)
    | (2, 0)
    | (2,-1)
    | (2,-2)
    | (3, 3)
    | (3, 2)
    | (3, 1)
    | (3, 0)
    | (3,-1)
    | (3,-2)
    | (3,-3)
    | (4, 4)
    | (4, 3)
    | (4, 2)
    | (4, 1)
    | (4, 0)
    | (4,-1)
    | (4,-2)
    | (4,-3)
    | (4,-4)
;;
*)

