(** {3 Tests for Spin_p.} *)

open Make_test_v;;

testing "Spin_p";;

(* toplevel 
   #use "Spin_u_any_debug.ml";; 
 *)

let spin_alpha = Spin_p.make_electronic_spin 1;; 
let spin_beta  = Spin_p.make_electronic_spin (-1);; 

let spin_h = Spin_p.make_atomic_spin 1 1;;
let spin_he = Spin_p.make_atomic_spin 0 1;;
let spin_li = Spin_p.make_atomic_spin 1 1;;

test_number 1 (
spin_h
= 
(1, spin_alpha)
);;

test_number 2 (
spin_he
= 
(0, spin_alpha)
);;

test_number 3 (
spin_li
= 
(1, spin_alpha)
);;

