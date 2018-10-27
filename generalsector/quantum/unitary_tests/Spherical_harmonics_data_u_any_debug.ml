open Make_test_v;;

(** {3 Tests for Spherical_harmonics_data_v.} *)

testing "Spherical_harmonics_data_v";;

module Spherical_harmonics_data_t = Spherical_harmonics_data_t
module Spherical_harmonics_data_v = Spherical_harmonics_data_v

(* toplevel 
   #use "Spherical_harmonics_data_u_any_debug.ml";; 
 *)

let q_l_s = Index_p.zero;;
let q_2_d = Index_p.two;;

let qlm_2m1 = (q_2_d, -1);;

let idx_0 = Index_p.zero;;
let idx_1 = Index_p.one;;
let idx_2 = Index_p.two;;

let y_2m1 = Spherical_harmonics_data_v.make_of_int_of_int 2 (-1);;

let cart_1_0_2 = 
 Spherical_harmonics_data_v.make_cartesian idx_1 idx_0 idx_2
;;

let y_1_0 = Spherical_harmonics_data_v.make_of_int_of_int 1 0
;;

test_number 1 (
y_2m1
 = 
Spherical_harmonics_data_t.Spherical (idx_2, -1)
);;

test_number 2 (
Spherical_harmonics_data_v.make qlm_2m1
  = 
y_2m1
);;

test_number 3 (
cart_1_0_2 
=
  Spherical_harmonics_data_t.Cartesian (idx_1, idx_0, idx_2)
);;

test_number 4 (
y_1_0
 =
Spherical_harmonics_data_t.Spherical (idx_1, 0)
);;

test_number 5 (
Spherical_harmonics_data_v.quantum_numbers_lm_off_spherical_harmonics_data y_1_0
=
(idx_1, 0)
);;

test_number 6 (
Spherical_harmonics_data_v.spherical_harmonics_coefficients_of_quantum_numbers_lm (q_2_d, (-1))
= 
0.772548404046379145  (* *** TODO not correct *)
);;

test_number 7 (
Spherical_harmonics_data_v.name y_2m1
=
"Y2_-1"
);;

test_number 8 (
Spherical_harmonics_data_v.name cart_1_0_2 
=
"1_0_2"
);;
