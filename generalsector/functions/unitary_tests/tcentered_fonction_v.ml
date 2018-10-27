open Gentest_v;;

(** {3 Tests for Centered_fonction_v.} *)

testing "Centered_fonction_v";;

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

let y1m1 = Shd_v.make qnl_p (-1);;
let y = Shd_v.make_of_quantum_numbers_lm qlm_1m1;;

testi 0 (
y =  y1m1
);;

let tht_y1m1 = Shf_v.theta_fonction_of_quantum_numbers_lm qlm_1m1;;
let phi_y1m1 = Shf_v.phi_fonction_of_quantum_number_m (-1);;

