open Gentest_v;;

(** {3 Tests for Spherical_harmonics_fonction_v.} *)

testing "Spherical_harmonics_fonction_v";;

(* toplevel 
   #use "tspherical_harmonics_fonction_v.ml";; 
 *)

module Fnc_t = Fonction_t
module Shd_t = Spherical_harmonics_data_t
module Shd_v = Spherical_harmonics_data_v
module Shf_v = Spherical_harmonics_fonction_v

let qnl_s = Index_p.make 0;;
let qnl_p = Index_p.make 1;;
let qlm_1m1 = (qnl_p, -1);;

let y1m1 = Shd_v.make_of_int_of_int 1 (-1);;
let y = Shd_v.make qlm_1m1;;

testi 0 (
y = y1m1
);;

let tht_y1m1 = Shf_v.theta_fonction_of_quantum_numbers_lm qlm_1m1;;
let phi_y1m1 = Shf_v.phi_fonction_of_quantum_number_m (-1);;

testi 1 (
tht_y1m1
  =
 Fnc_t.Sin
);;

testi 2 (
phi_y1m1
=
Fnc_t.Product (Fnc_t.Constant (-1.), Fnc_t.Monomial 1)
);;

(*
testi 0 (
Fnc_v.value_on_r (Fnc_t.Constant 3.) 5.
= 3.
&&
Fnc_v.value_on_r (Fnc_t.Monomial 2) 5.
= 25.
&&
Fnc_v.value_on_r (Fnc_t.Polynomial [|(0., 0); (5., 1); (-1., 2);|]) 5.
= 0.
);;

(** P(x) = 0 + 5x -x^2 
    P'(x) = 5 -2x *)
 
let scl_fct_a = [|
  (0., (Fnc_t.Monomial 0)); 
  (5., (Fnc_t.Monomial 1)); 
   (-1., (Fnc_t.Monomial 2));  
|];;

testi 1 (
Fnc_v.value_on_r (Fnc_t.Linear_combination scl_fct_a) 5.
= 0.
);;

let df =   
Fnc_v.derivative (Fnc_t.Polynomial [|(0., 0); (5., 1); (-1., 2);|]) ;;

testi 2 (
Fnc_v.value_on_r df 5.
=
-5.
);;
*)
