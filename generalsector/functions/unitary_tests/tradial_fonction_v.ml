open Gentest_v;;

(** {3 Tests for radial_fonction_v.} *)

testing "Radial_fonction_v";;

(* toplevel 
   #"tradial_fonction_v.ml";; 
 *)

module Rdf_t = Radial_fonction_t
module Rdf_v = Radial_fonction_v
module Fon_v = Fonction_v

let gus = Rdf_t.Gaussian 0.5;;
let gus2 =  Rdf_t.Product (gus, gus);;

testi 0 (
Rdf_v.value_on_r gus 5.
= 3.72665317207867094e-06
);;

testi 1 (
Rdf_v.value_on_r (Rdf_t.Monomial 2) 5.
= 25.
);;

let rfp = (Rdf_t.Polynomial [|(0., 0); (5., 1); (-1., 2);|]) ;;

testi 2 (
Rdf_v.value_on_r rfp 5.
= 0.
);;

(** P(x) = 0 + 5x -x^2 
    P'(x) = 5 -2x *)
 
let drfp_dr = Rdf_v.derivative_on_r rfp;;

testi 3 (
Fon_v.value_on_r drfp_dr 5.
=
-5.
);;

testi 4 (
Rdf_v.float_off_radial_fonction gus
=
0.5
);;

testi 5 (
Rdf_v.float_off_radial_fonction gus2
=
0.25
);;
